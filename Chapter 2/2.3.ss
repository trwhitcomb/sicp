; Structure and Interpretation of Computer Programs
; Problem 2.3
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

; Rectangle abstraction method 1
; Represent a rectangle with the lower-left and upper-right corners
;(define (make-rect p-ll p-ur) (cons p-ll p-ur))
;(define (rect-ll rect) (car rect))
;(define (rect-ur rect) (cdr rect))
;(define (rect-width rect)
;  (abs (- (x-point (rect-ur rect))
;          (x-point (rect-ll rect)))))
;(define (rect-height rect)
;  (abs (- (y-point (rect-ur rect))
;          (y-point (rect-ll rect)))))

; Abstract rectangles - method 2
; Represent a rectangle using a size (width/height) and an anchor
; point at the lower-left corner
(define (make-size width height) (cons width height))
(define (size-width size) (car size)) 
(define (size-height size) (cdr size))
(define (make-rect width height p-ll)
  (cons p-ll (make-size width height)))
(define (rect-width rect)
  (size-width (cdr rect)))
(define (rect-height rect)
  (size-height (cdr rect)))

; Rectangle functions
(define (perimeter rect)
  (* 2 (+ (rect-width rect) (rect-height rect))))
(define (area rect)
  (* (rect-width rect) (rect-height rect)))

; Test method 1
;(define p1 (make-point 0 0))
;(define p2 (make-point 1 1))
;(define r (make-rect p1 p2))

; Method 2
(define p1 (make-point 0 0))
(define r (make-rect 1 1 p1))

(perimeter r)
(area r)
