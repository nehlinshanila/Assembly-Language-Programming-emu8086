;AX = multiply/divide, string load and store
;CX = count for string operations and shifts
;DX = port address for IN/OUT
;BX = index register for MOVE
;SP = points to top of stack
;BP = points to base of stack frame
;SI = points to a source in stream operations
;DI = points to a destination in stream operations


;TOTAL 32 BITS
; 16      16
; 16       8   8       _
;EAX | AX( AH  AL )     |
;EBX | BX( BH  BL )     |
;ECX | CX( CH  CL )     | general purpose
;EDX | DX( DH  DL )     |    registers
;ESI                    |
;EDI                   _|
;ESP                   -- stack ptr
;EBP                   -- base ptr