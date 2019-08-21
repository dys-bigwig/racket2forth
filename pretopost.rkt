#lang racket

(define op? (curryr member '(+ - * /)))

(define (convert ls stk)
  (cond
    [(null? ls) (flatten (reverse stk))]
    [(op? (car ls)) (let ([op1 (car stk)]
                          [op2 (cadr stk)]
                          [stk (cddr stk)])
                      (convert (cdr ls)
                               (cons (list op1 op2 (car ls))
                                       stk)))]
    [else (convert (cdr ls)
                   (cons (car ls)
                         stk))]))

(define (pre->post ls) (convert (reverse ls) '()))
