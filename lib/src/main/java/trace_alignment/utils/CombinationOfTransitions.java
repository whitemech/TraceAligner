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
    private HashSet<Transition<String>> inTransitions;
    private HashSet<Transition<String>> outTransitions;

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

    public Op generateAdd(int nb, HashMap<String, Symbol> mapping) {
        Symbol add_name = new Symbol(Symbol.Kind.ACTION, String.format("add-%s-c%d", this.label, nb));

        /* Preconditions */
        Exp add_pre = new Exp(Connective.AND);
        Set<Transition<String>> combined = new HashSet<>(this.inTransitions);
        combined.addAll(this.outTransitions);
        for (Transition<String> t : combined) {
            Exp pre_cur_state = new Exp(Connective.ATOM);
            pre_cur_state.setAtom(Arrays.asList(mapping.get("cur_state"),
                    mapping.get(String.format("s_%s_%s",
                            t.getInputState().getAutomatonId(), t.getInputState().getName()))));
            if (this.inTransitions.contains(t)) {
                add_pre.addChild(pre_cur_state);
            }
            else {
                assert this.outTransitions.contains(t);
                Exp not_cur_states = new Exp(Connective.NOT);
                not_cur_states.addChild(pre_cur_state);
                add_pre.addChild(not_cur_states);
            }
        }

        /* Effects */
        Exp add_eff = new Exp(Connective.AND);

        Exp add_cost = new Exp(Connective.INCREASE);
        Exp cost_func = new Exp(Connective.FN_HEAD);
        cost_func.setAtom(Collections.singletonList(new Symbol(Symbol.Kind.FUNCTOR, "total-cost")));
        add_cost.addChild(cost_func);
        Exp cost_num = new Exp(Connective.NUMBER);
        cost_num.setValue(1.0);
        add_cost.addChild(cost_num);
        add_eff.addChild(add_cost);

        for (Transition<String> t : this.inTransitions) {
            Exp not_cur_states = new Exp(Connective.NOT);
            Exp eff_cur_state_not = new Exp(Connective.ATOM);
            eff_cur_state_not.setAtom(Arrays.asList(mapping.get("cur_state"),
                    mapping.get(String.format("s_%s_%s",
                            t.getOutputState().getAutomatonId(), t.getInputState().getName()))));
            not_cur_states.addChild(eff_cur_state_not);
            Exp eff_cur_state = new Exp(Connective.ATOM);
            eff_cur_state.setAtom(Arrays.asList(mapping.get("cur_state"),
                    mapping.get(String.format("s_%s_%s",
                            t.getOutputState().getAutomatonId(), t.getOutputState().getName()))));
            add_eff.addChild(not_cur_states);
            add_eff.addChild(eff_cur_state);
        }

        return new Op(add_name, Collections.emptyList(), add_pre, add_eff);
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
            else {
                assert this.outTransitions.contains(t);
                add.append(String.format("(not (cur_state s_%s_%s)) ",
                        t.getOutputState().getAutomatonId(), t.getOutputState().getName()));
            }
        }
        add.append(")\n)\n\n");
        return add;
    }

    public Op generateSync(Transition<String> tr, int nb, HashMap<String, Symbol> mapping) {
        Symbol add_name = new Symbol(Symbol.Kind.ACTION, String.format("sync-%s-c%d", this.label, nb));

        /* Preconditions */
        Exp add_pre = new Exp(Connective.AND);
        Set<Transition<String>> combined = new HashSet<>(this.inTransitions);
        combined.addAll(this.outTransitions);
        for (Transition<String> t : combined) {
            Exp pre_cur_state = new Exp(Connective.ATOM);
            pre_cur_state.setAtom(Arrays.asList(mapping.get("cur_state"),
                    mapping.get(String.format("s_%s_%s",
                            t.getInputState().getAutomatonId(), t.getInputState().getName()))));
            if (this.inTransitions.contains(t)) {
                add_pre.addChild(pre_cur_state);
            }
            else {
                assert this.outTransitions.contains(t);
                Exp not_cur_states = new Exp(Connective.NOT);
                not_cur_states.addChild(pre_cur_state);
                add_pre.addChild(not_cur_states);
            }
        }
        Exp pre_trace_state = new Exp(Connective.ATOM);
        pre_trace_state.setAtom(Arrays.asList(mapping.get("cur_state"),
                mapping.get("t" + tr.getInputState().getName())));
        add_pre.addChild(pre_trace_state);

        /* Effects */
        Exp add_eff = new Exp(Connective.AND);

        for (Transition<String> t : this.inTransitions) {
            Exp not_cur_states = new Exp(Connective.NOT);
            Exp eff_cur_state_not = new Exp(Connective.ATOM);
            eff_cur_state_not.setAtom(Arrays.asList(mapping.get("cur_state"),
                    mapping.get(String.format("s_%s_%s",
                            t.getOutputState().getAutomatonId(), t.getInputState().getName()))));
            not_cur_states.addChild(eff_cur_state_not);
            Exp eff_cur_state = new Exp(Connective.ATOM);
            eff_cur_state.setAtom(Arrays.asList(mapping.get("cur_state"),
                    mapping.get(String.format("s_%s_%s",
                            t.getOutputState().getAutomatonId(), t.getOutputState().getName()))));
            add_eff.addChild(not_cur_states);
            add_eff.addChild(eff_cur_state);
        }
        Exp eff_trace_state = new Exp(Connective.ATOM);
        eff_trace_state.setAtom(Arrays.asList(mapping.get("cur_state"),
                mapping.get("t" + tr.getOutputState().getName())));
        add_eff.addChild(eff_trace_state);
        Exp not_eff_trace_state = new Exp(Connective.NOT);
        not_eff_trace_state.addChild(pre_trace_state);
        add_eff.addChild(not_eff_trace_state);

        return new Op(add_name, Collections.emptyList(), add_pre, add_eff);
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
            else {
                assert this.outTransitions.contains(t);
                sync.append(String.format("(not (cur_state s_%s_%s)) ",
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

    public static <T> Predicate<T> distinctByKey(Function<? super T, ?> keyExtractor) {
        Set<Object> seen = ConcurrentHashMap.newKeySet();
        return t -> seen.add(keyExtractor.apply(t));
    }
}
