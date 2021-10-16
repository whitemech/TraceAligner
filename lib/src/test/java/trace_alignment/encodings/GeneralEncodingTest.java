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

package trace_alignment.encodings;

import trace_alignment.automaton.*;
import trace_alignment.parsing.ParseLog;
import trace_alignment.parsing.ParseLydiaDFA;
import trace_alignment.utils.Trace;
import fr.uga.pddl4j.parser.Problem;
import fr.uga.pddl4j.parser.Symbol;
import fr.uga.pddl4j.parser.TypedSymbol;
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

    @Test
    void problemNameAndDomain() {
        int trace_nb = 1;
        for (Trace trace : this.traces) {
            TraceAutomaton<String> traceAutomaton = trace.computeTraceAutomaton();
            GeneralEncoding ge = new GeneralEncoding("gen0", traceAutomaton, this.constraints.get(trace), true);
            Problem actual = ge.generateProblem(trace_nb);
            assertEquals(actual.getName().toString(), String.format("p-trace-%d", trace_nb));
            assertEquals(actual.getDomain().toString(), "alignment");
            trace_nb++;
        }
    }

    @Test
    void problemObjects() {
        int trace_nb = 1;
        for (Trace trace : this.traces) {
            List<TypedSymbol> objs = new ArrayList<>();
            TraceAutomaton<String> traceAutomaton = trace.computeTraceAutomaton();
            GeneralEncoding ge = new GeneralEncoding("gen0", traceAutomaton, this.constraints.get(trace), true);
            Problem actual = ge.generateProblem(trace_nb);

            // Trace
            for (State s : traceAutomaton.getStates()) {
                TypedSymbol ts = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, "t" + s.getName()));
                ts.addType(new Symbol(Symbol.Kind.TYPE, "trace_state"));
                objs.add(ts);
            }

            // Constraint
            for (Automaton<String> a : this.constraints.get(trace)) {
                for (State s : a.getStates()) {
                    TypedSymbol as = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, String.format("s_%s_%s", a.getId(), s.getName())));
                    as.addType(new Symbol(Symbol.Kind.TYPE, "automaton_state"));
                    objs.add(as);
                }
            }

            // Activities
            for (String event : traceAutomaton.getAlphabet()) {
                TypedSymbol act = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, event));
                act.addType(new Symbol(Symbol.Kind.TYPE, "activity"));
                objs.add(act);
            }
            Set<String> seen = new HashSet<>();
            for (Automaton<String> a : this.constraints.get(trace)) {
                Set<String> diff = new HashSet<>(a.getAlphabet());
                diff.removeAll(traceAutomaton.getAlphabet());
                diff.removeAll(seen);
                for (String event : diff) {
                    TypedSymbol act = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, event));
                    act.addType(new Symbol(Symbol.Kind.TYPE, "activity"));
                    objs.add(act);
                    seen.add(event);
                }
            }

            assertEquals(objs, actual.getObjects());
            trace_nb++;
        }
    }
}