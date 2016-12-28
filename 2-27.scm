(define (deep-reverse items)
  (cond ((null? items) ())
        ((pair? (car items))
         (append (deep-reverse (cdr items))
                 (list (deep-reverse (car items)))))
        (else 
          (append (deep-reverse (cdr items))
                  (list (car items))))))
