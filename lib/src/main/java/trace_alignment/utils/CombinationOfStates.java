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

import trace_alignment.automaton.State;

import java.util.*;

public class CombinationOfStates {

    private final HashSet<State> inStates;
    private final HashSet<State> otherGoalStates;
    private final HashSet<String> automata;

    public CombinationOfStates (HashSet<State> in, HashSet<State> out, HashSet<String> involvedAutomata) {
        this.inStates = in;
        this.otherGoalStates = out;
        this.automata = involvedAutomata;
    }

    public List<String> generatePreString() {
        List<String> pre = new ArrayList<>();
        HashSet<State> combined = new HashSet<>(this.inStates);
        combined.addAll(this.otherGoalStates);
        for (State s : combined) {
            pre.add(String.format("(cur_state s_%s_%s) ", s.getAutomatonId(), s.getName()));
        }
        return pre;
    }

    public StringBuilder generateEffString() {
        StringBuilder eff = new StringBuilder("(and ");
        for (State s : this.inStates) {
            eff.append(String.format("(cur_state s_%s_goal) (not (cur_state s_%s_%s)) ", s.getAutomatonId(),
                    s.getAutomatonId(), s.getName()));
        }
        eff.append(")");
        return eff;
    }

    @Override
    public String toString() {
        return "CombinationOfStates{" +
                "inStates=" + inStates +
                ", otherGoalStates=" + otherGoalStates +
                ", automata=" + automata +
                '}';
    }
}
