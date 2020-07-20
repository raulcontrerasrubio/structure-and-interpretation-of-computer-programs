; Helpers
(define (log str) (display (string-append str "\n")))
(define (suite str) (display (string-append "\n\n" str "\n")))
(define (test str expected result op) (log (string-append str ": " (if(op result expected) "true" "false") )))

;1.2 P21
(define complex-operation (/ 
                            (+ 5 4 
                            (- 2 
                              (- 3 
                                (+ 6 
                                  (/ 4 5))))) 
                          (* 3 
                            (- 6 2) 
                            (- 2 7))))
(log (number->string complex-operation))

;1.3 P21
(suite "square test suite")
(define (square n) (* n n))
(test "Should be equal" (square 2) 4 =)
(test "Should work with negative numbers" (square (- 2)) 4 =)

(suite "sum-square test suite")
(define (sum-square x1 x2) (+ (square x1) (square x2)))
(test "Should work with two ones" (sum-square 1 1) 2 =)
(test "Should work with zero and 2" (sum-square 0 2) 4 =)
(test "Should work with negative numbers" (sum-square (- 3) 4) 25 =)

(suite "two-bigger-squares-sum test suite")
(define (two-bigger-squares-sum x y z) 
  (define first 
    (if (> x y) 
      (if (> x z) x z) 
      (if (> y z) y z))
  )

  (define second 
    (if (> x y) 
      (if (> y z) y x) 
      (if (> x z) x y))
  )

  
  (sum-square first second)
)

(test "Should work with ascending sorted numbers" (two-bigger-squares-sum 1 2 3) 13 =)
(test "Should work with descending sorted numbers" (two-bigger-squares-sum 3 2 1) 13 =)
(test "Should work when two numbers are equal" (two-bigger-squares-sum 2 2 1) 8 =)
(test "Should work when the equal numbers are not the biggest two" (two-bigger-squares-sum 2 2 3) 13 =)
(test "Should work when some numbers are negative" (two-bigger-squares-sum (- 3) 1 2) 5 =)