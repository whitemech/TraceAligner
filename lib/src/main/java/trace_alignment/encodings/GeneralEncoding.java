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

import java.util.*;

public class GeneralEncoding extends AbstractEncoding {

    private boolean onlyProblem;

    private final HashSet<String> repoActivity;
    private final TraceAutomaton<String> trace_automaton;
    private final Set<Automaton<String>> constraint_automata;

    public GeneralEncoding(String name, HashSet<String> ra, TraceAutomaton<String> ta, Set<Automaton<String>> ca, boolean onlyProblem) {
        super(name, ra, ta, ca, onlyProblem);
        this.repoActivity = ra;
        this.trace_automaton = ta;
        this.constraint_automata = ca;
        this.onlyProblem = onlyProblem;
    }

    @Override
    public StringBuilder generateDomainString() {
        StringBuilder PDDL_domain_buffer = new StringBuilder();
        PDDL_domain_buffer.append("(define (domain alignment)\n");
        PDDL_domain_buffer.append("(:requirements :typing :disjunctive-preconditions :conditional-effects :universal-preconditions :action-costs)\n");
        PDDL_domain_buffer.append("(:types trace_state automaton_state - state activity)\n");
        PDDL_domain_buffer.append("(:predicates\n");
        PDDL_domain_buffer.append("(trace ?t1 - trace_state ?e - activity ?t2 - trace_state)\n");
        PDDL_domain_buffer.append("(cur_state ?s - state)\n");
        PDDL_domain_buffer.append("(automaton ?s1 - automaton_state ?e - activity ?s2 - automaton_state)\n");
        PDDL_domain_buffer.append("(final_state ?s - state)\n)\n");
        PDDL_domain_buffer.append("(:functions\n");
        PDDL_domain_buffer.append("(total-cost)\n");
        PDDL_domain_buffer.append(")\n\n");
        /* Sync Operator */
        PDDL_domain_buffer.append("(:action sync\n");
        PDDL_domain_buffer.append(":parameters (?t1 - trace_state ?e - activity ?t2 - trace_state)\n");
        PDDL_domain_buffer.append(":precondition (and (cur_state ?t1) (trace ?t1 ?e ?t2))\n");
        PDDL_domain_buffer.append(":effect (and (not (cur_state ?t1)) (cur_state ?t2)\n" +
                "\t\t(forall (?s1 ?s2 - automaton_state)\n" +
                "\t\t\t(when (and (cur_state ?s1) (automaton ?s1 ?e ?s2))\n" +
                "\t\t\t\t(and (not (cur_state ?s1)) (cur_state ?s2)))\n)\n)\n)\n");
        /* Add Operator */
        PDDL_domain_buffer.append("(:action add\n");
        PDDL_domain_buffer.append(":parameters (?e - activity)\n");
        PDDL_domain_buffer.append(":precondition (and)\n");
        PDDL_domain_buffer.append(":effect (and (increase (total-cost) 1)\n" +
                "\t\t(forall (?s1 ?s2 - automaton_state)\n" +
                "\t\t\t(when (and (cur_state ?s1) (automaton ?s1 ?e ?s2))\n" +
                "\t\t\t\t(and (not (cur_state ?s1)) (cur_state ?s2)))\n)\n)\n)\n");
        /* Del Operator */
        PDDL_domain_buffer.append("(:action del\n");
        PDDL_domain_buffer.append(":parameters (?t1 - trace_state ?e - activity ?t2 - trace_state)\n");
        PDDL_domain_buffer.append(":precondition (and (cur_state ?t1) (trace ?t1 ?e ?t2))\n");
        PDDL_domain_buffer.append(":effect (and (increase (total-cost) 1) (not (cur_state ?t1)) (cur_state ?t2)\n)" +
                "\n)\n");
        PDDL_domain_buffer.append(")");
        return PDDL_domain_buffer;
    }

    @Override
    public StringBuilder generateProblemString(int trace_id) {
        StringBuilder PDDL_problem_buffer = new StringBuilder();
        PDDL_problem_buffer.append("(define (problem p-trace-").append(trace_id).append(")\n");
        PDDL_problem_buffer.append("(:domain alignment)\n");
        PDDL_problem_buffer.append("(:objects\n");
        for (State s : this.trace_automaton.getStates()) {
            PDDL_problem_buffer.append("t").append(s.getName());
            PDDL_problem_buffer.append(" - trace_state\n");
        }
        for (Automaton<String> a : this.constraint_automata) {
            for (State s : a.getStates()) {
                PDDL_problem_buffer.append(String.format("s_%s_%s", a.getId(), s.getName()));
                PDDL_problem_buffer.append(" - automaton_state\n");
            }
        }
        for (String a : this.repoActivity) {
            PDDL_problem_buffer.append(a).append(" - activity\n");
        }
        PDDL_problem_buffer.append(")\n");
        PDDL_problem_buffer.append("(:init\n(= (total-cost) 0)\n");
        PDDL_problem_buffer.append("(cur_state t").append(this.trace_automaton.getInitState().getName()).append(")\n");
        PDDL_problem_buffer.append("(final_state t").append(this.trace_automaton.getAcceptStates().get(0).getName()).append(")\n");
        for (Transition<String> trans : this.trace_automaton.getTransitionFunction()) {
            PDDL_problem_buffer.append("(trace t")
                    .append(trans.getInputState().getName())
                    .append(" ")
                    .append(trans.getSymbol())
                    .append(" t")
                    .append(trans.getOutputState().getName())
                    .append(")\n");
        }
        for (Automaton<String> a : this.constraint_automata) {
            PDDL_problem_buffer.append("(cur_state ")
                    .append(String.format("s_%s_%s", a.getId(), a.getInitState().getName())).append(")\n");
            List<State> automaton_accept = a.getAcceptStates();
            for (State s : automaton_accept) {
                PDDL_problem_buffer.append("(final_state ")
                        .append(String.format("s_%s_%s", a.getId(), s.getName())).append(")\n");
            }
            for (Transition<String> trans : a.getTransitionFunction()) {
                PDDL_problem_buffer.append("(automaton ")
                        .append(String.format("s_%s_%s", a.getId(), trans.getInputState().getName()))
                        .append(" ")
                        .append(trans.getSymbol())
                        .append(" ")
                        .append(String.format("s_%s_%s", a.getId(), trans.getOutputState().getName()))
                        .append(")\n");
            }
        }
        PDDL_problem_buffer.append(")\n");
        PDDL_problem_buffer.append("(:goal (and ");
        for (Automaton<String> a : this.constraint_automata) {
            if (a.getAcceptStates().size() > 1) {
                PDDL_problem_buffer.append("(or ");
                for (State s : a.getAcceptStates()) {
                    PDDL_problem_buffer.append(String.format("(cur_state s_%s_%s) ", a.getId(), s.getName()));
                }
                PDDL_problem_buffer.append(") ");
            } else {
                PDDL_problem_buffer.append(String.format("(cur_state s_%s_%s) ", a.getId(), a.getAcceptStates().get(0).getName()));
            }
        }
        PDDL_problem_buffer.append(String.format("(cur_state t%s)", this.trace_automaton.getAcceptStates().get(0).getName()));
        PDDL_problem_buffer.append("))\n");
        PDDL_problem_buffer.append("(:metric minimize (total-cost))\n");
        PDDL_problem_buffer.append(")\n");
        return PDDL_problem_buffer;
    }

}
