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

package code.encodings;

import code.automaton.*;
import code.parsing.ParseLog;
import code.parsing.ParseLydiaDFA;
import fr.uga.pddl4j.parser.*;
import org.deckfour.xes.extension.std.XConceptExtension;
import org.deckfour.xes.extension.std.XLifecycleExtension;
import org.deckfour.xes.model.XEvent;
import org.deckfour.xes.model.XLog;
import org.deckfour.xes.model.XTrace;

import java.util.*;

public class GeneralEncodingConjGoalAndShareStates extends AbstractEncoding {
    private boolean onlyProblem;

    private final Automaton<String> trace_automaton;
    private final Set<Automaton<String>> constraint_automata;

    public GeneralEncodingConjGoalAndShareStates(String name, Automaton<String> ta, Set<Automaton<String>> ca, boolean onlyProblem) {
        super(name, ta,  ca, onlyProblem);
        this.trace_automaton = ta;
        this.constraint_automata = ca;
        this.onlyProblem = onlyProblem;
    }

    public Domain generateDomain() {
        Domain d = new Domain(new Symbol(Symbol.Kind.DOMAIN, "alignment"));

        /* Requirements */
        d.addRequirement(RequireKey.TYPING);
        d.addRequirement(RequireKey.CONDITIONAL_EFFECTS);
        d.addRequirement(RequireKey.ACTION_COSTS);

        /* Types */
        TypedSymbol activity = new TypedSymbol(new Symbol(Symbol.Kind.TYPE, "activity"));
        TypedSymbol dummy_act = new TypedSymbol(new Symbol(Symbol.Kind.TYPE, "dummy_act"));
        dummy_act.addType(new Symbol(Symbol.Kind.TYPE, "activity"));
        TypedSymbol automaton_type = new TypedSymbol(new Symbol(Symbol.Kind.TYPE, "automaton"));
        TypedSymbol automaton_state = new TypedSymbol(new Symbol(Symbol.Kind.TYPE, "automaton_state"));
        automaton_state.addType(new Symbol(Symbol.Kind.TYPE, "state"));
        TypedSymbol trace_state = new TypedSymbol(new Symbol(Symbol.Kind.TYPE, "trace_state"));
        trace_state.addType(new Symbol(Symbol.Kind.TYPE, "state"));

        d.addType(dummy_act);
        d.addType(activity);
        d.addType(automaton_type);
        d.addType(automaton_state);
        d.addType(trace_state);

        /* Predicates */
        TypedSymbol t1 = new TypedSymbol(new Symbol(Symbol.Kind.VARIABLE, "?t1"));
        t1.addType(new Symbol(Symbol.Kind.TYPE, "trace_state"));
        TypedSymbol e = new TypedSymbol(new Symbol(Symbol.Kind.VARIABLE, "?e"));
        e.addType(new Symbol(Symbol.Kind.TYPE, "activity"));
        TypedSymbol t2 = new TypedSymbol(new Symbol(Symbol.Kind.VARIABLE, "?t2"));
        t2.addType(new Symbol(Symbol.Kind.TYPE, "trace_state"));
        NamedTypedList trace = new NamedTypedList(new Symbol(Symbol.Kind.PREDICATE, "trace_trans"));
        trace.add(t1);
        trace.add(e);
        trace.add(t2);

        TypedSymbol a = new TypedSymbol(new Symbol(Symbol.Kind.VARIABLE, "?a"));
        a.addType(new Symbol(Symbol.Kind.TYPE, "automaton"));
        TypedSymbol s = new TypedSymbol(new Symbol(Symbol.Kind.VARIABLE, "?s"));
        s.addType(new Symbol(Symbol.Kind.TYPE, "automaton_state"));
        NamedTypedList cur_state = new NamedTypedList(new Symbol(Symbol.Kind.PREDICATE, "cur_state"));
        cur_state.add(a);
        cur_state.add(s);

        TypedSymbol t = new TypedSymbol(new Symbol(Symbol.Kind.VARIABLE, "?t"));
        t.addType(new Symbol(Symbol.Kind.TYPE, "trace_state"));
        NamedTypedList cur_state_trace = new NamedTypedList(new Symbol(Symbol.Kind.PREDICATE, "cur_state_trace"));
        cur_state_trace.add(t);

        TypedSymbol s1 = new TypedSymbol(new Symbol(Symbol.Kind.VARIABLE, "?s1"));
        s1.addType(new Symbol(Symbol.Kind.TYPE, "automaton_state"));
        TypedSymbol s2 = new TypedSymbol(new Symbol(Symbol.Kind.VARIABLE, "?s2"));
        s2.addType(new Symbol(Symbol.Kind.TYPE, "automaton_state"));
        NamedTypedList automaton = new NamedTypedList(new Symbol(Symbol.Kind.PREDICATE, "automaton_trans"));
        automaton.add(a);
        automaton.add(s1);
        automaton.add(e);
        automaton.add(s2);

        NamedTypedList fin_state = new NamedTypedList(new Symbol(Symbol.Kind.PREDICATE, "final_state"));
        fin_state.add(s);

        TypedSymbol de = new TypedSymbol(new Symbol(Symbol.Kind.VARIABLE, "?de"));
        de.addType(new Symbol(Symbol.Kind.TYPE, "dummy_act"));
        NamedTypedList dummy_trans = new NamedTypedList(new Symbol(Symbol.Kind.PREDICATE, "dummy_trans"));
        dummy_trans.add(a);
        dummy_trans.add(s1);
        dummy_trans.add(de);
        dummy_trans.add(s2);

        d.addPredicate(trace);
        d.addPredicate(cur_state);
        d.addPredicate(cur_state_trace);
        d.addPredicate(automaton);
        d.addPredicate(fin_state);
        d.addPredicate(dummy_trans);

        /* Functions */
        NamedTypedList total_cost = new NamedTypedList(new Symbol(Symbol.Kind.FUNCTOR, "total-cost"));
        d.addFunction(total_cost);

        /* Sync Operator */
        Symbol sync_name = new Symbol(Symbol.Kind.ACTION, "sync");
        /* Preconditions */
        Exp sync_pre = new Exp(Connective.AND);
        Exp pre_cur_state = new Exp(Connective.ATOM);
        pre_cur_state.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state_trace"), new Symbol(Symbol.Kind.VARIABLE, "?t1")));
        sync_pre.addChild(pre_cur_state);

        Exp pre_trace = new Exp(Connective.ATOM);
        pre_trace.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "trace_trans"), new Symbol(Symbol.Kind.VARIABLE, "?t1"),
                new Symbol(Symbol.Kind.VARIABLE, "?e"), new Symbol(Symbol.Kind.VARIABLE, "?t2")));
        sync_pre.addChild(pre_trace);
        /* Effects */
        Exp sync_eff = new Exp(Connective.AND);
        Exp not_eff_cur_state_t1 = new Exp(Connective.NOT);
        Exp eff_cur_state_t1 = new Exp(Connective.ATOM);
        eff_cur_state_t1.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state_trace"), new Symbol(Symbol.Kind.VARIABLE, "?t1")));
        not_eff_cur_state_t1.addChild(eff_cur_state_t1);
        sync_eff.addChild(not_eff_cur_state_t1);

        Exp eff_cur_state_t2 = new Exp(Connective.ATOM);
        eff_cur_state_t2.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state_trace"), new Symbol(Symbol.Kind.VARIABLE, "?t2")));
        sync_eff.addChild(eff_cur_state_t2);

        Exp eff_forall = new Exp(Connective.FORALL);
        eff_forall.setVariables(Arrays.asList(a, s1, s2));
        Exp eff_when = new Exp(Connective.WHEN);
        /* When condition */
        Exp eff_when_cond = new Exp(Connective.AND);
        Exp cond_expr_1 = new Exp(Connective.ATOM);
        cond_expr_1.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state"),
                new Symbol(Symbol.Kind.VARIABLE, "?a"), new Symbol(Symbol.Kind.VARIABLE, "?s1")));
        eff_when_cond.addChild(cond_expr_1);
        Exp cond_expr_2 = new Exp(Connective.ATOM);
        cond_expr_2.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "automaton_trans"),
                new Symbol(Symbol.Kind.VARIABLE, "?a"), new Symbol(Symbol.Kind.VARIABLE, "?s1"),
                new Symbol(Symbol.Kind.VARIABLE, "?e"), new Symbol(Symbol.Kind.VARIABLE, "?s2")));
        eff_when_cond.addChild(cond_expr_2);
        eff_when.addChild(eff_when_cond);
        /* When effect */
        Exp eff_when_eff = new Exp(Connective.AND);
        Exp eff_expr_1 = new Exp(Connective.NOT);
        eff_expr_1.addChild(cond_expr_1);
        eff_when_eff.addChild(eff_expr_1);
        Exp eff_expr_2 = new Exp(Connective.ATOM);
        eff_expr_2.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state"),
                new Symbol(Symbol.Kind.VARIABLE, "?a"), new Symbol(Symbol.Kind.VARIABLE, "?s2")));
        eff_when_eff.addChild(eff_expr_2);
        eff_when.addChild(eff_when_eff);

        eff_forall.addChild(eff_when);

        sync_eff.addChild(eff_forall);

        Op sync_op = new Op(sync_name, Arrays.asList(t1, e, t2), sync_pre, sync_eff);
        d.addOperator(sync_op);


        /* Add Operator */
        Symbol add_name = new Symbol(Symbol.Kind.ACTION, "add");
        /* Preconditions */
        Exp add_pre = new Exp(Connective.AND);
        /* Effects */
        Exp add_eff = new Exp(Connective.AND);

        Exp add_cost = new Exp(Connective.INCREASE);
        Exp cost_func = new Exp(Connective.FN_HEAD);
        cost_func.setAtom(Collections.singletonList(new Symbol(Symbol.Kind.FUNCTOR, "total-cost")));
        add_cost.addChild(cost_func);
        Exp cost_num = new Exp(Connective.NUMBER);
        cost_num.setValue(1.0);
        add_cost.addChild(cost_num);
        add_eff.addChild(add_cost);

        Exp add_forall = new Exp(Connective.FORALL);
        add_forall.setVariables(Arrays.asList(a, s1, s2));
        Exp add_when = new Exp(Connective.WHEN);
        Exp add_when_cond = new Exp(Connective.AND);
        add_when_cond.addChild(cond_expr_1);
        add_when_cond.addChild(cond_expr_2);
        add_when.addChild(add_when_cond);
        Exp add_when_eff = new Exp(Connective.AND);
        add_when_eff.addChild(eff_expr_1);
        add_when_eff.addChild(eff_expr_2);
        add_when.addChild(add_when_eff);
        add_forall.addChild(add_when);
        add_eff.addChild(add_forall);

        Op add_op = new Op(add_name, Collections.singletonList(e), add_pre, add_eff);
        d.addOperator(add_op);

        /* Del Operator */
        Symbol del_name = new Symbol(Symbol.Kind.ACTION, "del");
        /* Preconditions */
        Exp del_pre = new Exp(Connective.AND);
        del_pre.addChild(eff_cur_state_t1);
        del_pre.addChild(pre_trace);
        /* Effects */
        Exp del_eff = new Exp(Connective.AND);
        del_eff.addChild(add_cost);
        del_eff.addChild(not_eff_cur_state_t1);
        del_eff.addChild(eff_cur_state_t2);

        Op del_op = new Op(del_name, Arrays.asList(t1, e, t2), del_pre, del_eff);
        d.addOperator(del_op);

        /* GotoGoal Operator */
        Symbol goto_name = new Symbol(Symbol.Kind.ACTION, "goto-goal");
        /* Preconditions */
        Exp goto_pre = new Exp(Connective.AND);
        goto_pre.addChild(eff_cur_state_t1);
        Exp pre_fin_state_t1 = new Exp(Connective.ATOM);
        pre_fin_state_t1.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "final_state"), new Symbol(Symbol.Kind.VARIABLE, "?t1")));
        goto_pre.addChild(pre_fin_state_t1);
        /* Effects */
        Exp goto_eff = new Exp(Connective.FORALL);
        goto_eff.setVariables(Arrays.asList(a, s1, s2));
        Exp add_when_goto = new Exp(Connective.WHEN);
        Exp add_when_goto_cond = new Exp(Connective.AND);
        add_when_goto_cond.addChild(cond_expr_1);
        Exp dummy_trans_cond = new Exp(Connective.ATOM);
        dummy_trans_cond.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "dummy_trans"),
                new Symbol(Symbol.Kind.VARIABLE, "?a"), new Symbol(Symbol.Kind.VARIABLE, "?s1"),
                new Symbol(Symbol.Kind.VARIABLE, "?de"), new Symbol(Symbol.Kind.VARIABLE, "?s2")));
        add_when_goto_cond.addChild(dummy_trans_cond);
        add_when_goto.addChild(add_when_goto_cond);
        Exp add_when_eff_goto = new Exp(Connective.AND);
        add_when_eff_goto.addChild(eff_expr_1);
        add_when_eff_goto.addChild(eff_expr_2);
        add_when_goto.addChild(add_when_eff_goto);
        goto_eff.addChild(add_when_goto);

        Op goto_op = new Op(goto_name, Arrays.asList(t1, de), goto_pre, goto_eff);
        d.addOperator(goto_op);

        return d;
    }

    private void _addConstraintObjs(Problem p) {
        for (Automaton<String> aut : this.constraint_automata) {
            TypedSymbol a = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, aut.getId()));
            a.addType(new Symbol(Symbol.Kind.TYPE, "automaton"));
            p.addObject(a);
        }
    }
    private void _addTraceObjs(Problem p) {
        for (State s : this.trace_automaton.getStates()) {
            TypedSymbol ts = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, "t" + s.getName()));
            ts.addType(new Symbol(Symbol.Kind.TYPE, "trace_state"));
            p.addObject(ts);
        }
    }
    private void _addConstraintStateObjs(Problem p) {
        OptionalInt max_nb_states = this.constraint_automata.stream().mapToInt(Automaton::size).max();
        for (int i=0; i<max_nb_states.getAsInt(); i++) {
            TypedSymbol as = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, "s" + i));
            as.addType(new Symbol(Symbol.Kind.TYPE, "automaton_state"));
            p.addObject(as);
        }
        /* GoalState Object */
        TypedSymbol gs = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, "gs"));
        gs.addType(new Symbol(Symbol.Kind.TYPE, "automaton_state"));
        p.addObject(gs);
    }
    private void _addActivities(Problem p) {
        for (String event : this.trace_automaton.getAlphabet()) {
            TypedSymbol act = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, event));
            act.addType(new Symbol(Symbol.Kind.TYPE, "activity"));
            p.addObject(act);
        }
        Set<String> seen = new HashSet<>();
        for (Automaton<String> a : this.constraint_automata) {
            Set<String> diff = new HashSet<>(a.getAlphabet());
            diff.removeAll(this.trace_automaton.getAlphabet());
            diff.removeAll(seen);
            for (String event : diff) {
                TypedSymbol act = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, event));
                act.addType(new Symbol(Symbol.Kind.TYPE, "activity"));
                p.addObject(act);
                seen.add(event);
            }
        }
        TypedSymbol dummyAct = new TypedSymbol(new Symbol(Symbol.Kind.CONSTANT, "dummy"));
        dummyAct.addType(new Symbol(Symbol.Kind.TYPE, "dummy_act"));
        p.addObject(dummyAct);
    }
    private void _addInit(Problem p) {
        Exp total_cost = new Exp(Connective.FN_ATOM);
        Exp total_cost_hd = new Exp(Connective.FN_HEAD);
        total_cost_hd.setAtom(Collections.singletonList(new Symbol(Symbol.Kind.FUNCTOR, "total-cost")));
        Exp total_cost_nb = new Exp(Connective.NUMBER);
        total_cost_nb.setValue(0.0);
        total_cost.addChild(total_cost_hd);
        total_cost.addChild(total_cost_nb);
        p.addInitialFact(total_cost);

        /* Trace Automaton */
        Exp cur_state = new Exp(Connective.ATOM);
        cur_state.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state_trace"),
                new Symbol(Symbol.Kind.CONSTANT, "t" + this.trace_automaton.getInitState().getName())));
        p.addInitialFact(cur_state);
        List<State> trace_accept = this.trace_automaton.getAcceptStates();
        for (State s : trace_accept) {
            Exp acc_state = new Exp(Connective.ATOM);
            acc_state.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "final_state"),
                    new Symbol(Symbol.Kind.CONSTANT, "t" + s.getName())));
            p.addInitialFact(acc_state);
        }
        for (Transition<String> trans : this.trace_automaton.getTransitionFunction()) {
            Exp trans_trace = new Exp(Connective.ATOM);
            trans_trace.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "trace_trans"),
                    new Symbol(Symbol.Kind.CONSTANT, "t" + trans.getInputState().getName()),
                    new Symbol(Symbol.Kind.CONSTANT, trans.getSymbol()),
                    new Symbol(Symbol.Kind.CONSTANT, "t" + trans.getOutputState().getName())));
            p.addInitialFact(trans_trace);
        }
        /* Constraint Automata */
        for (Automaton<String> aut : this.constraint_automata) {
            Exp a_cur_state = new Exp(Connective.ATOM);
            a_cur_state.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state"),
                    new Symbol(Symbol.Kind.CONSTANT, aut.getId()),
                    new Symbol(Symbol.Kind.CONSTANT, "s" + aut.getInitState().getName())));
            p.addInitialFact(a_cur_state);
            for (Transition<String> trans : aut.getTransitionFunction()) {
                Exp trans_automaton = new Exp(Connective.ATOM);
                trans_automaton.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "automaton_trans"),
                        new Symbol(Symbol.Kind.CONSTANT, aut.getId()),
                        new Symbol(Symbol.Kind.CONSTANT, "s" + trans.getInputState().getName()),
                        new Symbol(Symbol.Kind.CONSTANT, trans.getSymbol()),
                        new Symbol(Symbol.Kind.CONSTANT, "s" + trans.getOutputState().getName())));
                p.addInitialFact(trans_automaton);
            }
            List<State> automaton_accept = aut.getAcceptStates();
            if (automaton_accept.size() > 1) {
                for (State s : automaton_accept) {
                    Exp dummy_trans = new Exp(Connective.ATOM);
                    dummy_trans.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "dummy_trans"),
                            new Symbol(Symbol.Kind.CONSTANT, aut.getId()),
                            new Symbol(Symbol.Kind.CONSTANT, "s" + s.getName()),
                            new Symbol(Symbol.Kind.CONSTANT, "dummy"),
                            new Symbol(Symbol.Kind.CONSTANT, "gs")));
                    p.addInitialFact(dummy_trans);
                }
            }
        }
    }
    private void _addGoal(Problem p) {
        Exp and_goal = new Exp(Connective.AND);
        Exp cur_state_trace = new Exp(Connective.ATOM);
        cur_state_trace.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state_trace"),
                new Symbol(Symbol.Kind.CONSTANT, "t" + this.trace_automaton.getAcceptStates().get(0).getName())));
        and_goal.addChild(cur_state_trace);

        for (Automaton<String> aut : this.constraint_automata) {
            Exp a_cur_state = new Exp(Connective.ATOM);
            if (aut.getAcceptStates().size() > 1) {
                a_cur_state.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state"),
                        new Symbol(Symbol.Kind.CONSTANT, aut.getId()),
                        new Symbol(Symbol.Kind.CONSTANT, "gs")));
            }
            else {
                a_cur_state.setAtom(Arrays.asList(new Symbol(Symbol.Kind.PREDICATE, "cur_state"),
                        new Symbol(Symbol.Kind.CONSTANT, aut.getId()),
                        new Symbol(Symbol.Kind.CONSTANT, "s" + aut.getAcceptStates().get(0).getName())));
            }
            and_goal.addChild(a_cur_state);
        }

        p.setGoal(and_goal);

        Exp metric = new Exp(Connective.MINIMIZE);
        Exp total_cost_sym = new Exp(Connective.FN_HEAD);
        total_cost_sym.setAtom(Collections.singletonList(new Symbol(Symbol.Kind.FUNCTOR, "total-cost")));
        metric.addChild(total_cost_sym);
        p.setMetric(metric);
    }

    public Problem generateProblem(int trace_number) {
        Problem p = new Problem(new Symbol(Symbol.Kind.PROBLEM, "p-trace-" + trace_number));
        p.setDomain(new Symbol(Symbol.Kind.DOMAIN, "alignment"));
        _addConstraintObjs(p);
        _addTraceObjs(p);
        _addConstraintStateObjs(p);
        _addActivities(p);
        _addInit(p);
        _addGoal(p);
        return p;
    }

    @Override
    public StringBuilder generateDomainString() {
        return null;
    }

    @Override
    public StringBuilder generateProblemString(int trace_id) {
        return null;
    }

//    public static void main(String[] args) throws Exception {
//        try {
//            int trace_no = 96;
//
//            Set<String> al = new HashSet<>(Arrays.asList("a", "b", "c"));
//            State zero = new State("0", true, false);
//            State one = new State("1", false, false);
//            State two = new State("2", false, false);
//            State three = new State("3", false, true);
//            Set<State> ss = new HashSet<>(Arrays.asList(
//                    zero,
//                    one,
//                    two,
//                    three
//            ));
//            Set<Transition<String>> ts = new HashSet<>(Arrays.asList(
//                    new Transition<>(zero, "a", one),
//                    new Transition<>(one, "b", two),
//                    new Transition<>(two, "c", three)
//            ));
//
//            Automaton<String> t = new Automaton<>(al, ss, ts);
//
//            Set<Automaton<String>> c = new HashSet<>();
//            String constraint = "G(F(a) -> (X b))";
//            String automaton_print = LydiaAutomaton.callLydia(constraint, true);
//            AutomatonTemplate a = ParseLydiaDFA.parseMONAprint(automaton_print);
//            Automaton<String> aut = a.computeAutomaton(al);
////            aut.setId("a1");
//            c.add(aut);
//            String constraint2 = "G(a -> (F b))";
//            String automaton_print2 = LydiaAutomaton.callLydia(constraint2, true);
//            AutomatonTemplate a2 = ParseLydiaDFA.parseMONAprint(automaton_print2);
//            Automaton<String> aut2 = a2.computeAutomaton(al);
////            aut2.setId("a2");
//            c.add(aut2);
//
//            XLog log = ParseLog.openLog("datasets/logs/real-life-logs/financial_log.xes");
//            XTrace tr = log.get(trace_no);
//
//            GeneralEncodingConjGoalAndShareStates ge = new GeneralEncodingConjGoalAndShareStates("gen3", t, c,
//                    false);
//            List<Object> res = ge.generate(trace_no);
//            Domain d = (Domain) res.get(0);
////            Problem p = (Problem) res.get(0);
////            Problem p = ge.generateProblem(trace_no);
//            System.out.println(d);
//        }
//        catch (Exception e) {
//            e.printStackTrace();
//        }
//
//    }

}
