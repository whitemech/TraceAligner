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

import static org.junit.jupiter.api.Assertions.*;

import trace_alignment.automaton.State;
import trace_alignment.automaton.TraceAutomaton;
import trace_alignment.automaton.Transition;
import trace_alignment.parsing.ParseLog;
import org.deckfour.xes.extension.std.XConceptExtension;
import org.deckfour.xes.extension.std.XLifecycleExtension;
import org.deckfour.xes.model.XEvent;
import org.deckfour.xes.model.XLog;
import org.deckfour.xes.model.XTrace;
import org.junit.jupiter.api.Test;

import java.util.*;

public class TraceTest {

    @Test
    public void testGetName() {
        Trace t = new Trace("myTrace");
        assertEquals("myTrace", t.getName());
    }

//    @Test
//    public void testComputeTraceAutomaton() {
//        Set<String> al = new HashSet<>(Arrays.asList("a", "b", "c"));
//        State zero = new State("0", true, false);
//        State one = new State("1", false, false);
//        State two = new State("2", false, false);
//        State three = new State("3", false, true);
//        Set<State> ss = new HashSet<>(Arrays.asList(
//                zero,
//                one,
//                two,
//                three
//        ));
//        Set<Transition<String>> ts = new HashSet<>(Arrays.asList(
//                new Transition<>(zero, "a", one),
//                new Transition<>(one, "b", two),
//                new Transition<>(two, "c", three)
//        ));
//
//        TraceAutomaton<String> expected_ta = new TraceAutomaton<>(al, ss, ts);
//
//        Trace t = new Trace("myTrace");
//        t.setTrace_alphabet(Arrays.asList("a", "b", "c"));
//        TraceAutomaton<String> actual_ta = t.computeTraceAutomaton();
//        assertEquals(expected_ta, actual_ta);
//    }

    @Test
    public void testTraceAutomatonConstruction() throws Exception {
        String LOG_PATH = getClass().getClassLoader().getResource("financial_log_for_experiments.xes").getPath();
        XLog log = ParseLog.openLog(LOG_PATH);
        for (XTrace trace : log) {
            Trace t = new Trace(XConceptExtension.instance().extractName(trace));
            List<String> al = new ArrayList<>();
            for (XEvent event : trace) {
                String activityName = XConceptExtension.instance().extractName(event).toLowerCase();
                activityName = activityName.replaceAll("( |\\/|\\(|\\)|\\<|\\>|\\.)", "").replaceAll("(\\,|\\+|\\-)", "_");
                String eventType = XLifecycleExtension.instance().extractTransition(event).toLowerCase();
                al.add(String.format("%s_%s", activityName, eventType));
            }
            t.setTrace_alphabet(al);
            TraceAutomaton<String> trace_aut = t.computeTraceAutomaton();
            assertEquals(trace_aut.getStates().size(), al.size()+1);
            assertEquals(trace_aut.getTransitionFunction().size(), al.size());
            assertEquals(trace_aut.getAlphabet(), new HashSet<>(al));
        }
    }

}