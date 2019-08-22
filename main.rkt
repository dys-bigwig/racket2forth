#lang racket
(require "types.rkt")
(provide compile-and-run)

(define emit 
  (compose displayln format))

(define (compile-expr e)
  (emit "~a %eax !" (immediate-rep e)))

(define base
  "include runtime.fs\nvariable %eax")

(define (compile-program program filename)
  (with-output-to-file filename #:exists 'replace
   (λ ()
    (emit base) 

    (compile-expr program)
    (emit "%eax @")

    (emit "show")
    (emit "bye"))))

(define (compile-and-run program filename)
  (define (run)
    (system (format "gforth ~a" filename)))
  (compile-program program filename)
  (with-output-to-string (λ () (run))))
