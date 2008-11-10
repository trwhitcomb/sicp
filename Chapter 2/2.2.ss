; Structure and Interpretation of Computer Programs
; Problem 2.2
; T. R. Whitcomb 10NOV2008

; Represent points in the plane
(define (make-point x y) (cons x y))
(define (x-point p)  (car p))
(define (y-point p)  (cdr p))
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

; Represent lines in the plane
(define (make-segment p1 p2) (cons p1 p2))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))
(define (midpoint-segment s)
  (make-point (average (x-point (start-segment s))
                       (x-point (end-segment s)))
              (average (y-point (start-segment s))
                       (y-point (end-segment s)))))
(define (average a b)
  (/ (+ a b) 2))

; Test
(define p1 (make-point 0 1))
(define p2 (make-point 1 0))
(define p3 (make-point 1 1))
(define s1 (make-segment p1 p2))
(define s2 (make-segment p2 p3))
(define s3 (make-segment p1 p3))

; Should be (1/2, 1/2)
(print-point (midpoint-segment s1))

; Should be (1, 1/2)
(print-point (midpoint-segment s2))

; Should be (1/2, 1)
(print-point (midpoint-segment s3))

