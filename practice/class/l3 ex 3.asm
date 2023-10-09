;for arrays, just like varibale but use in a line or 'string'
.model small
.stack 100h
.data     
    ;var1 db 48h, 65h, 6ch, 6ch, 6fh, 00h
    var2 db 'hello', '$'  ;always use $ after string
    ;var3 db 4 dup(9)    ;means 9 9 9 9
    ;var4 db 4 dup(1,2)  ;means 1,2 1,2 1,2 1,2
.code
    mov ax, @data
    mov ds, ax
    
   ;for printing string we MUST use LEA
   lea dx, var2          ;mov var2 into dx using lea
   mov ah, 9             ;moving ins 9 into ah for string OUTPUT
   int 21h
    
exit:
    mov ah, 4ch
    int 21h 