include 'emu8086.inc'

.model small
.stack 100h
.data                                                
    meow dw 25
.code   
    mov ax, @data
    mov ds, ax
    
    mov ax, 100
    div meow
    
    mov bx, ax   ;mov quotient in bx
    mov cx, dx   ;mov remainder in dx
    
    mov ah, 2       ;single key output  
    
    mov dx, bx
    add dx, 30h     ;hexa to value show
    int 21h         ;display quotient
    
    mov dx, 20h      ;print space
    int 21h        
    
    mov dx, cx       ;hexa to show value
    add dx, 30h     ;display remainder
    int 21h
    
    
    exit:
    mov ah, 4ch
    int 21h      
    
    
    
    ;define_printn
    define_pthis
    define_print_string