(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))


;; a*b^n is unchanged from state to state
(define (expt-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (expt-iter (square b) (/ n 2) a))
        (else (expt-iter b (- n 1) (* a b)))))

(define (fast-expt b n)
  (expt-iter b n 1))

(define (expt b n)
  (if (= n 0)
    1
    (* b (expt b (- n 1)))))

;; (expt b 100000) will throw a maximum recursion depth exceeded error
;; but (fast-expt b 100000) works fine, because it uses iteration rather 
;; than recursion
;; and fast-expt should be faster in benchmark test beacuse its O(logn) growth
