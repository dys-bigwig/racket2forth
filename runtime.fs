%11 constant FIXNUM-MASK
%00 constant FIXNUM-TAG
2 constant FIXNUM-SHIFT

%1111 constant CHAR-MASK
%0111 constant CHAR-TAG
8 constant CHAR-SHIFT

%100001111 constant #t
%000001111 constant #f

: ?fixnum           ( Scheme-val -> Bool )
    FIXNUM-MASK and ( mask all but bits 0-1)
    FIXNUM-TAG =    ( compare bits to fixnum tag )
;

: ?char           ( Scheme-val -> Bool )
    CHAR-MASK and ( mask all but bits 0-3 )
    CHAR-TAG =    ( compare bits to char tag )
;

: ?bool       ( Scheme-val -> Bool )
    dup #t =  ( dup val and compare with representation of #t )
    swap #f = ( swap and compare with representation of #f )
    or        ( or results; true if val is #t or #f )
;

: show
  dup
    ?fixnum if
      2/ 2/ . else
  dup
    ?char if
        CHAR-SHIFT rshift emit else
  dup
    ?bool if
      case
        #t of ." #t" endof
        #f of ." #f" endof
      endcase endif endif endif
; 
