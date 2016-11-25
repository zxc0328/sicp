(define (even? n)
  (= (remainder n 2) 0))

(define (halve n)
  (/ n 2))

(define (double n)
  (* n 2))

(define (mul-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (mul-iter (double b) (halve n) a))
        (else (mul-iter b (- n 1) (+ a b)))))

(define (mul a b)
  (mul-iter a b 0))
