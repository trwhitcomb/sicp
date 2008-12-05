; Structure and Interpretation of Computer Programs
; Problem 2.31
; T. R. Whitcomb, 04DEC2008

(define (square x)
  (* x x))

(define (tree-map proc tree)
  (define (proc-subtree sub-tree)
    (map (lambda (sub-tree)
           (if (pair? sub-tree)
               (proc-subtree sub-tree)
               (proc sub-tree)))
         sub-tree))
  (proc-subtree tree))

(define (square-tree tree) (tree-map square tree))

(define test-list 
   (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))
(square-tree test-list)
