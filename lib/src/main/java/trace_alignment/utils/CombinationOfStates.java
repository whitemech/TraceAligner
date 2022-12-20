/*
 *  
 *  Copyright 2021-2023 WhiteMech
 *  
 *  ------------------------------
 *  
 *  This file is part of Trace-Alignment.
 *
 *  Use of this source code is governed by an MIT-style
 *  license that can be found in the LICENSE file or at
 *  https://opensource.org/licenses/MIT.
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
