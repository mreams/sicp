;this is basically exercise 1.5 in different words. in an applicative order interpreter, both sides of the 'if' get evaluated. This is a problem
;because the sqrt-iter function relies on the regular if's ability to short-circuit evaluation when it hits an expression that evaluates to true.
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;and CRASH. this never returns because new-if forces the interpreter to evaluate both sides of the if, so scm will freak out if you run this file.
(display (sqrt-iter 1 2))                             