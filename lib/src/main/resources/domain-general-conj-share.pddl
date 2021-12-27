(define (domain alignment)
    (:requirements :typing :disjunctive-preconditions :conditional-effects :universal-preconditions :action-costs)
    (:types trace_state automaton_state - state act dummy_act - activity automaton)
    (:predicates
        (trace_trans ?t1 - trace_state ?e - act ?t2 - trace_state)
        (cur_state ?a - automaton ?s - automaton_state)
        (cur_state_trace ?t - trace_state)
        (automaton_trans ?a - automaton ?s1 - automaton_state ?e - act ?s2 - automaton_state)
        (final_state ?s - trace_state)
        (dummy_trans ?a - automaton ?s1 - automaton_state ?de - dummy_act ?s2 - automaton_state)
    )
    (:functions (total-cost))

    (:action sync
        :parameters (?t1 - trace_state ?e - act ?t2 - trace_state)
        :precondition (and (cur_state_trace ?t1) (trace_trans ?t1 ?e ?t2))
        :effect (and
                (not (cur_state_trace ?t1)) (cur_state_trace ?t2)
                (forall (?a - automaton ?s1 ?s2 - automaton_state)
                    (when (and (cur_state ?a ?s1) (automaton_trans ?a ?s1 ?e ?s2))
                        (and (not (cur_state ?a ?s1)) (cur_state ?a ?s2)))
                )
        )
    )
    (:action add
        :parameters (?e - act)
        :effect (and
                (increase (total-cost) 1)
                (forall (?a - automaton ?s1 ?s2 - automaton_state)
                    (when (and (cur_state ?a ?s1) (automaton_trans ?a ?s1 ?e ?s2))
                        (and (not (cur_state ?a ?s1)) (cur_state ?a ?s2)))
                )
        )
    )
    (:action del
        :parameters (?t1 - trace_state ?e - act ?t2 - trace_state)
        :precondition (and (cur_state_trace ?t1) (trace_trans ?t1 ?e ?t2))
        :effect (and
                (increase (total-cost) 1)
                (not (cur_state_trace ?t1)) (cur_state_trace ?t2)
        )
    )
    (:action goto-goal
        :parameters (?t1 - trace_state ?de - dummy_act)
        :precondition (and (cur_state_trace ?t1) (final_state ?t1))
        :effect
                (forall (?a - automaton ?s1 ?s2 - automaton_state)
                    (when (and (cur_state ?a ?s1) (dummy_trans ?a ?s1 ?de ?s2))
                        (and (not (cur_state ?a ?s1)) (cur_state ?a ?s2))
                )
        )
    )
)