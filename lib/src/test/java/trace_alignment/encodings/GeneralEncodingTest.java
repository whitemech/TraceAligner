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

package trace_alignment.encodings;

import trace_alignment.automaton.*;
import trace_alignment.parsing.ParseLog;
import trace_alignment.parsing.ParseLydiaDFA;
import trace_alignment.utils.Trace;
import org.deckfour.xes.extension.std.XConceptExtension;
import org.deckfour.xes.extension.std.XLifecycleExtension;
import org.deckfour.xes.model.XEvent;
import org.deckfour.xes.model.XLog;
import org.junit.jupiter.api.Test;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.*;

class GeneralEncodingTest {
    private HashMap<Trace, Set<Automaton<String>>> constraints;
    private List<Trace> traces;
    private final String LOG_PATH = getClass().getClassLoader().getResource("financial_log_for_experiments.xes").getPath();
    private final String AUT_PATH = getClass().getClassLoader().getResource("1.ltlf").getPath();
    private final int LIMIT = 10000;

    private GeneralEncodingTest() throws Exception {
        XLog log = ParseLog.openLog(LOG_PATH);
        this.constraints = new HashMap<>();
        this.traces = new ArrayList<>();

        List<AutomatonTemplate> templates = new ArrayList<>();
        Stream<String> lines = Files.lines(Paths.get(AUT_PATH));
        for (String line : (Iterable<String>) lines::iterator) {
            String automaton_print = "";
            automaton_print = LydiaAutomaton.callLydia(line, true);
            ParseLydiaDFA p_dfa = new ParseLydiaDFA();
            templates.add(p_dfa.parseMONAprint(automaton_print));
        }

        for (int i = 0; i < log.size() - LIMIT; i++) {
            Trace t = new Trace(XConceptExtension.instance().extractName(log.get(i)));
            List<String> al = new ArrayList<>();
            for (XEvent event : log.get(i)) {
                String activityName = XConceptExtension.instance().extractName(event).toLowerCase();
                activityName = activityName.replaceAll("( |\\/|\\(|\\)|\\<|\\>|\\.)", "").replaceAll("(\\,|\\+|\\-)", "_");
                String eventType = XLifecycleExtension.instance().extractTransition(event).toLowerCase();
                al.add(String.format("%s_%s", activityName, eventType));
            }
            t.setTrace_alphabet(al);
            this.traces.add(t);
            Set<Automaton<String>> tempConstraint = new HashSet<>();
            for (AutomatonTemplate at : templates) {
                tempConstraint.add(at.computeAutomatonWithDeadEnds(new HashSet<>(al)));
            }
            this.constraints.put(t, tempConstraint);
        }
    }
}