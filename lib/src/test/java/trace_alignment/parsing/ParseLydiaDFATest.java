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

package trace_alignment.parsing;

import trace_alignment.automaton.*;
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

    @Test
    void parseMONAprintChainPrecedence() throws IOException {

        String response_str = LydiaAutomaton.callLydia("G(X[!]a -> b) & (!a)", true);
        AutomatonTemplate response_actual = ParseLydiaDFA.parseMONAprint(response_str);

        List<String> al = Arrays.asList("a", "b");
        Set<String> ts = new HashSet<>(Arrays.asList("0,01,1", "0,10,2", "1,10,0", "1,00,0"));
        Set<Integer> ss = new HashSet<>(Arrays.asList(0, 1, 2));
        Set<Integer> acc = new HashSet<>(Arrays.asList(0, 1));

        AutomatonTemplate expected = new AutomatonTemplate(al, ts, ss, 0, acc);

        Assertions.assertEquals(expected, response_actual);
    }

    @Test
    void parseMONAprintNotCoExistence() throws IOException {

        String response_str = LydiaAutomaton.callLydia("!(F(a) & F(b))", true);
        AutomatonTemplate response_actual = ParseLydiaDFA.parseMONAprint(response_str);

        List<String> al = Arrays.asList("a", "b");
        Set<String> ts = new HashSet<>(Arrays.asList("0,01,1", "0,10,2", "1,10,3", "2,01,3"));
        Set<Integer> ss = new HashSet<>(Arrays.asList(0, 1, 2, 3));
        Set<Integer> acc = new HashSet<>(Arrays.asList(0, 1, 2));

        AutomatonTemplate expected = new AutomatonTemplate(al, ts, ss, 0, acc);

        Assertions.assertEquals(expected, response_actual);
    }

}