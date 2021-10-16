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