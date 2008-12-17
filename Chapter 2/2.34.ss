; Structure and Interpretation of Computer Programs
; Problem 2.34
; T. R. Whitcomb, 16DEC2008

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

; Evaluate given a_n
; (...(a_n*x + a_{n-1})*x + ... + a_1)*x + a_0
(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms) (+ this-coeff 
                                                   (* x higher-terms)))
              0
              coefficient-sequence))
                
; Test - should be 79
(horner-eval 2 (list 1 3 0 5 0 1))