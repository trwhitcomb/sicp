; Structure and Interpretation of Computer Programs
; Problem 2.32
; T. R. Whitcomb, 04DEC2008

; Why does this work?
; The only subset of an empty set is an empty set
; All subsets of a set containing (element list) is just
; the union of (subsets list) and (element (subsets list))

(define (subsets s)
  (if (null? s)
      (list '())
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (l) 
                            (cons (car s) l)) 
                          rest)))))


(subsets (list 1 2 3))
