#lang racket
(require "types.rkt")

(define emit 
  (compose displayln format))

(define (compile-expr e)
  (emit "~a %eax !" (immediate-rep e)))

(define base
  "include runtime.fs\nvariable %eax")

(define (compile-program program)
  (with-output-to-string
   (λ ()
    (emit base) 

    (compile-expr program)
    (emit "%eax @")

    (emit "show")
    (emit "bye"))))

(define (compile-and-run program filename)
  (define (run)
    (void (system (format "gforth ~a" filename))))

  (with-output-to-file filename #:exists 'replace
   (λ ()
    (emit (compile-program program))))

  (run))

(compile-and-run 42 "main.fs")
