;Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (square x) 
	(* x x))

(define (max a b)
	(if (> a b) a b))

;we need both max and min functions because the min of a & b might still be greater than c
(define (min a b)
	(if (> a b) b a))

(define (sum-sqrs a b c)
	;with only 3 numbers at least 1 of any 2 must be 1 of the 2 largest
	(+ (square (max a b)) (square (max (min a b) c))))

(display (sum-sqrs 3 4 5))
(newline)


