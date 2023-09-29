;for constants, just like varibale but use equ
.model small
.stack 100h
.data     
    ;c EQU 35h
.code
    ;constant_name     EQU     constant_value      
    ;mov ax, @data
    ;mov ds, ax
    
    ;mov ah, 2
    ;mov bx, c      ;for constant, mov into bx
    ;int 21h
    
exit:
    mov ah, 4ch
    int 21h 