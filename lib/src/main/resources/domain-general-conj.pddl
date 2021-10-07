(define (domain alignment)
(:requirements :typing :conditional-effects :action-costs)
(:types
  dummy_act - ACTIVITY
  act - ACTIVITY
  automaton_state - STATE
  trace_state - STATE
)
(:predicates
  (trace ?t1 - TRACE_STATE ?e - ACT ?t2 - TRACE_STATE)
  (cur_state ?s - STATE)
  (automaton ?s1 - AUTOMATON_STATE ?e - ACT ?s2 - AUTOMATON_STATE)
  (final_state ?s - STATE)
  (dummy_trans ?s1 - AUTOMATON_STATE ?de - DUMMY_ACT ?s2 - AUTOMATON_STATE)
)
(:functions
  (total-cost)
  )
(:action sync
:parameters (?t1 - TRACE_STATE ?e - ACT ?t2 - TRACE_STATE)
:precondition
  (and (cur_state ?t1)
  (trace ?t1 ?e ?t2))
:effect
  (and (not (cur_state ?t1))
  (cur_state ?t2)
   (forall (?s1 ?s2 - AUTOMATON_STATE)
      (when (and (cur_state ?s1)
        (automaton ?s1 ?e ?s2)) (and (not (cur_state ?s1))
        (cur_state ?s2)))))
)
(:action add
:parameters (?e - ACT)
:precondition
  (and)
:effect
  (and (increase (total-cost) 1.0)
   (forall (?s1 ?s2 - AUTOMATON_STATE)
      (when (and (cur_state ?s1)
        (automaton ?s1 ?e ?s2)) (and (not (cur_state ?s1))
        (cur_state ?s2)))))
)
(:action del
:parameters (?t1 - TRACE_STATE ?e - ACT ?t2 - TRACE_STATE)
:precondition
  (and (cur_state ?t1)
  (trace ?t1 ?e ?t2))
:effect
  (and (increase (total-cost) 1.0)
  (not (cur_state ?t1))
  (cur_state ?t2))
)
(:action goto-goal
:parameters (?t1 - TRACE_STATE ?de - DUMMY_ACT)
:precondition
  (and (cur_state ?t1)
  (final_state ?t1))
:effect
   (forall (?s1 ?s2 - AUTOMATON_STATE)
  (when (and (cur_state ?s1)
    (dummy_trans ?s1 ?de ?s2)) (and (not (cur_state ?s1))
    (cur_state ?s2))))
)
)