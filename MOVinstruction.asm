;MOV destination, Source




;INSTRUCTIONS: 


;1) both operands must be same size  
;eg:
mov ax, ah ;not work because ax is 16 bit and ah is 8 bit
mov ah, al ;work because both 8 bit reg
mov ax, bx ;work because both 16 bit reg



;2) both operands cannot be memory operands
;eg:
mov var1, var2 ;they are memory operand and cant move
;--
mov bx, var2 ;var2 moved to bx
mov var1, bx ;then mov from bx to var1


;3) CS,EIP,IP registers cannot be destination operands 


;4) an immediate value cannot be moved to a segment register
;eg:
mov reg, reg
mov mem, reg
mov reg, mem
mov mem, imm
mov reg, imm
