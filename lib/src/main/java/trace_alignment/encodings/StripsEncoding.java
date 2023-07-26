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
import trace_alignment.utils.CombinationOfStates;
import trace_alignment.utils.CombinationOfTransitions;
import trace_alignment.utils.Combinations;
import trace_alignment.utils.Trace;
import org.apache.commons.io.FileUtils;
import org.deckfour.xes.extension.std.XConceptExtension;
import org.deckfour.xes.extension.std.XLifecycleExtension;
import org.deckfour.xes.model.XEvent;
import org.deckfour.xes.model.XLog;
import org.deckfour.xes.model.XTrace;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StripsEncoding extends AbstractEncoding {
    private boolean onlyProblem;
    private final Automaton<String> trace_automaton;
    private final Set<Automaton<String>> constraint_automata;

    private final Set<String> all_symbols = new HashSet<>();
    private final Map<String, List<Transition<String>>> relevantTransitionsByLabel = new HashMap<>();
    private List<CombinationOfTransitions> combTrans = new ArrayList<>();
    private List<CombinationOfStates> combStates;

    public StripsEncoding(String name, HashSet<String> ra, Automaton<String> ta, Set<Automaton<String>> ca, List<CombinationOfStates> combStates, boolean onlyProblem) {
        super(name, ra, ta, ca, onlyProblem);
        this.trace_automaton = ta;
        this.constraint_automata = ca;
        this.combStates = combStates;
        this.onlyProblem = onlyProblem;
        findAllSymbols();
        groupTransitionByLabel();
        findCombTrans();
    }

    /*
     * Find all symbols of constraint automata.
     */
    private void findAllSymbols() {
        this.constraint_automata.forEach(a -> this.all_symbols.addAll(a.getAlphabet()));
    }

    /*
     * Group transitions by label.
     */
    private void groupTransitionByLabel() {
        for (String l : this.all_symbols) {
            List<Transition<String>> temp = new ArrayList<>();
            for (Automaton<String> a : this.constraint_automata) {
                temp.addAll(a.getAllTransitions().stream().filter(t -> t.getSymbol().equals(l)).collect(Collectors.toList()));
            }
            this.relevantTransitionsByLabel.put(l, temp);
        }
    }

    private int nbAutomataPerLabel(List<Transition<String>> ts) {
        return ts.stream().map(Transition::getAutomatonId).collect(Collectors.toSet()).size();
    }

    private void findCombTrans() {
        for (Map.Entry<String, List<Transition<String>>> entry : this.relevantTransitionsByLabel.entrySet()) {
            for (int i = 1; i <= this.nbAutomataPerLabel(entry.getValue()); i++) {
                this.combTrans.addAll((List<CombinationOfTransitions>) Combinations.combinations(entry.getKey(),
                        entry.getValue(), i, new HashSet<>()));
            }
        }
    }

    private HashSet<Transition<String>> _select_ss_sync_transition(Transition<String> t) {
        HashSet<Transition<String>> ss = new HashSet<>();
        for (Automaton<String> a : this.constraint_automata) {
            // transitions + deadEnd transitions
            Set<Transition<String>> allTrans = new HashSet<>(a.getTransitionFunction());
            allTrans.addAll(a.getDead_ends());
            for (Transition<String> tr : allTrans) {
                if (tr.getSymbol().equals(t.getSymbol())) {
                    ss.add(tr);
                }
            }
        }
        return ss;
    }

    private StringBuilder _sync_completionString(Transition<String> t) {
        StringBuilder sync = new StringBuilder(String.format("(:action sync-%s-t%st%s\n", t.getSymbol(),
                t.getInputState().getName(), t.getOutputState().getName()));
        sync.append(":parameters ()\n");
        /* Precondition */
        sync.append(":precondition (and ");
        sync.append(String.format("(cur_state t%s) ", t.getInputState().getName()));
        HashSet<Transition<String>> ss_having_transition = _select_ss_sync_transition(t);
        for (Transition<String> ts : ss_having_transition) {
            sync.append(String.format("(not (cur_state s_%s_%s)) ",
                    ts.getInputState().getAutomatonId(), ts.getInputState().getName()));
        }
        /* Effects */
        sync.append(")\n:effect (and ");
        sync.append(String.format("(not (cur_state t%s)) ", t.getInputState().getName()));
        sync.append(String.format("(cur_state t%s))\n)\n\n", t.getOutputState().getName()));

        return sync;
    }

    private StringBuilder _del_opString(Transition<String> t) {
        StringBuilder del = new StringBuilder(String.format("(:action del-%s-t%st%s\n", t.getSymbol(), t.getInputState().getName(), t.getOutputState().getName()));
        del.append(":parameters ()\n");
        /* Precondition */
        del.append(":precondition (and ");
        del.append(String.format("(cur_state t%s)", t.getInputState().getName()));
        /* Effects */
        del.append(")\n:effect (and (increase (total-cost) 1) ");
        del.append(String.format("(not (cur_state t%s)) ", t.getInputState().getName()));
        del.append(String.format("(cur_state t%s))\n)\n\n", t.getOutputState().getName()));

        return del;
    }

    private StringBuilder _goto_opString(List<String> pre, StringBuilder eff, int nb) {
        StringBuilder go_to = new StringBuilder(String.format("(:action gotoGoal-c%d\n", nb));
        go_to.append(":parameters ()\n");
        /* Preconditions */
        go_to.append(":precondition (and ");
        go_to.append(String.format("(cur_state t%s) ", this.trace_automaton.getAcceptStates().get(0).getName()));
        for (String e : pre) {
            go_to.append(e);
        }
        /* Effects */
        go_to.append(")\n:effect ");
        go_to.append(eff);
        go_to.append("\n)\n\n");

        return go_to;
    }

    @Override
    public StringBuilder generateDomainString() {
        StringBuilder PDDL_domain_buffer = new StringBuilder();
        PDDL_domain_buffer.append("(define (domain alignment)\n");
        PDDL_domain_buffer.append("(:requirements :typing :negative-preconditions :action-costs)\n");
        PDDL_domain_buffer.append("(:types state)\n\n");
        PDDL_domain_buffer.append("(:constants\n");
        for (State s : this.trace_automaton.getStates()) {
            PDDL_domain_buffer.append(String.format("t%s - state\n", s.getName()));
        }
        for (Automaton<String> a : this.constraint_automata) {
            for (State s : a.getStates()) {
                if (!Objects.equals(s.getName(), "ink")) {
                    PDDL_domain_buffer.append(String.format("s_%s_%s - state\n", a.getId(), s.getName()));
                }
            }
            if (a.getAcceptStates().size() > 1) {
                PDDL_domain_buffer.append(String.format("s_%s_goal - state\n", a.getId()));
            }
        }
        PDDL_domain_buffer.append(")\n\n");
        PDDL_domain_buffer.append("(:predicates\n");
        PDDL_domain_buffer.append("(cur_state ?s - state)\n");
        PDDL_domain_buffer.append(")\n\n");
        PDDL_domain_buffer.append("(:functions\n");
        PDDL_domain_buffer.append("(total-cost)\n");
        PDDL_domain_buffer.append(")\n\n");
        /* Operators */
//        add action for every combination
//        sync action for every trace transition with event e for every combination with same event e
        int i = 0;
        for (CombinationOfTransitions ct : this.combTrans) {
            PDDL_domain_buffer.append(ct.generateAddString(i));
            for (Transition<String> tr : this.trace_automaton.getTransitionFunction()) {
                if (tr.getSymbol().equals(ct.getLabel())) {
                    PDDL_domain_buffer.append(ct.generateSyncString(tr, i));
                }
            }
            i++;
        }
//        del action for every trace transitions
        for (Transition<String> trace_tr : this.trace_automaton.getTransitionFunction()) {
            PDDL_domain_buffer.append(_sync_completionString(trace_tr));
            PDDL_domain_buffer.append(_del_opString(trace_tr));
        }
//        goto-goal for dummy goal states
        i = 0;
        for (CombinationOfStates cs : this.combStates) {
            PDDL_domain_buffer.append(_goto_opString(cs.generatePreString(), cs.generateEffString(), i));
            i++;
        }
        PDDL_domain_buffer.append(")");
        return PDDL_domain_buffer;
    }

    @Override
    public StringBuilder generateProblemString(int trace_id) {
        StringBuilder PDDL_problem_buffer = new StringBuilder();
        PDDL_problem_buffer.append("(define (problem mining)\n");
        PDDL_problem_buffer.append("(:domain alignment)\n");
        PDDL_problem_buffer.append("(:objects\n)\n\n");
        PDDL_problem_buffer.append("(:init\n");
        PDDL_problem_buffer.append("(= (total-cost) 0)\n");
        PDDL_problem_buffer.append(String.format("(cur_state t%s)\n", this.trace_automaton.getInitState().getName()));
        for (Automaton<String> a : this.constraint_automata) {
            PDDL_problem_buffer.append(String.format("(cur_state s_%s_%s)\n", a.getId(),
                    a.getInitState().getName()));
        }
        PDDL_problem_buffer.append(")\n\n");
        PDDL_problem_buffer.append("(:goal\n");
        PDDL_problem_buffer.append("(and\n");
        PDDL_problem_buffer.append(String.format("(cur_state t%s)\n", this.trace_automaton.getAcceptStates().get(0).getName()));
        for (Automaton<String> a : this.constraint_automata) {
            if (a.getAcceptStates().size() > 1) {
                PDDL_problem_buffer.append(String.format("(cur_state s_%s_goal)\n", a.getId()));
            } else {
                PDDL_problem_buffer.append(String.format("(cur_state s_%s_%s)\n", a.getId(),
                        a.getAcceptStates().get(0).getName()));
            }
        }
        PDDL_problem_buffer.append("))\n");
        PDDL_problem_buffer.append("(:metric minimize (total-cost))\n");
        PDDL_problem_buffer.append(")");
        return PDDL_problem_buffer;
    }

}
