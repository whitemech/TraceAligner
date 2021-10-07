(define (domain alignment)
    (:requirements :disjunctive-preconditions :conditional-effects :universal-preconditions)
    (:types trace_state automaton_state - state activity)
    (:predicates
        (trace ?t1 - trace_state ?e - activity ?t2 - trace_state)
        (cur_state ?s - state)
        (automaton ?s1 - automaton_state ?e - activity ?s2 - automaton_state)
        (final_state ?s - state)
    )
    (:functions total-cost)

    (:action sync
        :parameters (?t1 - trace_state ?e - activity ?t2 - trace_state)
        :precondition (and (cur_state ?t1)(trace ?t1 ?e ?t2))
        :effect(and
                    (not (cur_state ?t1))
                    (cur_state ?t2)
                    (forall (?s1 ?s2 - automaton_state)
                        (when (and (cur_state ?s1) (automaton ?s1 ?e ?s2))
                            (and (not (cur_state ?s1))(cur_state ?s2)))
                    )
                )
    )

    (:action add
        :parameters (?e - activity)
        :effect (and
                    (increase (total-cost) 1)
                    (forall (?s1 ?s2 - automaton_state)
                        (when (and (cur_state ?s1) (automaton ?s1 ?e ?s2))
                            (and (not (cur_state ?s1))(cur_state ?s2)))
                    )
                )
    )

    (:action del
        :parameters (?t1 - trace_state ?e - activity ?t2 - trace_state)
        :precondition (and (cur_state ?t1)(trace ?t1 ?e ?t2))
        :effect(and
                    (increase (total-cost) 1)
                    (not (cur_state ?t1)) (cur_state ?t2)
                )
    )
)


(define (problem prob-trace-96)
	(:domain alignment)
	(:objects
		t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 
		t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 
		t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 
		t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 
		t41 t42 t43 t44 t45 t46  - trace_state

		s11 s12 s13 s21 s22 s31 s32 s41 s42 s51 
		s52 s53 s61 s62 s63 s71 s72 s73 s74 s81 
		s82 s91 s92 s101 s102 s103 s104 s111 s112 s113 
		s121 s122 s123 s131 s132 s133 s141 s142 s143 s151 
		s152 s153 s154 s161 s162 s163 - automaton_state

		a_finalized_complete w_beoordelen_fraude_complete 
		w_beoordelen_fraude_schedule a_accepted_complete 
		w_valideren_aanvraag_schedule a_activated_complete 
		a_approved_complete w_valideren_aanvraag_complete 
		o_accepted_complete w_nabellen_offertes_complete 
		w_nabellen_offertes_schedule a_partlysubmitted_complete 
		o_sent_back_complete a_preaccepted_complete 
		a_declined_complete w_afhandelen_leads_complete 
		o_selected_complete o_created_complete 
		w_afhandelen_leads_schedule w_completeren_aanvraag_complete 
		a_registered_complete w_wijzigen_contractgegevens_schedule 
		o_sent_complete w_completeren_aanvraag_schedule 
		a_cancelled_complete w_completeren_aanvraag_start 
		w_beoordelen_fraude_start o_cancelled_complete 
		w_valideren_aanvraag_start w_nabellen_offertes_start 
		w_nabellen_incomplete_dossiers_start w_afhandelen_leads_start 
		a_submitted_complete w_nabellen_incomplete_dossiers_schedule 
		w_nabellen_incomplete_dossiers_complete - activity
	)
	(:init
		(= (total-cost) 0)

		;trace transitions
		(cur_state t1)
		(trace t1 a_submitted_complete t2)
		(trace t2 a_partlysubmitted_complete t3)
		(trace t3 w_afhandelen_leads_schedule t4)
		(trace t4 w_afhandelen_leads_start t5)
		(trace t5 w_afhandelen_leads_complete t6)
		(trace t6 w_afhandelen_leads_start t7)
		(trace t7 a_preaccepted_complete t8)
		(trace t8 w_completeren_aanvraag_schedule t9)
		(trace t9 w_afhandelen_leads_complete t10)
		(trace t10 w_completeren_aanvraag_start t11)
		(trace t11 w_completeren_aanvraag_complete t12)
		(trace t12 w_completeren_aanvraag_start t13)
		(trace t13 w_completeren_aanvraag_complete t14)
		(trace t14 w_completeren_aanvraag_start t15)
		(trace t15 a_accepted_complete t16)
		(trace t16 a_finalized_complete t17)
		(trace t17 o_selected_complete t18)
		(trace t18 o_created_complete t19)
		(trace t19 o_sent_complete t20)
		(trace t20 w_nabellen_offertes_schedule t21)
		(trace t21 w_completeren_aanvraag_complete t22)
		(trace t22 w_nabellen_offertes_start t23)
		(trace t23 o_selected_complete t24)
		(trace t24 o_cancelled_complete t25)
		(trace t25 o_created_complete t26)
		(trace t26 o_sent_complete t27)
		(trace t27 w_nabellen_offertes_schedule t28)
		(trace t28 w_nabellen_offertes_complete t29)
		(trace t29 w_nabellen_offertes_start t30)
		(trace t30 o_sent_back_complete t31)
		(trace t31 w_valideren_aanvraag_schedule t32)
		(trace t32 w_nabellen_offertes_complete t33)
		(trace t33 w_valideren_aanvraag_start t34)
		(trace t34 o_cancelled_complete t35)
		(trace t35 o_selected_complete t36)
		(trace t36 o_created_complete t37)
		(trace t37 o_sent_complete t38)
		(trace t38 w_nabellen_incomplete_dossiers_schedule t39)
		(trace t39 w_valideren_aanvraag_complete t40)
		(trace t40 w_nabellen_incomplete_dossiers_start t41)
		(trace t41 o_accepted_complete t42)
		(trace t42 a_registered_complete t43)
		(trace t43 a_activated_complete t44)
		(trace t44 a_approved_complete t45)
		(trace t45 w_nabellen_incomplete_dossiers_complete t46)
		(final_state t46)


		;DECLARE automata:

		;init(a_submitted_complete)
		(cur_state s11)
		(final_state s12)
		(automaton s11 a_submitted_complete s12)
		(automaton s11 a_finalized_complete s13)
		(automaton s11 w_beoordelen_fraude_complete s13)
		(automaton s11 w_beoordelen_fraude_schedule s13)
		(automaton s11 a_accepted_complete s13)
		(automaton s11 w_valideren_aanvraag_schedule s13)
		(automaton s11 a_activated_complete s13)
		(automaton s11 a_approved_complete s13)
		(automaton s11 w_valideren_aanvraag_complete s13)
		(automaton s11 o_accepted_complete s13)
		(automaton s11 w_nabellen_offertes_complete s13)
		(automaton s11 w_nabellen_offertes_schedule s13)
		(automaton s11 a_partlysubmitted_complete s13)
		(automaton s11 o_sent_back_complete s13)
		(automaton s11 a_preaccepted_complete s13)
		(automaton s11 a_declined_complete s13)
		(automaton s11 w_afhandelen_leads_complete s13)
		(automaton s11 o_selected_complete s13)
		(automaton s11 o_created_complete s13)
		(automaton s11 w_afhandelen_leads_schedule s13)
		(automaton s11 w_completeren_aanvraag_complete s13)
		(automaton s11 a_registered_complete s13)
		(automaton s11 w_wijzigen_contractgegevens_schedule s13)
		(automaton s11 o_sent_complete s13)
		(automaton s11 w_completeren_aanvraag_schedule s13)
		(automaton s11 a_cancelled_complete s13)
		(automaton s11 w_completeren_aanvraag_start s13)
		(automaton s11 w_beoordelen_fraude_start s13)
		(automaton s11 o_cancelled_complete s13)
		(automaton s11 w_valideren_aanvraag_start s13)
		(automaton s11 w_nabellen_offertes_start s13)
		(automaton s11 w_nabellen_incomplete_dossiers_start s13)
		(automaton s11 w_afhandelen_leads_start s13)
		(automaton s11 w_nabellen_incomplete_dossiers_schedule s13)
		(automaton s11 w_nabellen_incomplete_dossiers_complete s13)

		;existence(a_partlysubmitted_complete)
		(cur_state s21)
		(final_state s22)
		(automaton s21 a_partlysubmitted_complete s22)

		;response(w_afhandelen_leads_schedule,w_afhandelen_leads_start)
		(cur_state s31)
		(final_state s31)
		(automaton s31 w_afhandelen_leads_schedule s32)
		(automaton s32 w_afhandelen_leads_start s31)

		;response(w_afhandelen_leads_start,w_afhandelen_leads_complete)
		(cur_state s41)
		(final_state s41)
		(automaton s41 w_afhandelen_leads_start s42)
		(automaton s42 w_afhandelen_leads_complete s41)

		;not_succession(o_selected_complete,o_created_complete)
		(cur_state s51)
		(final_state s51)
		(final_state s52)
		(automaton s51 o_selected_complete s52)
		(automaton s52 o_created_complete s53)

		;not_succession(o_created_complete,o_sent_complete)
		(cur_state s61)
		(final_state s61)
		(final_state s62)
		(automaton s61 o_created_complete s62)
		(automaton s62 o_sent_complete s63)

		;co_existence(w_beoordelen_fraude_schedule,w_wijzigen_contractgegevens_schedule)
		(cur_state s71)
		(final_state s71)
		(final_state s74)
		(automaton s71 w_wijzigen_contractgegevens_schedule s72)
		(automaton s71 w_beoordelen_fraude_schedule s73)
		(automaton s72 w_beoordelen_fraude_schedule s74)
		(automaton s73 w_wijzigen_contractgegevens_schedule s74)

		;response(w_beoordelen_fraude_schedule,w_beoordelen_fraude_start)
		(cur_state s81)
		(final_state s81)
		(automaton s81 w_beoordelen_fraude_schedule s82)
		(automaton s82 w_beoordelen_fraude_start s81)

		;response(w_beoordelen_fraude_start,w_beoordelen_fraude_complete)
		(cur_state s91)
		(final_state s91)
		(automaton s91 w_beoordelen_fraude_start s92)
		(automaton s92 w_beoordelen_fraude_complete s91)

		;succession(w_completeren_aanvraag_schedule,w_completeren_aanvraag_complete)
		(cur_state s101)
		(final_state s101)
		(final_state s104)
		(automaton s101 w_completeren_aanvraag_complete s102)
		(automaton s101 w_completeren_aanvraag_schedule s103)
		(automaton s103 w_completeren_aanvraag_complete s104)
		(automaton s104 w_completeren_aanvraag_schedule s103)

		;not_succession(a_cancelled_complete,a_activated_complete)
		(cur_state s111)
		(final_state s111)
		(final_state s112)
		(automaton s111 a_cancelled_complete s112)
		(automaton s112 a_activated_complete s113)

		;not_succession(a_cancelled_complete,a_registered_complete)
		(cur_state s121)
		(final_state s121)
		(final_state s122)
		(automaton s121 a_cancelled_complete s122)
		(automaton s122 a_registered_complete s123)

		;not_succession(a_cancelled_complete,a_approved_complete)
		(cur_state s131)
		(final_state s131)
		(final_state s132)
		(automaton s131 a_cancelled_complete s132)
		(automaton s132 a_approved_complete s133)

		;not_succession(a_cancelled_complete,a_declined_complete)
		(cur_state s141)
		(final_state s141)
		(final_state s142)
		(automaton s141 a_cancelled_complete s142)
		(automaton s142 a_declined_complete s143)

		;not_co_existence(a_declined_complete,a_accepted_complete)
		(cur_state s151)
		(final_state s151)
		(final_state s152)
		(final_state s153)
		(automaton s151 a_accepted_complete s152)
		(automaton s151 a_declined_complete s153)
		(automaton s152 a_declined_complete s154)
		(automaton s153 a_accepted_complete s154)

		;chain_succession(a_submitted_complete,a_partlysubmitted_complete)
		(cur_state s161)
		(final_state s161)
		(automaton s161 a_partlysubmitted_complete s162)
		(automaton s161 a_submitted_complete s163)
		(automaton s163 a_partlysubmitted_complete s161)
		(automaton s163 a_finalized_complete s162)
		(automaton s163 w_beoordelen_fraude_complete s162)
		(automaton s163 w_beoordelen_fraude_schedule s162)
		(automaton s163 a_accepted_complete s162)
		(automaton s163 w_valideren_aanvraag_schedule s162)
		(automaton s163 a_activated_complete s162)
		(automaton s163 a_approved_complete s162)
		(automaton s163 w_valideren_aanvraag_complete s162)
		(automaton s163 o_accepted_complete s162)
		(automaton s163 w_nabellen_offertes_complete s162)
		(automaton s163 w_nabellen_offertes_schedule s162)
		(automaton s163 o_sent_back_complete s162)
		(automaton s163 a_preaccepted_complete s162)
		(automaton s163 a_declined_complete s162)
		(automaton s163 w_afhandelen_leads_complete s162)
		(automaton s163 o_selected_complete s162)
		(automaton s163 o_created_complete s162)
		(automaton s163 w_afhandelen_leads_schedule s162)
		(automaton s163 w_completeren_aanvraag_complete s162)
		(automaton s163 a_registered_complete s162)
		(automaton s163 w_wijzigen_contractgegevens_schedule s162)
		(automaton s163 o_sent_complete s162)
		(automaton s163 w_completeren_aanvraag_schedule s162)
		(automaton s163 a_cancelled_complete s162)
		(automaton s163 w_completeren_aanvraag_start s162)
		(automaton s163 w_beoordelen_fraude_start s162)
		(automaton s163 o_cancelled_complete s162)
		(automaton s163 w_valideren_aanvraag_start s162)
		(automaton s163 w_nabellen_offertes_start s162)
		(automaton s163 w_nabellen_incomplete_dossiers_start s162)
		(automaton s163 w_afhandelen_leads_start s162)
		(automaton s163 a_submitted_complete s162)
		(automaton s163 w_nabellen_incomplete_dossiers_schedule s162)
		(automaton s163 w_nabellen_incomplete_dossiers_complete s162)

	)
	(:goal (forall (?s - state) (imply (cur_state ?s)(final_state ?s))))
	(:metric minimize (total-cost))
)
