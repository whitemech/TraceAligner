(define (problem Align) (:domain Mining)
(:objects
t0 - state
t1 - state
t2 - state
t3 - state
t4 - state
t5 - state
t6 - state
t7 - state
t8 - state
t9 - state
t10 - state
t11 - state
t12 - state
t13 - state
t14 - state
t15 - state
t16 - state
t17 - state
t18 - state
t19 - state
t20 - state
t21 - state
s_0_2 - state
s_0_0 - state
s_0_abstract - state
s_1_0 - state
s_1_2 - state
s_2_2 - state
s_2_0 - state
s_2_abstract - state
s_3_2 - state
s_3_3 - state
s_3_0 - state
s_3_abstract - state
s_4_0 - state
s_4_2 - state
s_4_abstract - state
s_5_2 - state
s_5_0 - state
s_5_abstract - state
s_6_2 - state
s_6_1 - state
s_6_0 - state
s_6_abstract - state
s_7_1 - state
s_7_0 - state
s_8_0 - state
s_8_1 - state
s_9_2 - state
s_9_0 - state
s_9_abstract - state
)
(:init
(currstate t0)
(currstate s_0_2)
(currstate s_1_0)
(currstate s_2_2)
(currstate s_3_2)
(currstate s_4_0)
(currstate s_5_2)
(currstate s_6_2)
(currstate s_7_1)
(currstate s_8_0)
(currstate s_9_2)
(= (total-cost) 0)
)
(:goal
(and
(currstate t21)
(currstate s_0_abstract)
(currstate s_1_0)
(currstate s_2_abstract)
(currstate s_3_abstract)
(currstate s_4_abstract)
(currstate s_5_abstract)
(currstate s_6_abstract)
(currstate s_7_0)
(currstate s_8_0)
(currstate s_9_abstract)
))
(:metric minimize (total-cost))
)