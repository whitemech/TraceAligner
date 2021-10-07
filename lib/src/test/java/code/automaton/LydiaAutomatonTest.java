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

package code.automaton;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.io.IOException;


class LydiaAutomatonTest {

    @Test
    public void testCallLydiaLTLf2() throws IOException {
        String expected = "DFA for formula with free variables: a b \n" +
                "Initial state: 0\n" +
                "Accepting states: 0 \n" +
                "Rejecting states: 1 2 \n" +
                "\n" +
                "Automaton has 3 state(s) and 7 BDD-node(s)\n" +
                "Transitions:\n" +
                "State 0: 0X -> state 0\n" +
                "State 0: 1X -> state 1\n" +
                "State 1: 00 -> state 2\n" +
                "State 1: 01 -> state 0\n" +
                "State 1: 10 -> state 2\n" +
                "State 1: 11 -> state 1\n" +
                "State 2: XX -> state 2\n";
            String actual = LydiaAutomaton.callLydia("G(a -> X[!](b))", true);
        Assertions.assertEquals(expected, actual);
    }

    /*
    *  Declare Automata
    */
    @Test
    public void testCallLydiaInit() throws IOException {
        String expected = "DFA for formula with free variables: a \n" +
                "Initial state: 0\n" +
                "Accepting states: 2 \n" +
                "Rejecting states: 0 1 \n" +
                "\n" +
                "Automaton has 3 state(s) and 3 BDD-node(s)\n" +
                "Transitions:\n" +
                "State 0: 0 -> state 1\n" +
                "State 0: 1 -> state 2\n" +
                "State 1: X -> state 1\n" +
                "State 2: X -> state 2\n";
        String actual = LydiaAutomaton.callLydia("a", true);
        Assertions.assertEquals(expected, actual);
    }

    @Test
    public void testCallLydiaExistence() throws IOException {
        String expected = "DFA for formula with free variables: a \n" +
                "Initial state: 0\n" +
                "Accepting states: 1 \n" +
                "Rejecting states: 0 \n" +
                "\n" +
                "Automaton has 2 state(s) and 3 BDD-node(s)\n" +
                "Transitions:\n" +
                "State 0: 0 -> state 0\n" +
                "State 0: 1 -> state 1\n" +
                "State 1: X -> state 1\n";
        String actual = LydiaAutomaton.callLydia("F(a)", true);
        Assertions.assertEquals(expected, actual);
    }

    @Test
    public void testCallLydiaResponse() throws IOException {
        String expected = "DFA for formula with free variables: a b \n" +
                "Initial state: 0\n" +
                "Accepting states: 0 \n" +
                "Rejecting states: 1 \n" +
                "\n" +
                "Automaton has 2 state(s) and 4 BDD-node(s)\n" +
                "Transitions:\n" +
                "State 0: 0X -> state 0\n" +
                "State 0: 10 -> state 1\n" +
                "State 0: 11 -> state 0\n" +
                "State 1: X0 -> state 1\n" +
                "State 1: X1 -> state 0\n";
        String actual = LydiaAutomaton.callLydia("G(a -> F(b))", true);
        Assertions.assertEquals(expected, actual);
    }

    @Test
    public void testCallLydiaChainSuccession() throws IOException {
        String expected = "DFA for formula with free variables: a b \n" +
                "Initial state: 0\n" +
                "Accepting states: 0 1 \n" +
                "Rejecting states: 2 3 \n" +
                "\n" +
                "Automaton has 4 state(s) and 10 BDD-node(s)\n" +
                "Transitions:\n" +
                "State 0: 0X -> state 1\n" +
                "State 0: 1X -> state 2\n" +
                "State 1: 00 -> state 1\n" +
                "State 1: 01 -> state 3\n" +
                "State 1: 10 -> state 2\n" +
                "State 1: 11 -> state 3\n" +
                "State 2: 00 -> state 3\n" +
                "State 2: 01 -> state 1\n" +
                "State 2: 10 -> state 3\n" +
                "State 2: 11 -> state 2\n" +
                "State 3: XX -> state 3\n";
        String actual = LydiaAutomaton.callLydia("G(a <-> X[!](b))", true);
        Assertions.assertEquals(expected, actual);
    }
}