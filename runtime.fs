%0011 constant FIXNUM-MASK
%0000 constant FIXNUM-TAG
2 constant FIXNUM-SHIFT

%1111 constant CHAR-MASK
%0111 constant CHAR-TAG
8 constant CHAR-SHIFT

%100001111 constant #t
%000001111 constant #f

: ?fixnum FIXNUM-MASK and
          FIXNUM-TAG =
;

: ?char CHAR-MASK and
        CHAR-TAG =
;

: ?bool dup #t =
        swap #f =
        or
;

: show
  dup
    ?fixnum 
        if FIXNUM-SHIFT rshift . else
  dup
    ?char
        if CHAR-SHIFT rshift emit else
  dup
    ?bool
        if #t =
          if ." #t"
          else ." #f"
  endif endif endif endif
; 
