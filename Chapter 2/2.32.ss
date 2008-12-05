; Structure and Interpretation of Computer Programs
; Problem 2.32
; T. R. Whitcomb, 04DEC2008

(define (subset-map l)
  (if (null? l)
      '()
      (if (pair? (car l))
          (subsets l)
          (list l))))

(define (subsets s)
  (if (null? s)
      (list '())
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (l) 
                            (cons (car s) l)) 
                          rest)))))


(subsets (list 1 2 3))
