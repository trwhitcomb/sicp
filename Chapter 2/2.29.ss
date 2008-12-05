; Structure and Interpretation of Computer Programs
; Problem 2.29
; T. R. Whitcomb, 04DEC2008

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

; Part (a) - selectors
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (cadr mobile))
(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cadr branch))

; Part (b) - total weight
(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))
(define (branch-weight branch)
  (cond ((null? branch) 0)
        ((structure-is-weight? (branch-structure branch))
         (branch-structure branch))
        (else
         (total-weight (branch-structure branch)))))
(define (structure-is-weight? structure)
  (not (pair? structure)))

; Part (c) - balance
(define (branch-moment branch)
  (* (branch-length branch) (branch-weight branch)))
(define (balanced? mobile)
  (= (branch-moment (left-branch mobile))
     (branch-moment (right-branch mobile))))

; Test
(define t-mobile (make-mobile (make-branch 5 10) (make-branch 2 25)))
(define s-mobile (make-mobile (make-branch 1 t-mobile) (make-branch 2 t-mobile)))
