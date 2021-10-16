(define (domain alignment)
(:requirements :typing :conditional-effects :universal-preconditions :action-costs)
(:types
  automaton_state - STATE
  trace_state - STATE
  state - OBJECT
  automaton - OBJECT
  activity - OBJECT
)
(:predicates
  (trace_trans ?t1 - TRACE_STATE ?e - ACTIVITY ?t2 - TRACE_STATE)
  (cur_state ?a - AUTOMATON ?s - AUTOMATON_STATE)
  (cur_state_trace ?t - TRACE_STATE)
  (automaton_trans ?a - AUTOMATON ?s1 - AUTOMATON_STATE ?e - ACTIVITY ?s2 - AUTOMATON_STATE)
  (final_state ?a - AUTOMATON ?s - AUTOMATON_STATE)
)
(:functions
  (total-cost)
  )
(:action sync
:parameters (?t1 - TRACE_STATE ?e - ACTIVITY ?t2 - TRACE_STATE)
:precondition
  (and (cur_state_trace ?t1)
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
)