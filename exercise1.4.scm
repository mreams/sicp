;Observe that our model of evaluation allows for combinations whose operators are compound expressions. 
;Use this observation to describe the behavior of the following procedure:

;(define (a-plus-abs-b a b)
;  ((if (> b 0) + -) a b))

;As a java developer, this procedure makes my brain hurt. We have an if returning an operant, WTF? But 
;once you wrap your head around that, it's pretty straightforward. If b is less than 0 we substract if 
;from a which actually adds the absolute value of b to a. If b is greater than 0 we just add its value
;to a, so no matter whether b is positive or negative we add its absolute value to a.