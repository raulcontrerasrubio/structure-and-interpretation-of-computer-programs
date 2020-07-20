; false
(display #f)
(display "\n")

; true
(display #t)
(display "\n")
(display "\n")

; evaluates to #t
(display (< 3 5))
(display "\n")
(display "\n")

; evaluates to #f
(display (> 3 5))
(display "\n")
(display "\n")

(define (boolean->integer x) (case x ((#f) 0) ((#t) 1)))
(display (+ (boolean->integer #f) (boolean->integer #f)))
(display "\n")
(display "\n")

; nvm
(define (sum-bool x y) (and (boolean->integer x) (boolean->integer y)))
(display (sum-bool #t #t))
(display "\n")
(display (sum-bool #f #f))
(display "\n")
(display (sum-bool #f #t))
(display "\n")
(display (sum-bool #t #f))
(display "\n")
(display "\n")

; cond
(cond ((> 3 4) (display "Greater 3 than 4")) ((= 2 3) (display "Equal 2 to 3")) ((< 4 10) (display "4 is less than 10")))
(display "\n")
(display "\n")

; The string in this function is the returned value of the function
(define (checker x) (cond ((> x 0) "Is positive") ((= x 0) "Is Zero") ((< x 0) "Is negative") ))
(display (checker 1))
(display "\n")
(display (checker 0))
(display "\n")
(display (checker -1))
(display "\n")