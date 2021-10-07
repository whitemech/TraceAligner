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

package code.parsing;

import code.automaton.*;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.*;


class ParseLydiaDFATest {

    /*
     *  Declare Automata
     */
    @Test
    void parseMONAprintInit() throws IOException {

        String init_str = LydiaAutomaton.callLydia("a", true);
        AutomatonTemplate init_actual = ParseLydiaDFA.parseMONAprint(init_str);

        List<String> al = Collections.singletonList("a");
        Set<String> ts = new HashSet<>(Arrays.asList("0,0,1", "0,1,2"));
        Set<Integer> ss = new HashSet<>(Arrays.asList(0, 1, 2));
        Set<Integer> acc = new HashSet<>(Collections.singletonList(2));

        AutomatonTemplate expected = new AutomatonTemplate(al, ts, ss, 0, acc);

        Assertions.assertEquals(expected, init_actual);
    }

    @Test
    void parseMONAprintExistence() throws IOException {

        String existence_str = LydiaAutomaton.callLydia("F(a)", true);
        AutomatonTemplate existence_actual = ParseLydiaDFA.parseMONAprint(existence_str);

        List<String> al = Collections.singletonList("a");
        Set<String> ts = new HashSet<>(Collections.singletonList("0,1,1"));
        Set<Integer> ss = new HashSet<>(Arrays.asList(0, 1));
        Set<Integer> acc = new HashSet<>(Collections.singletonList(1));

        AutomatonTemplate expected = new AutomatonTemplate(al, ts, ss, 0, acc);

        Assertions.assertEquals(expected, existence_actual);
    }

    @Test
    void parseMONAprintResponse() throws IOException {

        String response_str = LydiaAutomaton.callLydia("G(a -> F(b))", true);
        AutomatonTemplate response_actual = ParseLydiaDFA.parseMONAprint(response_str);

        List<String> al = Arrays.asList("a", "b");
        Set<String> ts = new HashSet<>(Arrays.asList("0,10,1", "1,01,0"));
        Set<Integer> ss = new HashSet<>(Arrays.asList(0, 1));
        Set<Integer> acc = new HashSet<>(Collections.singletonList(0));

        AutomatonTemplate expected = new AutomatonTemplate(al, ts, ss, 0, acc);

        Assertions.assertEquals(expected, response_actual);
    }

}