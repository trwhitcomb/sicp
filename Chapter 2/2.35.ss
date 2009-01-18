; Structure and Interpretation of Computer Programs
; Problem 2.35
; T. R. Whitcomb, 19DEC2008

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (accumulate +
              0
              (map (lambda (x) 
                     (if (pair? x) 
                                   (count-leaves x)
                                   1))
                   t)))
