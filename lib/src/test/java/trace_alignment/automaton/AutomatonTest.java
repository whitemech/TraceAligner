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

package trace_alignment.automaton;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

public class AutomatonTest {

    @Test public void testInputContainsEvenNumberOf0(){

        Set<Integer> alphabet = new HashSet<>(Arrays.asList(0, 1));

        State evenNumber = new State("even", true, true);
        State oddNumber = new State("odd", false, false);
        Set<State> states = new HashSet<>(Arrays.asList(evenNumber, oddNumber));

        Transition<Integer> t1 =
                new Transition<>(evenNumber, 0, oddNumber);
        Transition<Integer> t2 =
                new Transition<>(oddNumber, 0, evenNumber);
        Transition<Integer> t3 =
                new Transition<>(evenNumber, 1, evenNumber);
        Transition<Integer> t4 =
                new Transition<>(oddNumber, 1, oddNumber);
        Set<Transition<Integer>> transitions = new HashSet<>(Arrays.asList(t1, t2, t3, t4));

        Automaton<Integer> dfa = new Automaton<>(alphabet, states, transitions, new HashSet<>());

        // compute
        LinkedList<Integer> binaryList =
                new LinkedList<>();
        binaryList.add(1);
        binaryList.add(0);
        binaryList.add(1);
        binaryList.add(1);
        binaryList.add(0);
        assertTrue(dfa.run(evenNumber, binaryList));
        binaryList.add(0);
        assertFalse(dfa.run(evenNumber, binaryList));
    }

}