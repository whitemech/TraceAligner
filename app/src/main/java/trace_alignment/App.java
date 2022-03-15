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

package trace_alignment;

import trace_alignment.automaton.*;
import trace_alignment.encodings.*;
import trace_alignment.parsing.ParseLog;
import trace_alignment.parsing.ParseLydiaDFA;
import trace_alignment.utils.CombinationOfStates;
import trace_alignment.utils.Combinations;
import trace_alignment.utils.Trace;
import org.apache.commons.io.FileUtils;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.deckfour.xes.extension.std.XConceptExtension;
import org.deckfour.xes.extension.std.XLifecycleExtension;
import org.deckfour.xes.model.XEvent;
import org.deckfour.xes.model.XLog;
import org.deckfour.xes.model.XTrace;
import picocli.CommandLine;
import picocli.CommandLine.*;

import java.io.*;
import java.nio.file.Files;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Command(name = "Planning-Trace-Alignment", mixinStandardHelpOptions = true, version = "Planning-Trace-Alignment v0.0.1",
        description = "Planning-Trace-Alignment aligns log trace using Automated Planning techniques.", sortOptions = false,
        showDefaultValues = true)
public class App implements Runnable {
    private static final Logger logger = LogManager.getLogger(App.class);

    private enum Encoding {
        GENERAL,
        GENERAL_CONJ,
        GENERAL_SHARE,
        GENERAL_CONJ_SHARE,
        STRIPS_CONJ;

        public static Encoding get(int x) {
            switch (x) {
                case 0:
                    return GENERAL;
                case 1:
                    return GENERAL_CONJ;
                case 2:
                    return GENERAL_SHARE;
                case 3:
                    return GENERAL_CONJ_SHARE;
                case 4:
                    return STRIPS_CONJ;
            }
            return null;
        }
    }

    @Parameters(index = "0", paramLabel = "LDLf", defaultValue = "false", showDefaultValue = Help.Visibility.ALWAYS,
            description = "If using LDLf formulas.")
    private boolean ldlf;

    @Option(names = {"-q", "--quiet"}, defaultValue = "false", description = "Quite mode.")
    private boolean quiet;

    @Option(order = 1, names = {"-l", "--log"}, required = true, paramLabel = "LOG_FILE",
            description = "Path to the log file.")
    private File log_file;

    @Option(order = 2, names = {"-f", "--formulas"}, required = true, paramLabel = "FORMULAS_FILE",
            description = "Path to the formulas file.")
    private File formulas_file;

    @Option(order = 3, names = {"-e", "--encoding"}, defaultValue = "0", arity = "1", paramLabel = "ENCODING",
            description = "The PDDL encoding type.%n0: General%n1: General with Conjunctive Goals%n2: General " +
                    "with Shared States%n3: General with Conjunctive Goals and Shared States%n4: Strips with " +
                    "Conjunctive Goals")
    private int e;

    @Option(order = 4, names = {"-t", "--traslator"}, defaultValue = "0", arity = "1", paramLabel = "TRANSLATOR",
            description = "The LTLf/LDLf to DFA translator.%n0: Lydia%n1: LTLf2DFA")
    private int t;

    @Option(order = 5, names = {"-o", "--output"}, defaultValue = "./output/", paramLabel = "OUT",
            description = "Path to the output folder.")
    private String output_location;

    public void run() {
        if (log_file.exists() && formulas_file.exists()) {
            try {
                File directory = new File(output_location);
                if (directory.exists()) {
                    FileUtils.deleteDirectory(directory);
                }
                directory.mkdirs();
                // parsing the whole log
                if (!quiet) {
                    logger.info(String.format("Parsing %s ...", log_file.toPath()));
                }
                final long t_log_start = System.currentTimeMillis();
                XLog log = ParseLog.openLog(log_file.toString());
                final long t_log_end = System.currentTimeMillis();
                if (!quiet) {
                    logger.info(String.format("Parsing done in: %d ms", t_log_end - t_log_start));
                }
                // parsing formulas and build automaton templates
                if (!quiet) {
                    logger.info(String.format("Compute constraint automata for formulas in %s ...", formulas_file.toPath()));
                }
                final long t_automata_start = System.currentTimeMillis();
                Set<AutomatonTemplate> templates = new HashSet<>();
                try (Stream<String> lines = Files.lines(formulas_file.toPath())) {
                    for (String line : (Iterable<String>) lines::iterator) {
                        String automaton_print;
                        if (ldlf) {
                            automaton_print = LydiaAutomaton.callLydia(line, false);
                        } else {
                            if (t == 1) {
                                automaton_print = LtlfToDfaAutomaton.callLtlfToDfa(line);
                            }
                            else {
                                automaton_print = LydiaAutomaton.callLydia(line, true);
                            }
                        }
                        templates.add(ParseLydiaDFA.parseMONAprint(automaton_print));
                    }
                }
                HashSet<String> activitiesRepo = new HashSet<>();
                templates.forEach(t -> activitiesRepo.addAll(t.getAlphabet()));

                final long t_automata_end = System.currentTimeMillis();
                final long t_total_automata = t_automata_end - t_automata_start;
                if (!quiet) {
                    logger.info(String.format("DFAs built in: %d ms", t_total_automata));
                }

                boolean computedCombStates = false;
                List<CombinationOfStates> combStates = new ArrayList<>();

                // for each log trace, compute domain and problem with specified encoding
                if (!quiet) {
                    logger.info("Computing PDDL domain and problems for each log trace ...");
                }
                final long t_compilation_start = System.currentTimeMillis();
                if (e < 0 || e > 4) {
                    throw new TypeConversionException("Invalid input: must be in '{0, 1, 2, 3, 4}' but was '" + e + "'");
                } else {
                    int trace_nb = 0;
                    for (XTrace trace : log) {
                        Trace t = new Trace(XConceptExtension.instance().extractName(trace));
                        List<String> al_aut = new ArrayList<>();
                        for (XEvent event : trace) {
                            String activityName = XConceptExtension.instance().extractName(event).toLowerCase();
                            activityName = activityName.replaceAll("( |\\/|\\(|\\)|\\<|\\>|\\.)", "").replaceAll("(\\,|\\+|\\-)", "_");
                            String eventType = XLifecycleExtension.instance().extractTransition(event).toLowerCase();
                            al_aut.add(String.format("%s_%s", activityName, eventType));
                        }
                        activitiesRepo.addAll(al_aut);
                        t.setTrace_alphabet(al_aut);
                        TraceAutomaton<String> trace_aut = t.computeTraceAutomaton();
                        Set<Automaton<String>> tempConstraint = new HashSet<>();

                        if (Encoding.get(e).equals(Encoding.STRIPS_CONJ)) {
                            for (AutomatonTemplate at : templates) {
                                tempConstraint.add(at.computeAutomatonNoDeadEnds(new HashSet<>(activitiesRepo)));
                            }
                        }
                        else {
                            for (AutomatonTemplate at : templates) {
                                tempConstraint.add(at.computeAutomatonWithDeadEnds(new HashSet<>(activitiesRepo)));
                            }
                        }

                        if (! computedCombStates) {
                            if (Encoding.get(e).equals(Encoding.STRIPS_CONJ)) {
                                // Compute combination of states
                                final long t_combStates_start = System.currentTimeMillis();
                                List<State> acceptStates = new ArrayList<>();
                                int k = 0;
                                for (Automaton<String> a : tempConstraint) {
                                    if (a.getAcceptStates().size() > 1) {
                                        k++;
                                        acceptStates.addAll(a.getAcceptStates());
                                    }
                                }
                                if (acceptStates.size() > 0) {
                                    combStates = (List<CombinationOfStates>) Combinations.combinations(acceptStates, k, this._singletonFinal(tempConstraint));
                                }
                                final long t_combStates_end = System.currentTimeMillis();
                                if (!quiet) {
                                    logger.info(String.format("Computation combination of states: %d ms", t_combStates_end - t_combStates_start));
                                }
                            }
                            computedCombStates = true;
                        }

                        AbstractEncoding enc;
                        switch (Encoding.get(e)) {
                            case GENERAL:
                                readAndWriteFromfile("domain-general", output_location, e);
                                enc = new GeneralEncoding("general", activitiesRepo, trace_aut,
                                        tempConstraint, true);
                                break;
                            case GENERAL_CONJ:
                                readAndWriteFromfile("domain-general-conj", output_location, e);
                                enc = new GeneralEncodingConjunctiveGoal("general-conj", activitiesRepo,
                                        trace_aut, tempConstraint, true);
                                break;
                            case GENERAL_SHARE:
                                readAndWriteFromfile("domain-general-share", output_location, e);
                                enc = new GeneralEncodingShareStates("general-share", activitiesRepo,
                                        trace_aut, tempConstraint, true);
                                break;
                            case GENERAL_CONJ_SHARE:
                                readAndWriteFromfile("domain-general-conj-share", output_location, e);
                                enc = new GeneralEncodingConjGoalAndShareStates("general-conj-share",
                                        activitiesRepo, trace_aut, tempConstraint, true);
                                break;
                            case STRIPS_CONJ:
                                enc = new StripsEncoding("strips-conj", activitiesRepo, trace_aut,
                                        tempConstraint, combStates, false);
                                break;
                            default:
                                throw new IllegalStateException("Unexpected value: " + Encoding.get(e));
                        }
                        List<?> res = enc.generateString(trace_nb);
                        File problem_f = new File(output_location, String.format("p-%d.pddl", trace_nb));
                        if (res.size() > 1) {
                            File domain_f = new File(output_location, String.format("domain-%d.pddl", trace_nb));
                            FileUtils.writeStringToFile(domain_f, res.get(0).toString(), "utf-8");
                            FileUtils.writeStringToFile(problem_f, res.get(1).toString(), "utf-8");
                        } else {
                            FileUtils.writeStringToFile(problem_f, res.get(0).toString(), "utf-8");
                        }
                        trace_nb++;
                    }
                }
                final long t_compilation_end = System.currentTimeMillis();
                final long t_total_compilation = t_compilation_end - t_compilation_start;
                final long t_wall_clock = t_compilation_end - t_log_start;
                if (!quiet) {
                    logger.info(String.format("Compilation done in: %d ms", t_total_compilation));
                    logger.info(String.format("Total time DFAs + Compilation: %d ms", t_compilation_end - t_automata_start));
                    logger.info(String.format("Total wall-clock time: %d ms", t_wall_clock));
                }
            } catch (Exception exception) {
                logger.error("Something went wrong!");
                exception.printStackTrace();
            }
        }
    }

    private HashSet<State> _singletonFinal(Set<Automaton<String>> constraint_automata) {
        return (HashSet<State>) constraint_automata.stream()
                .filter(a -> a.getAcceptStates().size() == 1)
                .flatMap(a -> a.getAcceptStates().stream()).collect(Collectors.toSet());
    }

    private void readAndWriteFromfile(String filename, String output_loc, int e) throws IOException {
        InputStream in = Thread.currentThread().getContextClassLoader().getResourceAsStream(
                String.format("%s.pddl", filename));
        FileUtils.copyInputStreamToFile(in, new File(output_loc, String.format("domain-e%d.pddl", e)));
        in.close();
    }

    public static void main(String[] args) {
        // By implementing Runnable or Callable, parsing, error handling and handling user
        // requests for usage help or version help can be done with one line of code.
        int exitCode = new CommandLine(new App()).execute(args);
        System.exit(exitCode);
    }
}
