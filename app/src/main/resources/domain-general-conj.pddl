(define (domain alignment)
    (:requirements :typing :disjunctive-preconditions :conditional-effects :universal-preconditions :action-costs)
    (:types trace_state automaton_state - state act dummy_act - activity)
    (:predicates
        (trace ?t1 - trace_state ?e - act ?t2 - trace_state)
        (cur_state ?s - state)
        (automaton ?s1 - automaton_state ?e - act ?s2 - automaton_state)
        (final_state ?s - state)
        (dummy_trans ?s1 - automaton_state ?de - dummy_act ?s2 - automaton_state)
    )
    (:functions (total-cost))

    (:action sync
        :parameters (?t1 - trace_state ?e - act ?t2 - trace_state)
        :precondition (and (cur_state ?t1) (trace ?t1 ?e ?t2))
        :effect (and
                    (not (cur_state ?t1)) (cur_state ?t2)
                    (forall (?s1 ?s2 - automaton_state)
                        (when (and (cur_state ?s1) (automaton ?s1 ?e ?s2))
                            (and (not (cur_state ?s1)) (cur_state ?s2)))
                    )
        )
    )
    (:action add
        :parameters (?e - act)
        :effect (and
                    (increase (total-cost) 1)
                    (forall (?s1 ?s2 - automaton_state)
                        (when (and (cur_state ?s1) (automaton ?s1 ?e ?s2))
                            (and (not (cur_state ?s1)) (cur_state ?s2)))
                    )
        )
    )
    (:action del
        :parameters (?t1 - trace_state ?e - act ?t2 - trace_state)
        :precondition (and (cur_state ?t1) (trace ?t1 ?e ?t2))
        :effect (and
                (increase (total-cost) 1)
                (not (cur_state ?t1)) (cur_state ?t2)
        )
    )
    (:action goto-goal
        :parameters (?t1 - trace_state ?de - dummy_act)
        :precondition (and (cur_state ?t1) (final_state ?t1))
        :effect
                (forall (?s1 ?s2 - automaton_state)
                    (when (and (cur_state ?s1) (dummy_trans ?s1 ?de ?s2))
                        (and (not (cur_state ?s1)) (cur_state ?s2)))
                )
    )
)