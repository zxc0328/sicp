(define (last-pair items)
  (if (null? (cdr items))
    (list (car items))
    (last-pair (cdr items))))


