(define price 100)
(define VAT .21)
(define priceAfterTaxes (+ price (* price VAT)))
(display (cons (number->string priceAfterTaxes) "€"))