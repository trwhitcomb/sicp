; Structure and Interpretation of Computer Programs
; Problem 2.35
; T. R. Whitcomb, 16DEC2008

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

; Redefine count-leaves as an accumulation
; (define (count-leaves x)
;   (cond ((null? x) 0)
;         ((not (pair? x)) 1)
;         (else (+ (count-leaves (car x))
;                  (count-leaves (cdr x))))))
(define (count-leaves t)
  (accumulate (??)
              (??)
              (map (??) (??))))
