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
import org.junit.jupiter.api.Test;

import java.util.Arrays;
import java.util.HashSet;

class CombinationOfStatesTest {

    State zero = new State("0", true, true);
    State one = new State("1", false, true);
    State two = new State("2", false, true);
    State three = new State("3", true, true);
    State four = new State("4", false, true);
    HashSet<State> in = new HashSet<>(Arrays.asList(zero, one));
    HashSet<State> out = new HashSet<>(Arrays.asList(two, three, four));
//    CombinationOfStates c = new CombinationOfStates(in, out);

    @Test
    void generatePre() {
//        List<Exp> expected = new ArrayList<>();
//        HashSet<State> combined = new HashSet<>(in);
//        combined.addAll(out);
//        for (State s : combined) {
//            Exp pre_state = new Exp(Connective.ATOM);
//            pre_state.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state"),
//                    new Symbol(Symbol.Kind.CONSTANT, String.format("s_%s_%s", s.getAutomaton().getId(), s.getName()))));
//            expected.add(pre_state);
//        }
//        assertEquals(expected, c.generatePre());

    }

    @Test
    void generateEff() {

    }
}