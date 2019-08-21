#lang racket
(require fancy-app)
(provide (all-defined-out))

(define fixnum-shift 2)
(define char-shift 8)
(define char-tag #b0111)

(define (immediate-rep x)
  (define convert
    (match x
      [(? number?) (arithmetic-shift _ fixnum-shift)]
      [(? char?)  (compose (bitwise-ior _ char-tag)
                           (arithmetic-shift _ char-shift)
                           char->integer)]
      [(? boolean?) (λ (b) (if b #b100001111
                                 #b000001111))]))
  (convert x))
