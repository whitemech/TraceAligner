(define (domain alignment)
(:requirements :typing :conditional-effects :action-costs)
(:types
  dummy_act - ACTIVITY
  activity - OBJECT
  automaton - OBJECT
  automaton_state - STATE
  trace_state - STATE
)
(:predicates
  (trace_trans ?t1 - TRACE_STATE ?e - ACTIVITY ?t2 - TRACE_STATE)
  (cur_state ?a - AUTOMATON ?s - AUTOMATON_STATE)
  (cur_state_trace ?t - TRACE_STATE)
  (automaton_trans ?a - AUTOMATON ?s1 - AUTOMATON_STATE ?e - ACTIVITY ?s2 - AUTOMATON_STATE)
  (final_state ?s - AUTOMATON_STATE)
  (dummy_trans ?a - AUTOMATON ?s1 - AUTOMATON_STATE ?de - DUMMY_ACT ?s2 - AUTOMATON_STATE)
)
(:functions
  (total-cost)
  )
(:action sync
:parameters (?t1 - TRACE_STATE ?e - ACTIVITY ?t2 - TRACE_STATE)
:precondition
  (and (cur_state ?t1)
  (trace_trans ?t1 ?e ?t2))
:effect
  (and (not (cur_state_trace ?t1))
  (cur_state_trace ?t2)
   (forall (?a - AUTOMATON ?s1 ?s2 - AUTOMATON_STATE)
      (when (and (cur_state ?a ?s1)
        (automaton_trans ?a ?s1 ?e ?s2)) (and (not (cur_state ?a ?s1))
        (cur_state ?a ?s2)))))
)
(:action add
:parameters (?e - ACTIVITY)
:precondition
  (and)
:effect
  (and (increase (total-cost) 1.0)
   (forall (?a - AUTOMATON ?s1 ?s2 - AUTOMATON_STATE)
      (when (and (cur_state ?a ?s1)
        (automaton_trans ?a ?s1 ?e ?s2)) (and (not (cur_state ?a ?s1))
        (cur_state ?a ?s2)))))
)
(:action del
:parameters (?t1 - TRACE_STATE ?e - ACTIVITY ?t2 - TRACE_STATE)
:precondition
  (and (cur_state_trace ?t1)
  (trace_trans ?t1 ?e ?t2))
:effect
  (and (increase (total-cost) 1.0)
  (not (cur_state_trace ?t1))
  (cur_state_trace ?t2))
)
(:action goto-goal
:parameters (?t1 - TRACE_STATE ?de - DUMMY_ACT)
:precondition
  (and (cur_state_trace ?t1)
  (final_state ?t1))
:effect
   (forall (?a - AUTOMATON ?s1 ?s2 - AUTOMATON_STATE)
  (when (and (cur_state ?a ?s1)
    (dummy_trans ?a ?s1 ?de ?s2)) (and (not (cur_state ?a ?s1))
    (cur_state ?a ?s2))))
)
)