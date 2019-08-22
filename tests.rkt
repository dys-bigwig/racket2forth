#lang racket
(require rackunit)
(require "main.rkt")

;bools

(check-equal? (compile-and-run #t "test.fs") "#t")
(check-equal? (compile-and-run #f "test.fs") "#f")

;chars
(check-equal? (compile-and-run #\null "test.fs") "\u0000")
(check-equal? (compile-and-run #\001 "test.fs") "\u0001")
(check-equal? (compile-and-run #\002 "test.fs") "\u0002")
(check-equal? (compile-and-run #\003 "test.fs") "\u0003")
(check-equal? (compile-and-run #\004 "test.fs") "\u0004")
(check-equal? (compile-and-run #\005 "test.fs") "\u0005")
(check-equal? (compile-and-run #\006 "test.fs") "\u0006")
(check-equal? (compile-and-run #\007 "test.fs") "\u0007")
(check-equal? (compile-and-run #\backspace "test.fs") "\b")
(check-equal? (compile-and-run #\tab "test.fs") "\t")
(check-equal? (compile-and-run #\newline "test.fs") "\n")
(check-equal? (compile-and-run #\vtab "test.fs") "\v")
(check-equal? (compile-and-run #\page "test.fs") "\f")
(check-equal? (compile-and-run #\return "test.fs") "\r")
(check-equal? (compile-and-run #\A "test.fs") "A")
(check-equal? (compile-and-run #\B "test.fs") "B")
(check-equal? (compile-and-run #\C "test.fs") "C")
(check-equal? (compile-and-run #\D "test.fs") "D")
(check-equal? (compile-and-run #\E "test.fs") "E")
(check-equal? (compile-and-run #\F "test.fs") "F")
(check-equal? (compile-and-run #\G "test.fs") "G")
(check-equal? (compile-and-run #\H "test.fs") "H")
(check-equal? (compile-and-run #\I "test.fs") "I")
(check-equal? (compile-and-run #\J "test.fs") "J")
(check-equal? (compile-and-run #\K "test.fs") "K")
(check-equal? (compile-and-run #\L "test.fs") "L")
(check-equal? (compile-and-run #\M "test.fs") "M")
(check-equal? (compile-and-run #\N "test.fs") "N")
(check-equal? (compile-and-run #\O "test.fs") "O")
(check-equal? (compile-and-run #\P "test.fs") "P")
(check-equal? (compile-and-run #\Q "test.fs") "Q")
(check-equal? (compile-and-run #\R "test.fs") "R")
(check-equal? (compile-and-run #\S "test.fs") "S")
(check-equal? (compile-and-run #\T "test.fs") "T")
(check-equal? (compile-and-run #\U "test.fs") "U")
(check-equal? (compile-and-run #\V "test.fs") "V")
(check-equal? (compile-and-run #\W "test.fs") "W")
(check-equal? (compile-and-run #\X "test.fs") "X")
(check-equal? (compile-and-run #\Y "test.fs") "Y")
(check-equal? (compile-and-run #\Z "test.fs") "Z")
(check-equal? (compile-and-run #\a "test.fs") "a")
(check-equal? (compile-and-run #\b "test.fs") "b")
(check-equal? (compile-and-run #\c "test.fs") "c")
(check-equal? (compile-and-run #\d "test.fs") "d")
(check-equal? (compile-and-run #\e "test.fs") "e")
(check-equal? (compile-and-run #\f "test.fs") "f")
(check-equal? (compile-and-run #\g "test.fs") "g")
(check-equal? (compile-and-run #\h "test.fs") "h")
(check-equal? (compile-and-run #\i "test.fs") "i")
(check-equal? (compile-and-run #\j "test.fs") "j")
(check-equal? (compile-and-run #\k "test.fs") "k")
(check-equal? (compile-and-run #\l "test.fs") "l")
(check-equal? (compile-and-run #\m "test.fs") "m")
(check-equal? (compile-and-run #\n "test.fs") "n")
(check-equal? (compile-and-run #\o "test.fs") "o")
(check-equal? (compile-and-run #\p "test.fs") "p")
(check-equal? (compile-and-run #\q "test.fs") "q")
(check-equal? (compile-and-run #\r "test.fs") "r")
(check-equal? (compile-and-run #\s "test.fs") "s")
(check-equal? (compile-and-run #\t "test.fs") "t")
(check-equal? (compile-and-run #\u "test.fs") "u")
(check-equal? (compile-and-run #\v "test.fs") "v")
(check-equal? (compile-and-run #\w "test.fs") "w")
(check-equal? (compile-and-run #\x "test.fs") "x")
(check-equal? (compile-and-run #\y "test.fs") "y")
(check-equal? (compile-and-run #\z "test.fs") "z")