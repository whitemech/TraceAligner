(define (domain Mining)
(:requirements :typing :equality)
(:types state)

(:predicates
(currstate ?s - state)
)

(:functions
(total-cost)
)

(:action add-activity15_complete-ct0
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity15_complete-ct0
:precondition (and (currstate t42) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t42)) (currstate t43) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity15_complete-ct0
:precondition (and (currstate t44) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t44)) (currstate t45) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity15_complete-ct1
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity15_complete-ct1
:precondition (and (currstate t42) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t42)) (currstate t43) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity15_complete-ct1
:precondition (and (currstate t44) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t44)) (currstate t45) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity15_complete-ct2
:precondition (and (currstate s_1_2) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_1_2)) (currstate s_1_0)  (increase (total-cost) 1))
)

(:action sync-activity15_complete-ct2
:precondition (and (currstate t42) (currstate s_1_2) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate t42)) (currstate t43) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action sync-activity15_complete-ct2
:precondition (and (currstate t44) (currstate s_1_2) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate t44)) (currstate t45) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action add-activity15_complete-ct3
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity15_complete-ct3
:precondition (and (currstate t42) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t42)) (currstate t43) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity15_complete-ct3
:precondition (and (currstate t44) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t44)) (currstate t45) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity15_complete-ct4
:precondition (and (currstate s_5_0) (currstate s_1_2) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_1_2)) (currstate s_1_0)  (increase (total-cost) 1))
)

(:action sync-activity15_complete-ct4
:precondition (and (currstate t42) (currstate s_5_0) (currstate s_1_2) (not (currstate s_2_0)) )
:effect (and (not (currstate t42)) (currstate t43) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action sync-activity15_complete-ct4
:precondition (and (currstate t44) (currstate s_5_0) (currstate s_1_2) (not (currstate s_2_0)) )
:effect (and (not (currstate t44)) (currstate t45) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action add-activity15_complete-ct5
:precondition (and (currstate s_2_0) (currstate s_1_2) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_2)) (currstate s_1_0)  (increase (total-cost) 1))
)

(:action sync-activity15_complete-ct5
:precondition (and (currstate t42) (currstate s_2_0) (currstate s_1_2) (not (currstate s_5_0)) )
:effect (and (not (currstate t42)) (currstate t43) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action sync-activity15_complete-ct5
:precondition (and (currstate t44) (currstate s_2_0) (currstate s_1_2) (not (currstate s_5_0)) )
:effect (and (not (currstate t44)) (currstate t45) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action add-activity15_complete-ct6
:precondition (and (currstate s_5_0) (currstate s_2_0) (currstate s_1_2) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_2)) (currstate s_1_0)  (increase (total-cost) 1))
)

(:action sync-activity15_complete-ct6
:precondition (and (currstate t42) (currstate s_5_0) (currstate s_2_0) (currstate s_1_2) )
:effect (and (not (currstate t42)) (currstate t43) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action sync-activity15_complete-ct6
:precondition (and (currstate t44) (currstate s_5_0) (currstate s_2_0) (currstate s_1_2) )
:effect (and (not (currstate t44)) (currstate t45) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_2)) (currstate s_1_0) )
)

(:action add-activity3_complete-ct7
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity3_complete-ct7
:precondition (and (currstate t17) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity3_complete-ct7
:precondition (and (currstate t39) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t39)) (currstate t40) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity3_complete-ct8
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity3_complete-ct8
:precondition (and (currstate t17) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity3_complete-ct8
:precondition (and (currstate t39) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t39)) (currstate t40) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity3_complete-ct9
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity3_complete-ct9
:precondition (and (currstate t17) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t17)) (currstate t18) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity3_complete-ct9
:precondition (and (currstate t39) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t39)) (currstate t40) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity7_complete-ct10
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity7_complete-ct10
:precondition (and (currstate t18) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity7_complete-ct10
:precondition (and (currstate t26) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t26)) (currstate t27) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity7_complete-ct10
:precondition (and (currstate t45) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t45)) (currstate t46) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity7_complete-ct11
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity7_complete-ct11
:precondition (and (currstate t18) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity7_complete-ct11
:precondition (and (currstate t26) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t26)) (currstate t27) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity7_complete-ct11
:precondition (and (currstate t45) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t45)) (currstate t46) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity7_complete-ct12
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity7_complete-ct12
:precondition (and (currstate t18) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t18)) (currstate t19) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity7_complete-ct12
:precondition (and (currstate t26) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t26)) (currstate t27) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity7_complete-ct12
:precondition (and (currstate t45) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t45)) (currstate t46) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity1_complete-ct13
:precondition (and (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_7_1)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity1_complete-ct13
:precondition (and (currstate t20) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_7_1)) (not (currstate s_2_0)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity1_complete-ct14
:precondition (and (currstate s_7_1) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_7_1)) (currstate s_7_0)  (increase (total-cost) 1))
)

(:action sync-activity1_complete-ct14
:precondition (and (currstate t20) (currstate s_7_1) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_7_1)) (currstate s_7_0) )
)

(:action add-activity1_complete-ct15
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_7_1)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity1_complete-ct15
:precondition (and (currstate t20) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_7_1)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity1_complete-ct16
:precondition (and (currstate s_5_0) (currstate s_7_1) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_7_1)) (currstate s_7_0)  (increase (total-cost) 1))
)

(:action sync-activity1_complete-ct16
:precondition (and (currstate t20) (currstate s_5_0) (currstate s_7_1) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_7_1)) (currstate s_7_0) )
)

(:action add-activity1_complete-ct17
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_7_1)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity1_complete-ct17
:precondition (and (currstate t20) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_7_1)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity1_complete-ct18
:precondition (and (currstate s_7_1) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity1_complete-ct18
:precondition (and (currstate t20) (currstate s_7_1) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity1_complete-ct19
:precondition (and (currstate s_5_0) (currstate s_7_1) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity1_complete-ct19
:precondition (and (currstate t20) (currstate s_5_0) (currstate s_7_1) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t20)) (currstate t21) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_7_1)) (currstate s_7_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity20_complete-ct20
:precondition (and (currstate s_2_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct20
:precondition (and (currstate t3) (currstate s_2_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity20_complete-ct20
:precondition (and (currstate t10) (currstate s_2_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity20_complete-ct20
:precondition (and (currstate t19) (currstate s_2_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity20_complete-ct20
:precondition (and (currstate t28) (currstate s_2_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity20_complete-ct20
:precondition (and (currstate t33) (currstate s_2_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity20_complete-ct20
:precondition (and (currstate t40) (currstate s_2_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity20_complete-ct21
:precondition (and (currstate s_3_2) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct21
:precondition (and (currstate t3) (currstate s_3_2) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct21
:precondition (and (currstate t10) (currstate s_3_2) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct21
:precondition (and (currstate t19) (currstate s_3_2) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct21
:precondition (and (currstate t28) (currstate s_3_2) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct21
:precondition (and (currstate t33) (currstate s_3_2) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct21
:precondition (and (currstate t40) (currstate s_3_2) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action add-activity20_complete-ct22
:precondition (and (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct22
:precondition (and (currstate t3) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct22
:precondition (and (currstate t10) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct22
:precondition (and (currstate t19) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct22
:precondition (and (currstate t28) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct22
:precondition (and (currstate t33) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct22
:precondition (and (currstate t40) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity20_complete-ct23
:precondition (and (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_4_0)) (currstate s_4_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct23
:precondition (and (currstate t3) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct23
:precondition (and (currstate t10) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct23
:precondition (and (currstate t19) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct23
:precondition (and (currstate t28) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct23
:precondition (and (currstate t33) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct23
:precondition (and (currstate t40) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action add-activity20_complete-ct24
:precondition (and (currstate s_2_0) (currstate s_3_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct24
:precondition (and (currstate t3) (currstate s_2_0) (currstate s_3_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct24
:precondition (and (currstate t10) (currstate s_2_0) (currstate s_3_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct24
:precondition (and (currstate t19) (currstate s_2_0) (currstate s_3_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct24
:precondition (and (currstate t28) (currstate s_2_0) (currstate s_3_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct24
:precondition (and (currstate t33) (currstate s_2_0) (currstate s_3_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action sync-activity20_complete-ct24
:precondition (and (currstate t40) (currstate s_2_0) (currstate s_3_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) )
)

(:action add-activity20_complete-ct25
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct25
:precondition (and (currstate t3) (currstate s_2_0) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct25
:precondition (and (currstate t10) (currstate s_2_0) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct25
:precondition (and (currstate t19) (currstate s_2_0) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct25
:precondition (and (currstate t28) (currstate s_2_0) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct25
:precondition (and (currstate t33) (currstate s_2_0) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct25
:precondition (and (currstate t40) (currstate s_2_0) (currstate s_5_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity20_complete-ct26
:precondition (and (currstate s_2_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_4_0)) (currstate s_4_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct26
:precondition (and (currstate t3) (currstate s_2_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct26
:precondition (and (currstate t10) (currstate s_2_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct26
:precondition (and (currstate t19) (currstate s_2_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct26
:precondition (and (currstate t28) (currstate s_2_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct26
:precondition (and (currstate t33) (currstate s_2_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct26
:precondition (and (currstate t40) (currstate s_2_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action add-activity20_complete-ct27
:precondition (and (currstate s_3_2) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct27
:precondition (and (currstate t3) (currstate s_3_2) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct27
:precondition (and (currstate t10) (currstate s_3_2) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct27
:precondition (and (currstate t19) (currstate s_3_2) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct27
:precondition (and (currstate t28) (currstate s_3_2) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct27
:precondition (and (currstate t33) (currstate s_3_2) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct27
:precondition (and (currstate t40) (currstate s_3_2) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity20_complete-ct28
:precondition (and (currstate s_3_2) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct28
:precondition (and (currstate t3) (currstate s_3_2) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct28
:precondition (and (currstate t10) (currstate s_3_2) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct28
:precondition (and (currstate t19) (currstate s_3_2) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct28
:precondition (and (currstate t28) (currstate s_3_2) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct28
:precondition (and (currstate t33) (currstate s_3_2) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct28
:precondition (and (currstate t40) (currstate s_3_2) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action add-activity20_complete-ct29
:precondition (and (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct29
:precondition (and (currstate t3) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct29
:precondition (and (currstate t10) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct29
:precondition (and (currstate t19) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct29
:precondition (and (currstate t28) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct29
:precondition (and (currstate t33) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct29
:precondition (and (currstate t40) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action add-activity20_complete-ct30
:precondition (and (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct30
:precondition (and (currstate t3) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct30
:precondition (and (currstate t10) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct30
:precondition (and (currstate t19) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct30
:precondition (and (currstate t28) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct30
:precondition (and (currstate t33) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity20_complete-ct30
:precondition (and (currstate t40) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity20_complete-ct31
:precondition (and (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct31
:precondition (and (currstate t3) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct31
:precondition (and (currstate t10) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct31
:precondition (and (currstate t19) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct31
:precondition (and (currstate t28) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct31
:precondition (and (currstate t33) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct31
:precondition (and (currstate t40) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action add-activity20_complete-ct32
:precondition (and (currstate s_2_0) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct32
:precondition (and (currstate t3) (currstate s_2_0) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct32
:precondition (and (currstate t10) (currstate s_2_0) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct32
:precondition (and (currstate t19) (currstate s_2_0) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct32
:precondition (and (currstate t28) (currstate s_2_0) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct32
:precondition (and (currstate t33) (currstate s_2_0) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct32
:precondition (and (currstate t40) (currstate s_2_0) (currstate s_5_0) (currstate s_4_0) (not (currstate s_3_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action add-activity20_complete-ct33
:precondition (and (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct33
:precondition (and (currstate t3) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct33
:precondition (and (currstate t10) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct33
:precondition (and (currstate t19) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct33
:precondition (and (currstate t28) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct33
:precondition (and (currstate t33) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct33
:precondition (and (currstate t40) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action add-activity20_complete-ct34
:precondition (and (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-ct34
:precondition (and (currstate t3) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct34
:precondition (and (currstate t10) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t10)) (currstate t11) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct34
:precondition (and (currstate t19) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t19)) (currstate t20) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct34
:precondition (and (currstate t28) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t28)) (currstate t29) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct34
:precondition (and (currstate t33) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t33)) (currstate t34) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action sync-activity20_complete-ct34
:precondition (and (currstate t40) (currstate s_2_0) (currstate s_3_2) (currstate s_5_0) (currstate s_4_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t40)) (currstate t41) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_3_2)) (currstate s_3_3) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_4_0)) (currstate s_4_2) )
)

(:action add-activity16_complete-ct35
:precondition (and (currstate s_5_0) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity16_complete-ct35
:precondition (and (currstate t14) (currstate s_5_0) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity16_complete-ct36
:precondition (and (currstate s_2_2) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action sync-activity16_complete-ct36
:precondition (and (currstate t14) (currstate s_2_2) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action add-activity16_complete-ct37
:precondition (and (currstate s_5_0) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_2)) (currstate s_2_0)  (increase (total-cost) 1))
)

(:action sync-activity16_complete-ct37
:precondition (and (currstate t14) (currstate s_5_0) (currstate s_2_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t14)) (currstate t15) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_2)) (currstate s_2_0) )
)

(:action add-activity22_complete-ct38
:precondition (and (currstate s_5_2) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0)  (increase (total-cost) 1))
)

(:action sync-activity22_complete-ct38
:precondition (and (currstate t34) (currstate s_5_2) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t34)) (currstate t35) (not (currstate s_5_2)) (currstate s_5_0) )
)

(:action add-activity22_complete-ct39
:precondition (and (currstate s_2_0) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity22_complete-ct39
:precondition (and (currstate t34) (currstate s_2_0) (not (currstate s_5_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t34)) (currstate t35) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity22_complete-ct40
:precondition (and (currstate s_5_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity22_complete-ct40
:precondition (and (currstate t34) (currstate s_5_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t34)) (currstate t35) (not (currstate s_5_2)) (currstate s_5_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity6_complete-ct41
:precondition (and (currstate s_6_1) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_6_1)) (currstate s_6_0)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct41
:precondition (and (currstate t48) (currstate s_6_1) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_6_1)) (currstate s_6_0) )
)

(:action add-activity6_complete-ct42
:precondition (and (currstate s_5_0) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_6_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct42
:precondition (and (currstate t48) (currstate s_5_0) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_6_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity6_complete-ct43
:precondition (and (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_6_2)) (currstate s_6_0)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct43
:precondition (and (currstate t48) (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_6_2)) (currstate s_6_0) )
)

(:action add-activity6_complete-ct44
:precondition (and (currstate s_2_0) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct44
:precondition (and (currstate t48) (currstate s_2_0) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity6_complete-ct45
:precondition (and (currstate s_6_1) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_6_1)) (currstate s_6_0) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct45
:precondition (and (currstate t48) (currstate s_6_1) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_6_1)) (currstate s_6_0) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity6_complete-ct46
:precondition (and (currstate s_6_1) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_6_1)) (currstate s_6_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct46
:precondition (and (currstate t48) (currstate s_6_1) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_6_1)) (currstate s_6_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity6_complete-ct47
:precondition (and (currstate s_5_0) (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_6_2)) (currstate s_6_0)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct47
:precondition (and (currstate t48) (currstate s_5_0) (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_6_2)) (currstate s_6_0) )
)

(:action add-activity6_complete-ct48
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_6_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct48
:precondition (and (currstate t48) (currstate s_5_0) (currstate s_2_0) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_6_2)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity6_complete-ct49
:precondition (and (currstate s_6_2) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_6_2)) (currstate s_6_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct49
:precondition (and (currstate t48) (currstate s_6_2) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_6_2)) (currstate s_6_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity6_complete-ct50
:precondition (and (currstate s_6_1) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_6_1)) (currstate s_6_0) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct50
:precondition (and (currstate t48) (currstate s_6_1) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_6_1)) (currstate s_6_0) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity6_complete-ct51
:precondition (and (currstate s_5_0) (currstate s_6_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_6_2)) (currstate s_6_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-ct51
:precondition (and (currstate t48) (currstate s_5_0) (currstate s_6_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t48)) (currstate t49) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_6_2)) (currstate s_6_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity5_complete-ct52
:precondition (and (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_6_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity5_complete-ct52
:precondition (and (currstate t35) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_6_2)) )
:effect (and (not (currstate t35)) (currstate t36) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity5_complete-ct53
:precondition (and (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity5_complete-ct53
:precondition (and (currstate t35) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) )
:effect (and (not (currstate t35)) (currstate t36) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity5_complete-ct54
:precondition (and (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_6_2)) (currstate s_6_1)  (increase (total-cost) 1))
)

(:action sync-activity5_complete-ct54
:precondition (and (currstate t35) (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate t35)) (currstate t36) (not (currstate s_6_2)) (currstate s_6_1) )
)

(:action add-activity5_complete-ct55
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_6_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity5_complete-ct55
:precondition (and (currstate t35) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_6_2)) )
:effect (and (not (currstate t35)) (currstate t36) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity5_complete-ct56
:precondition (and (currstate s_5_0) (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_6_2)) (currstate s_6_1)  (increase (total-cost) 1))
)

(:action sync-activity5_complete-ct56
:precondition (and (currstate t35) (currstate s_5_0) (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t35)) (currstate t36) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_6_2)) (currstate s_6_1) )
)

(:action add-activity5_complete-ct57
:precondition (and (currstate s_2_0) (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_6_2)) (currstate s_6_1)  (increase (total-cost) 1))
)

(:action sync-activity5_complete-ct57
:precondition (and (currstate t35) (currstate s_2_0) (currstate s_6_2) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t35)) (currstate t36) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_6_2)) (currstate s_6_1) )
)

(:action add-activity5_complete-ct58
:precondition (and (currstate s_5_0) (currstate s_2_0) (currstate s_6_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_6_2)) (currstate s_6_1)  (increase (total-cost) 1))
)

(:action sync-activity5_complete-ct58
:precondition (and (currstate t35) (currstate s_5_0) (currstate s_2_0) (currstate s_6_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t35)) (currstate t36) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_6_2)) (currstate s_6_1) )
)

(:action add-activity24_complete-ct59
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity24_complete-ct59
:precondition (and (currstate t16) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t16)) (currstate t17) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity24_complete-ct59
:precondition (and (currstate t36) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t36)) (currstate t37) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity24_complete-ct60
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity24_complete-ct60
:precondition (and (currstate t16) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t16)) (currstate t17) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity24_complete-ct60
:precondition (and (currstate t36) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t36)) (currstate t37) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity24_complete-ct61
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity24_complete-ct61
:precondition (and (currstate t16) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t16)) (currstate t17) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity24_complete-ct61
:precondition (and (currstate t36) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t36)) (currstate t37) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity4_complete-ct62
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity4_complete-ct62
:precondition (and (currstate t8) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t8)) (currstate t9) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity4_complete-ct62
:precondition (and (currstate t11) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity4_complete-ct63
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity4_complete-ct63
:precondition (and (currstate t8) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t8)) (currstate t9) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity4_complete-ct63
:precondition (and (currstate t11) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity4_complete-ct64
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity4_complete-ct64
:precondition (and (currstate t8) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t8)) (currstate t9) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity4_complete-ct64
:precondition (and (currstate t11) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t11)) (currstate t12) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity18_complete-ct65
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity18_complete-ct65
:precondition (and (currstate t5) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity18_complete-ct65
:precondition (and (currstate t7) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity18_complete-ct65
:precondition (and (currstate t24) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t24)) (currstate t25) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity18_complete-ct65
:precondition (and (currstate t32) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t32)) (currstate t33) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity18_complete-ct66
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity18_complete-ct66
:precondition (and (currstate t5) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity18_complete-ct66
:precondition (and (currstate t7) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity18_complete-ct66
:precondition (and (currstate t24) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t24)) (currstate t25) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity18_complete-ct66
:precondition (and (currstate t32) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t32)) (currstate t33) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity18_complete-ct67
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity18_complete-ct67
:precondition (and (currstate t5) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t5)) (currstate t6) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity18_complete-ct67
:precondition (and (currstate t7) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t7)) (currstate t8) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity18_complete-ct67
:precondition (and (currstate t24) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t24)) (currstate t25) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity18_complete-ct67
:precondition (and (currstate t32) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t32)) (currstate t33) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity9_complete-ct68
:precondition (and (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_0_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity9_complete-ct68
:precondition (and (currstate t21) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_0_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity9_complete-ct69
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_0_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity9_complete-ct69
:precondition (and (currstate t21) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_0_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity9_complete-ct70
:precondition (and (currstate s_0_2) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_0_2)) (currstate s_0_0)  (increase (total-cost) 1))
)

(:action sync-activity9_complete-ct70
:precondition (and (currstate t21) (currstate s_0_2) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_0_2)) (currstate s_0_0) )
)

(:action add-activity9_complete-ct71
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_0_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity9_complete-ct71
:precondition (and (currstate t21) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_0_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity9_complete-ct72
:precondition (and (currstate s_5_0) (currstate s_0_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_0_2)) (currstate s_0_0)  (increase (total-cost) 1))
)

(:action sync-activity9_complete-ct72
:precondition (and (currstate t21) (currstate s_5_0) (currstate s_0_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_0_2)) (currstate s_0_0) )
)

(:action add-activity9_complete-ct73
:precondition (and (currstate s_2_0) (currstate s_0_2) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_0_2)) (currstate s_0_0)  (increase (total-cost) 1))
)

(:action sync-activity9_complete-ct73
:precondition (and (currstate t21) (currstate s_2_0) (currstate s_0_2) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_0_2)) (currstate s_0_0) )
)

(:action add-activity9_complete-ct74
:precondition (and (currstate s_5_0) (currstate s_2_0) (currstate s_0_2) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_0_2)) (currstate s_0_0)  (increase (total-cost) 1))
)

(:action sync-activity9_complete-ct74
:precondition (and (currstate t21) (currstate s_5_0) (currstate s_2_0) (currstate s_0_2) (not (currstate s_1_2)) )
:effect (and (not (currstate t21)) (currstate t22) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_0_2)) (currstate s_0_0) )
)

(:action add-activity14_complete-ct75
:precondition (and (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_1_0)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity14_complete-ct75
:precondition (and (currstate t43) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_1_0)) (not (currstate s_5_0)) )
:effect (and (not (currstate t43)) (currstate t44) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity14_complete-ct76
:precondition (and (currstate s_1_0) (not (currstate s_2_0)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_1_0)) (currstate s_1_2)  (increase (total-cost) 1))
)

(:action sync-activity14_complete-ct76
:precondition (and (currstate t43) (currstate s_1_0) (not (currstate s_2_0)) (not (currstate s_5_0)) )
:effect (and (not (currstate t43)) (currstate t44) (not (currstate s_1_0)) (currstate s_1_2) )
)

(:action add-activity14_complete-ct77
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_1_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity14_complete-ct77
:precondition (and (currstate t43) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_1_0)) )
:effect (and (not (currstate t43)) (currstate t44) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity14_complete-ct78
:precondition (and (currstate s_2_0) (currstate s_1_0) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_0)) (currstate s_1_2)  (increase (total-cost) 1))
)

(:action sync-activity14_complete-ct78
:precondition (and (currstate t43) (currstate s_2_0) (currstate s_1_0) (not (currstate s_5_0)) )
:effect (and (not (currstate t43)) (currstate t44) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_0)) (currstate s_1_2) )
)

(:action add-activity14_complete-ct79
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_1_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity14_complete-ct79
:precondition (and (currstate t43) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_1_0)) )
:effect (and (not (currstate t43)) (currstate t44) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity14_complete-ct80
:precondition (and (currstate s_1_0) (currstate s_5_0) (not (currstate s_2_0)) )
:effect (and (not (currstate s_1_0)) (currstate s_1_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity14_complete-ct80
:precondition (and (currstate t43) (currstate s_1_0) (currstate s_5_0) (not (currstate s_2_0)) )
:effect (and (not (currstate t43)) (currstate t44) (not (currstate s_1_0)) (currstate s_1_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity14_complete-ct81
:precondition (and (currstate s_2_0) (currstate s_1_0) (currstate s_5_0) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_0)) (currstate s_1_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity14_complete-ct81
:precondition (and (currstate t43) (currstate s_2_0) (currstate s_1_0) (currstate s_5_0) )
:effect (and (not (currstate t43)) (currstate t44) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_1_0)) (currstate s_1_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity17_complete-ct82
:precondition (and (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_2_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action add-activity17_complete-ct83
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity17_complete-ct84
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity25_complete-ct85
:precondition (and (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity25_complete-ct85
:precondition (and (currstate t25) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t25)) (currstate t26) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity25_complete-ct85
:precondition (and (currstate t30) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t30)) (currstate t31) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity25_complete-ct86
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity25_complete-ct86
:precondition (and (currstate t25) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t25)) (currstate t26) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity25_complete-ct86
:precondition (and (currstate t30) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t30)) (currstate t31) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity25_complete-ct87
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity25_complete-ct87
:precondition (and (currstate t25) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t25)) (currstate t26) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity25_complete-ct87
:precondition (and (currstate t30) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t30)) (currstate t31) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity8_complete-ct88
:precondition (and (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity8_complete-ct88
:precondition (and (currstate t12) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity8_complete-ct88
:precondition (and (currstate t31) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t31)) (currstate t32) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity8_complete-ct88
:precondition (and (currstate t41) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t41)) (currstate t42) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity8_complete-ct89
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity8_complete-ct89
:precondition (and (currstate t12) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity8_complete-ct89
:precondition (and (currstate t31) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t31)) (currstate t32) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity8_complete-ct89
:precondition (and (currstate t41) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t41)) (currstate t42) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity8_complete-ct90
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity8_complete-ct90
:precondition (and (currstate t12) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t12)) (currstate t13) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity8_complete-ct90
:precondition (and (currstate t31) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t31)) (currstate t32) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity8_complete-ct90
:precondition (and (currstate t41) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t41)) (currstate t42) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity13_complete-ct91
:precondition (and (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-ct91
:precondition (and (currstate t1) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t1)) (currstate t2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity13_complete-ct91
:precondition (and (currstate t15) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t15)) (currstate t16) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity13_complete-ct91
:precondition (and (currstate t22) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t22)) (currstate t23) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity13_complete-ct91
:precondition (and (currstate t23) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t23)) (currstate t24) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity13_complete-ct91
:precondition (and (currstate t27) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t27)) (currstate t28) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity13_complete-ct91
:precondition (and (currstate t29) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t29)) (currstate t30) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity13_complete-ct91
:precondition (and (currstate t37) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t37)) (currstate t38) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity13_complete-ct91
:precondition (and (currstate t47) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t47)) (currstate t48) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity13_complete-ct92
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-ct92
:precondition (and (currstate t1) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t1)) (currstate t2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct92
:precondition (and (currstate t15) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t15)) (currstate t16) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct92
:precondition (and (currstate t22) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t22)) (currstate t23) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct92
:precondition (and (currstate t23) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t23)) (currstate t24) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct92
:precondition (and (currstate t27) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t27)) (currstate t28) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct92
:precondition (and (currstate t29) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t29)) (currstate t30) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct92
:precondition (and (currstate t37) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t37)) (currstate t38) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct92
:precondition (and (currstate t47) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t47)) (currstate t48) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity13_complete-ct93
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-ct93
:precondition (and (currstate t1) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t1)) (currstate t2) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct93
:precondition (and (currstate t15) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t15)) (currstate t16) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct93
:precondition (and (currstate t22) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t22)) (currstate t23) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct93
:precondition (and (currstate t23) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t23)) (currstate t24) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct93
:precondition (and (currstate t27) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t27)) (currstate t28) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct93
:precondition (and (currstate t29) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t29)) (currstate t30) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct93
:precondition (and (currstate t37) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t37)) (currstate t38) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity13_complete-ct93
:precondition (and (currstate t47) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t47)) (currstate t48) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity23_complete-ct94
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity23_complete-ct94
:precondition (and (currstate t13) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t13)) (currstate t14) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity23_complete-ct94
:precondition (and (currstate t38) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t38)) (currstate t39) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity19_complete-ct95
:precondition (and (currstate s_5_0) (not (currstate s_3_3)) (not (currstate s_3_2)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action add-activity19_complete-ct96
:precondition (and (currstate s_3_2) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_0)  (increase (total-cost) 1))
)

(:action add-activity19_complete-ct97
:precondition (and (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_3_3)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity19_complete-ct98
:precondition (and (currstate s_5_0) (currstate s_3_2) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_3_2)) (currstate s_3_0)  (increase (total-cost) 1))
)

(:action add-activity19_complete-ct99
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_3_3)) (not (currstate s_3_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity19_complete-ct100
:precondition (and (currstate s_3_2) (currstate s_2_0) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_3_2)) (currstate s_3_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity19_complete-ct101
:precondition (and (currstate s_5_0) (currstate s_3_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_3_2)) (currstate s_3_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action add-activity21_complete-ct102
:precondition (and (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity21_complete-ct102
:precondition (and (currstate t0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity21_complete-ct102
:precondition (and (currstate t2) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity21_complete-ct102
:precondition (and (currstate t49) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate t49)) (currstate t50) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity21_complete-ct103
:precondition (and (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity21_complete-ct103
:precondition (and (currstate t0) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity21_complete-ct103
:precondition (and (currstate t2) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity21_complete-ct103
:precondition (and (currstate t49) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate t49)) (currstate t50) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity21_complete-ct104
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity21_complete-ct104
:precondition (and (currstate t0) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_2)) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity21_complete-ct104
:precondition (and (currstate t2) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_2)) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action sync-activity21_complete-ct104
:precondition (and (currstate t49) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_4_2)) )
:effect (and (not (currstate t49)) (currstate t50) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity11_complete-ct105
:precondition (and (currstate s_8_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_8_0)) (currstate s_8_1)  (increase (total-cost) 1))
)

(:action sync-activity11_complete-ct105
:precondition (and (currstate t9) (currstate s_8_0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_5_0)) )
:effect (and (not (currstate t9)) (currstate t10) (not (currstate s_8_0)) (currstate s_8_1) )
)

(:action add-activity11_complete-ct106
:precondition (and (currstate s_2_0) (not (currstate s_8_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity11_complete-ct106
:precondition (and (currstate t9) (currstate s_2_0) (not (currstate s_8_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t9)) (currstate t10) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity11_complete-ct107
:precondition (and (currstate s_5_0) (not (currstate s_8_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity11_complete-ct107
:precondition (and (currstate t9) (currstate s_5_0) (not (currstate s_8_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t9)) (currstate t10) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity11_complete-ct108
:precondition (and (currstate s_8_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity11_complete-ct108
:precondition (and (currstate t9) (currstate s_8_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t9)) (currstate t10) (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity11_complete-ct109
:precondition (and (currstate s_8_0) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity11_complete-ct109
:precondition (and (currstate t9) (currstate s_8_0) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t9)) (currstate t10) (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity11_complete-ct110
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_8_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity11_complete-ct110
:precondition (and (currstate t9) (currstate s_2_0) (currstate s_5_0) (not (currstate s_8_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t9)) (currstate t10) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity11_complete-ct111
:precondition (and (currstate s_8_0) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity11_complete-ct111
:precondition (and (currstate t9) (currstate s_8_0) (currstate s_2_0) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t9)) (currstate t10) (not (currstate s_8_0)) (currstate s_8_1) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity12_complete-ct112
:precondition (and (currstate s_2_0) (not (currstate s_8_1)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity12_complete-ct112
:precondition (and (currstate t6) (currstate s_2_0) (not (currstate s_8_1)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity12_complete-ct113
:precondition (and (currstate s_8_1) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action sync-activity12_complete-ct113
:precondition (and (currstate t6) (currstate s_8_1) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action add-activity12_complete-ct114
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_8_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity12_complete-ct114
:precondition (and (currstate t6) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_8_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity12_complete-ct115
:precondition (and (currstate s_2_0) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_8_1)) (currstate s_8_0)  (increase (total-cost) 1))
)

(:action sync-activity12_complete-ct115
:precondition (and (currstate t6) (currstate s_2_0) (currstate s_8_1) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_8_1)) (currstate s_8_0) )
)

(:action add-activity12_complete-ct116
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_8_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity12_complete-ct116
:precondition (and (currstate t6) (currstate s_2_0) (currstate s_5_0) (not (currstate s_8_1)) (not (currstate s_1_2)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity12_complete-ct117
:precondition (and (currstate s_8_1) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_8_1)) (currstate s_8_0) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity12_complete-ct117
:precondition (and (currstate t6) (currstate s_8_1) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_8_1)) (currstate s_8_0) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity12_complete-ct118
:precondition (and (currstate s_2_0) (currstate s_8_1) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_8_1)) (currstate s_8_0) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity12_complete-ct118
:precondition (and (currstate t6) (currstate s_2_0) (currstate s_8_1) (currstate s_5_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t6)) (currstate t7) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_8_1)) (currstate s_8_0) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity10_complete-ct119
:precondition (and (currstate s_2_0) (not (currstate s_0_2)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity10_complete-ct119
:precondition (and (currstate t46) (currstate s_2_0) (not (currstate s_0_2)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t46)) (currstate t47) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity10_complete-ct120
:precondition (and (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_0_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity10_complete-ct120
:precondition (and (currstate t46) (currstate s_5_0) (not (currstate s_2_0)) (not (currstate s_0_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t46)) (currstate t47) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity10_complete-ct121
:precondition (and (currstate s_2_0) (currstate s_5_0) (not (currstate s_0_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity10_complete-ct121
:precondition (and (currstate t46) (currstate s_2_0) (currstate s_5_0) (not (currstate s_0_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t46)) (currstate t47) (not (currstate s_2_0)) (currstate s_2_2) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity2_complete-ct122
:precondition (and (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2)  (increase (total-cost) 1))
)

(:action sync-activity2_complete-ct122
:precondition (and (currstate t4) (currstate s_5_0) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t4)) (currstate t5) (not (currstate s_5_0)) (currstate s_5_2) )
)

(:action add-activity2_complete-ct123
:precondition (and (currstate s_9_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_9_2)) (currstate s_9_0)  (increase (total-cost) 1))
)

(:action sync-activity2_complete-ct123
:precondition (and (currstate t4) (currstate s_9_2) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_2_0)) )
:effect (and (not (currstate t4)) (currstate t5) (not (currstate s_9_2)) (currstate s_9_0) )
)

(:action add-activity2_complete-ct124
:precondition (and (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_5_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity2_complete-ct124
:precondition (and (currstate t4) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_5_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t4)) (currstate t5) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity2_complete-ct125
:precondition (and (currstate s_5_0) (currstate s_9_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_9_2)) (currstate s_9_0)  (increase (total-cost) 1))
)

(:action sync-activity2_complete-ct125
:precondition (and (currstate t4) (currstate s_5_0) (currstate s_9_2) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t4)) (currstate t5) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_9_2)) (currstate s_9_0) )
)

(:action add-activity2_complete-ct126
:precondition (and (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity2_complete-ct126
:precondition (and (currstate t4) (currstate s_5_0) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_9_2)) )
:effect (and (not (currstate t4)) (currstate t5) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity2_complete-ct127
:precondition (and (currstate s_9_2) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate s_9_2)) (currstate s_9_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity2_complete-ct127
:precondition (and (currstate t4) (currstate s_9_2) (currstate s_2_0) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t4)) (currstate t5) (not (currstate s_9_2)) (currstate s_9_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action add-activity2_complete-ct128
:precondition (and (currstate s_5_0) (currstate s_9_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_9_2)) (currstate s_9_0) (not (currstate s_2_0)) (currstate s_2_2)  (increase (total-cost) 1))
)

(:action sync-activity2_complete-ct128
:precondition (and (currstate t4) (currstate s_5_0) (currstate s_9_2) (currstate s_2_0) (not (currstate s_1_2)) )
:effect (and (not (currstate t4)) (currstate t5) (not (currstate s_5_0)) (currstate s_5_2) (not (currstate s_9_2)) (currstate s_9_0) (not (currstate s_2_0)) (currstate s_2_2) )
)

(:action sync-activity21_complete-t0t1
:precondition (and (currstate t0) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate t0)) (currstate t1)))

(:action del-activity21_complete-t0-t1
:precondition (currstate t0)
:effect (and (not (currstate t0)) (currstate t1)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-t1t2
:precondition (and (currstate t1) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t1)) (currstate t2)))

(:action del-activity13_complete-t1-t2
:precondition (currstate t1)
:effect (and (not (currstate t1)) (currstate t2)  (increase (total-cost) 1))
)

(:action sync-activity21_complete-t2t3
:precondition (and (currstate t2) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate t2)) (currstate t3)))

(:action del-activity21_complete-t2-t3
:precondition (currstate t2)
:effect (and (not (currstate t2)) (currstate t3)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-t3t4
:precondition (and (currstate t3) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t3)) (currstate t4)))

(:action del-activity20_complete-t3-t4
:precondition (currstate t3)
:effect (and (not (currstate t3)) (currstate t4)  (increase (total-cost) 1))
)

(:action sync-activity2_complete-t4t5
:precondition (and (currstate t4) (not (currstate s_1_2)) (not (currstate s_9_0)) (not (currstate s_5_0)) (not (currstate s_9_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t4)) (currstate t5)))

(:action del-activity2_complete-t4-t5
:precondition (currstate t4)
:effect (and (not (currstate t4)) (currstate t5)  (increase (total-cost) 1))
)

(:action sync-activity18_complete-t5t6
:precondition (and (currstate t5) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t5)) (currstate t6)))

(:action del-activity18_complete-t5-t6
:precondition (currstate t5)
:effect (and (not (currstate t5)) (currstate t6)  (increase (total-cost) 1))
)

(:action sync-activity12_complete-t6t7
:precondition (and (currstate t6) (not (currstate s_2_0)) (not (currstate s_8_1)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t6)) (currstate t7)))

(:action del-activity12_complete-t6-t7
:precondition (currstate t6)
:effect (and (not (currstate t6)) (currstate t7)  (increase (total-cost) 1))
)

(:action sync-activity18_complete-t7t8
:precondition (and (currstate t7) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t7)) (currstate t8)))

(:action del-activity18_complete-t7-t8
:precondition (currstate t7)
:effect (and (not (currstate t7)) (currstate t8)  (increase (total-cost) 1))
)

(:action sync-activity4_complete-t8t9
:precondition (and (currstate t8) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t8)) (currstate t9)))

(:action del-activity4_complete-t8-t9
:precondition (currstate t8)
:effect (and (not (currstate t8)) (currstate t9)  (increase (total-cost) 1))
)

(:action sync-activity11_complete-t9t10
:precondition (and (currstate t9) (not (currstate s_8_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_5_0)) )
:effect (and (not (currstate t9)) (currstate t10)))

(:action del-activity11_complete-t9-t10
:precondition (currstate t9)
:effect (and (not (currstate t9)) (currstate t10)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-t10t11
:precondition (and (currstate t10) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t10)) (currstate t11)))

(:action del-activity20_complete-t10-t11
:precondition (currstate t10)
:effect (and (not (currstate t10)) (currstate t11)  (increase (total-cost) 1))
)

(:action sync-activity4_complete-t11t12
:precondition (and (currstate t11) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t11)) (currstate t12)))

(:action del-activity4_complete-t11-t12
:precondition (currstate t11)
:effect (and (not (currstate t11)) (currstate t12)  (increase (total-cost) 1))
)

(:action sync-activity8_complete-t12t13
:precondition (and (currstate t12) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t12)) (currstate t13)))

(:action del-activity8_complete-t12-t13
:precondition (currstate t12)
:effect (and (not (currstate t12)) (currstate t13)  (increase (total-cost) 1))
)

(:action sync-activity23_complete-t13t14
:precondition (and (currstate t13) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t13)) (currstate t14)))

(:action del-activity23_complete-t13-t14
:precondition (currstate t13)
:effect (and (not (currstate t13)) (currstate t14)  (increase (total-cost) 1))
)

(:action sync-activity16_complete-t14t15
:precondition (and (currstate t14) (not (currstate s_5_0)) (not (currstate s_2_2)) (not (currstate s_1_2)) )
:effect (and (not (currstate t14)) (currstate t15)))

(:action del-activity16_complete-t14-t15
:precondition (currstate t14)
:effect (and (not (currstate t14)) (currstate t15)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-t15t16
:precondition (and (currstate t15) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t15)) (currstate t16)))

(:action del-activity13_complete-t15-t16
:precondition (currstate t15)
:effect (and (not (currstate t15)) (currstate t16)  (increase (total-cost) 1))
)

(:action sync-activity24_complete-t16t17
:precondition (and (currstate t16) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t16)) (currstate t17)))

(:action del-activity24_complete-t16-t17
:precondition (currstate t16)
:effect (and (not (currstate t16)) (currstate t17)  (increase (total-cost) 1))
)

(:action sync-activity3_complete-t17t18
:precondition (and (currstate t17) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t17)) (currstate t18)))

(:action del-activity3_complete-t17-t18
:precondition (currstate t17)
:effect (and (not (currstate t17)) (currstate t18)  (increase (total-cost) 1))
)

(:action sync-activity7_complete-t18t19
:precondition (and (currstate t18) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t18)) (currstate t19)))

(:action del-activity7_complete-t18-t19
:precondition (currstate t18)
:effect (and (not (currstate t18)) (currstate t19)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-t19t20
:precondition (and (currstate t19) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t19)) (currstate t20)))

(:action del-activity20_complete-t19-t20
:precondition (currstate t19)
:effect (and (not (currstate t19)) (currstate t20)  (increase (total-cost) 1))
)

(:action sync-activity1_complete-t20t21
:precondition (and (currstate t20) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_7_1)) (not (currstate s_2_0)) )
:effect (and (not (currstate t20)) (currstate t21)))

(:action del-activity1_complete-t20-t21
:precondition (currstate t20)
:effect (and (not (currstate t20)) (currstate t21)  (increase (total-cost) 1))
)

(:action sync-activity9_complete-t21t22
:precondition (and (currstate t21) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_0_2)) )
:effect (and (not (currstate t21)) (currstate t22)))

(:action del-activity9_complete-t21-t22
:precondition (currstate t21)
:effect (and (not (currstate t21)) (currstate t22)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-t22t23
:precondition (and (currstate t22) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t22)) (currstate t23)))

(:action del-activity13_complete-t22-t23
:precondition (currstate t22)
:effect (and (not (currstate t22)) (currstate t23)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-t23t24
:precondition (and (currstate t23) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t23)) (currstate t24)))

(:action del-activity13_complete-t23-t24
:precondition (currstate t23)
:effect (and (not (currstate t23)) (currstate t24)  (increase (total-cost) 1))
)

(:action sync-activity18_complete-t24t25
:precondition (and (currstate t24) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t24)) (currstate t25)))

(:action del-activity18_complete-t24-t25
:precondition (currstate t24)
:effect (and (not (currstate t24)) (currstate t25)  (increase (total-cost) 1))
)

(:action sync-activity25_complete-t25t26
:precondition (and (currstate t25) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t25)) (currstate t26)))

(:action del-activity25_complete-t25-t26
:precondition (currstate t25)
:effect (and (not (currstate t25)) (currstate t26)  (increase (total-cost) 1))
)

(:action sync-activity7_complete-t26t27
:precondition (and (currstate t26) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t26)) (currstate t27)))

(:action del-activity7_complete-t26-t27
:precondition (currstate t26)
:effect (and (not (currstate t26)) (currstate t27)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-t27t28
:precondition (and (currstate t27) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t27)) (currstate t28)))

(:action del-activity13_complete-t27-t28
:precondition (currstate t27)
:effect (and (not (currstate t27)) (currstate t28)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-t28t29
:precondition (and (currstate t28) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t28)) (currstate t29)))

(:action del-activity20_complete-t28-t29
:precondition (currstate t28)
:effect (and (not (currstate t28)) (currstate t29)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-t29t30
:precondition (and (currstate t29) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t29)) (currstate t30)))

(:action del-activity13_complete-t29-t30
:precondition (currstate t29)
:effect (and (not (currstate t29)) (currstate t30)  (increase (total-cost) 1))
)

(:action sync-activity25_complete-t30t31
:precondition (and (currstate t30) (not (currstate s_5_0)) (not (currstate s_1_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t30)) (currstate t31)))

(:action del-activity25_complete-t30-t31
:precondition (currstate t30)
:effect (and (not (currstate t30)) (currstate t31)  (increase (total-cost) 1))
)

(:action sync-activity8_complete-t31t32
:precondition (and (currstate t31) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t31)) (currstate t32)))

(:action del-activity8_complete-t31-t32
:precondition (currstate t31)
:effect (and (not (currstate t31)) (currstate t32)  (increase (total-cost) 1))
)

(:action sync-activity18_complete-t32t33
:precondition (and (currstate t32) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t32)) (currstate t33)))

(:action del-activity18_complete-t32-t33
:precondition (currstate t32)
:effect (and (not (currstate t32)) (currstate t33)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-t33t34
:precondition (and (currstate t33) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t33)) (currstate t34)))

(:action del-activity20_complete-t33-t34
:precondition (currstate t33)
:effect (and (not (currstate t33)) (currstate t34)  (increase (total-cost) 1))
)

(:action sync-activity22_complete-t34t35
:precondition (and (currstate t34) (not (currstate s_5_2)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t34)) (currstate t35)))

(:action del-activity22_complete-t34-t35
:precondition (currstate t34)
:effect (and (not (currstate t34)) (currstate t35)  (increase (total-cost) 1))
)

(:action sync-activity5_complete-t35t36
:precondition (and (currstate t35) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_6_2)) )
:effect (and (not (currstate t35)) (currstate t36)))

(:action del-activity5_complete-t35-t36
:precondition (currstate t35)
:effect (and (not (currstate t35)) (currstate t36)  (increase (total-cost) 1))
)

(:action sync-activity24_complete-t36t37
:precondition (and (currstate t36) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t36)) (currstate t37)))

(:action del-activity24_complete-t36-t37
:precondition (currstate t36)
:effect (and (not (currstate t36)) (currstate t37)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-t37t38
:precondition (and (currstate t37) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t37)) (currstate t38)))

(:action del-activity13_complete-t37-t38
:precondition (currstate t37)
:effect (and (not (currstate t37)) (currstate t38)  (increase (total-cost) 1))
)

(:action sync-activity23_complete-t38t39
:precondition (and (currstate t38) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t38)) (currstate t39)))

(:action del-activity23_complete-t38-t39
:precondition (currstate t38)
:effect (and (not (currstate t38)) (currstate t39)  (increase (total-cost) 1))
)

(:action sync-activity3_complete-t39t40
:precondition (and (currstate t39) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t39)) (currstate t40)))

(:action del-activity3_complete-t39-t40
:precondition (currstate t39)
:effect (and (not (currstate t39)) (currstate t40)  (increase (total-cost) 1))
)

(:action sync-activity20_complete-t40t41
:precondition (and (currstate t40) (not (currstate s_3_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_4_0)) )
:effect (and (not (currstate t40)) (currstate t41)))

(:action del-activity20_complete-t40-t41
:precondition (currstate t40)
:effect (and (not (currstate t40)) (currstate t41)  (increase (total-cost) 1))
)

(:action sync-activity8_complete-t41t42
:precondition (and (currstate t41) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t41)) (currstate t42)))

(:action del-activity8_complete-t41-t42
:precondition (currstate t41)
:effect (and (not (currstate t41)) (currstate t42)  (increase (total-cost) 1))
)

(:action sync-activity15_complete-t42t43
:precondition (and (currstate t42) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t42)) (currstate t43)))

(:action del-activity15_complete-t42-t43
:precondition (currstate t42)
:effect (and (not (currstate t42)) (currstate t43)  (increase (total-cost) 1))
)

(:action sync-activity14_complete-t43t44
:precondition (and (currstate t43) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_1_0)) (not (currstate s_5_0)) )
:effect (and (not (currstate t43)) (currstate t44)))

(:action del-activity14_complete-t43-t44
:precondition (currstate t43)
:effect (and (not (currstate t43)) (currstate t44)  (increase (total-cost) 1))
)

(:action sync-activity15_complete-t44t45
:precondition (and (currstate t44) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t44)) (currstate t45)))

(:action del-activity15_complete-t44-t45
:precondition (currstate t44)
:effect (and (not (currstate t44)) (currstate t45)  (increase (total-cost) 1))
)

(:action sync-activity7_complete-t45t46
:precondition (and (currstate t45) (not (currstate s_5_0)) (not (currstate s_2_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t45)) (currstate t46)))

(:action del-activity7_complete-t45-t46
:precondition (currstate t45)
:effect (and (not (currstate t45)) (currstate t46)  (increase (total-cost) 1))
)

(:action sync-activity10_complete-t46t47
:precondition (and (currstate t46) (not (currstate s_2_0)) (not (currstate s_0_2)) (not (currstate s_5_0)) (not (currstate s_1_2)) )
:effect (and (not (currstate t46)) (currstate t47)))

(:action del-activity10_complete-t46-t47
:precondition (currstate t46)
:effect (and (not (currstate t46)) (currstate t47)  (increase (total-cost) 1))
)

(:action sync-activity13_complete-t47t48
:precondition (and (currstate t47) (not (currstate s_2_0)) (not (currstate s_1_2)) (not (currstate s_5_0)) )
:effect (and (not (currstate t47)) (currstate t48)))

(:action del-activity13_complete-t47-t48
:precondition (currstate t47)
:effect (and (not (currstate t47)) (currstate t48)  (increase (total-cost) 1))
)

(:action sync-activity6_complete-t48t49
:precondition (and (currstate t48) (not (currstate s_6_1)) (not (currstate s_1_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t48)) (currstate t49)))

(:action del-activity6_complete-t48-t49
:precondition (currstate t48)
:effect (and (not (currstate t48)) (currstate t49)  (increase (total-cost) 1))
)

(:action sync-activity21_complete-t49t50
:precondition (and (currstate t49) (not (currstate s_1_2)) (not (currstate s_2_0)) (not (currstate s_5_0)) (not (currstate s_4_2)) )
:effect (and (not (currstate t49)) (currstate t50)))

(:action del-activity21_complete-t49-t50
:precondition (currstate t49)
:effect (and (not (currstate t49)) (currstate t50)  (increase (total-cost) 1))
)

(:action goto-abstract_states-cs0
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs1
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs2
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs3
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs4
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs5
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs6
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs7
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs8
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs9
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs10
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs11
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs12
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs13
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs14
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs15
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs16
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs17
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs18
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs19
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs20
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs21
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs22
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs23
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs24
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs25
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs26
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs27
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs28
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs29
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs30
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs31
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs32
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs33
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs34
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs35
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs36
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs37
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs38
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs39
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs40
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs41
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs42
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs43
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs44
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs45
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs46
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs47
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs48
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs49
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs50
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs51
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs52
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs53
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs54
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs55
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs56
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs57
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs58
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs59
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs60
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs61
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs62
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs63
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs64
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs65
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs66
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs67
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs68
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs69
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs70
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs71
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs72
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs73
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs74
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs75
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs76
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs77
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs78
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs79
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs80
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs81
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs82
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs83
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs84
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs85
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs86
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs87
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs88
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs89
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs90
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs91
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs92
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs93
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs94
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs95
:precondition (and (currstate t50) (currstate s_0_2) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_2)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs96
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs97
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs98
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs99
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs100
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs101
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs102
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs103
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs104
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs105
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs106
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs107
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs108
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs109
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs110
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs111
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs112
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs113
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs114
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs115
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs116
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs117
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs118
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs119
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs120
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs121
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs122
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs123
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs124
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs125
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs126
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs127
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs128
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs129
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs130
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs131
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs132
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs133
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs134
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs135
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs136
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs137
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs138
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs139
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs140
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs141
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs142
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs143
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_2) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_2)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs144
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs145
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs146
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs147
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs148
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs149
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs150
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs151
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs152
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs153
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs154
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs155
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs156
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs157
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs158
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs159
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_2) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_2)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs160
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs161
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs162
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs163
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs164
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs165
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs166
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs167
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs168
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs169
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs170
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs171
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs172
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs173
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs174
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs175
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_3) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_3)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs176
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs177
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs178
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs179
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs180
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs181
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs182
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs183
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_0) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_0)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs184
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs185
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs186
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs187
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_2) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_2)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs188
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs189
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_2) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_2)) (not (currstate s_9_0)) )
)

(:action goto-abstract_states-cs190
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_2) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_2)) )
)

(:action goto-abstract_states-cs191
:precondition (and (currstate t50) (currstate s_0_0) (currstate s_1_0) (currstate s_2_0) (currstate s_3_0) (currstate s_4_2) (currstate s_5_0) (currstate s_6_0) (currstate s_7_0) (currstate s_8_0) (currstate s_9_0) )
:effect (and (currstate s_0_abstract) (currstate s_2_abstract) (currstate s_3_abstract) (currstate s_4_abstract) (currstate s_5_abstract) (currstate s_6_abstract) (currstate s_9_abstract) (not (currstate s_0_0)) (not (currstate s_2_0)) (not (currstate s_3_0)) (not (currstate s_4_2)) (not (currstate s_5_0)) (not (currstate s_6_0)) (not (currstate s_9_0)) )
)

)