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

package code.utils;

import code.automaton.State;
import fr.uga.pddl4j.parser.Connective;
import fr.uga.pddl4j.parser.Exp;
import fr.uga.pddl4j.parser.Symbol;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

import static org.junit.jupiter.api.Assertions.*;

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