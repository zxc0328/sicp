;;iterative
;; a = f(n-1) b = f(n-2) c = f(n-3)
(define (f n)
    (define (fi a b c n)
      (if (< n 3)
        a
        (fi (+ a (* 2 b) (* 3 c)) a b (- n 1))))
    (if (< n 3)
      n
      (fi 2 1 0 n)))
