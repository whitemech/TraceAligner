/*
 *  This file is part of Planning-Trace-Alignment.
 *
 *  Planning-Trace-Alignment is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Planning-Trace-Alignment is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public License
 *  along with Planning-Trace-Alignment.  If not, see <https://www.gnu.org/licenses/>.
 *
 */



package trace_alignment.utils;

import trace_alignment.automaton.Transition;
import fr.uga.pddl4j.parser.Connective;
import fr.uga.pddl4j.parser.Exp;
import fr.uga.pddl4j.parser.Op;
import fr.uga.pddl4j.parser.Symbol;

import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;

public class CombinationOfTransitions {
    private final String label;
    private final int length;
    private final HashSet<Transition<String>> inTransitions;
    private final HashSet<Transition<String>> outTransitions;

    public CombinationOfTransitions(String label, int length, HashSet<Transition<String>> inTransitions, HashSet<Transition<String>> outTransitions) {
        this.label = label;
        this.length = length;
        this.inTransitions = inTransitions;
        this.outTransitions = outTransitions;
        _filterSameAutomatonFromOutTransitions();
    }

    private void _filterSameAutomatonFromOutTransitions() {
        HashSet<String> seen = new HashSet<>();
        this.inTransitions.forEach(t -> seen.add(t.getAutomatonId()));
        this.outTransitions.removeIf(t -> seen.contains(t.getAutomatonId()));
    }

    public String getLabel() {
        return label;
    }

    public HashSet<Transition<String>> getInTransitions() {
        return inTransitions;
    }

    public HashSet<Transition<String>> getOutTransitions() {
        return outTransitions;
    }

    public StringBuilder generateAddString(int nb) {
        StringBuilder add = new StringBuilder(String.format("(:action add-%s-c%d\n", this.label, nb));
        add.append(":precondition (and ");
        Set<Transition<String>> combined = new HashSet<>(this.inTransitions);
        combined.addAll(this.outTransitions);
        for (Transition<String> t : combined) {
            if (this.inTransitions.contains(t)) {
                add.append(String.format("(cur_state s_%s_%s) ",
                        t.getInputState().getAutomatonId(), t.getInputState().getName()));
            }
            else {
                assert this.outTransitions.contains(t);
                add.append(String.format("(not (cur_state s_%s_%s)) ",
                        t.getInputState().getAutomatonId(), t.getInputState().getName()));
            }
        }
        add.append(")\n");
        add.append(":effect (and ");
        add.append("(increase (total-cost) 1) ");
        for (Transition<String> t : combined) {
            if (this.inTransitions.contains(t)) {
                add.append(String.format("(not (cur_state s_%s_%s)) ",
                        t.getInputState().getAutomatonId(), t.getInputState().getName()));
                add.append(String.format("(cur_state s_%s_%s) ",
                        t.getOutputState().getAutomatonId(), t.getOutputState().getName()));
            }
        }
        add.append(")\n)\n\n");
        return add;
    }

    public StringBuilder generateSyncString(Transition<String> tr, int nb) {
        StringBuilder sync = new StringBuilder(String.format("(:action sync-%s-c%d\n", this.label, nb));
        sync.append(":precondition (and ");
        Set<Transition<String>> combined = new HashSet<>(this.inTransitions);
        combined.addAll(this.outTransitions);
        for (Transition<String> t : combined) {
            if (this.inTransitions.contains(t)) {
                sync.append(String.format("(cur_state s_%s_%s) ",
                        t.getInputState().getAutomatonId(), t.getInputState().getName()));
            }
            else {
                assert this.outTransitions.contains(t);
                sync.append(String.format("(not (cur_state s_%s_%s)) ",
                        t.getInputState().getAutomatonId(), t.getInputState().getName()));
            }
        }
        sync.append(String.format("(cur_state t%s))\n", tr.getInputState().getName()));
        sync.append(":effect (and ");
        for (Transition<String> t : combined) {
            if (this.inTransitions.contains(t)) {
                sync.append(String.format("(not (cur_state s_%s_%s)) ",
                        t.getInputState().getAutomatonId(), t.getInputState().getName()));
                sync.append(String.format("(cur_state s_%s_%s) ",
                        t.getOutputState().getAutomatonId(), t.getOutputState().getName()));
            }
        }
        sync.append(String.format("(not (cur_state t%s)) (cur_state t%s))\n", tr.getInputState().getName(), tr.getOutputState().getName()));

        sync.append(")\n\n");
        return sync;
    }

    @Override
    public String toString() {
        return "CombinationOfTransitions{" +
                "label='" + label + '\'' +
                ", length=" + length +
                ", inTransitions=" + inTransitions +
                ", outTransitions=" + outTransitions +
                "}\n";
    }
}
