include 'emu8086.inc'

.model small
.stack 100h
.data     
    array db 5 dup (?)
    s db "meow", '$'
.code   
    mov ax, @data
    mov ds, ax
    
    ;lea si, s
   ; mov ah, 9
    ;int 21h
    
    lea si, array
    mov bl, 0       ;counter
    mov ah, 1       ;input single 
    
    input:
    cmp bl, 5
    je next
    
    int 21h
    mov [si], al
    inc si
    
    inc bl
    jmp input  
    
    next:
    lea si, array
    mov ah, 2
    
    call pthis
    db 0ah, 0dh, 0  
    
    output:
    cmp bl, 0
    je next2
   
    mov dl, [si]  
    int 21h
    inc si
    dec bl
    jmp output    
    
    next2:
    lea si, array
    mov bl, 1
    mov bh, [si]     ;bh=array[0]
    inc si           
    
    greatest:
    cmp bl, 5
    je printgreatest
    
    cmp [si], bh          ;if si'th value > greatest
    jl movegreat           ;if si is > bh
     
    inc si
    inc bl 
    jmp greatest
    
    
    movegreat:
    mov bh, [si]  
    inc si  
    inc bl
    jmp greatest
    
    printgreatest:   
 
    mov ah, 2
    mov dl, bh
    int 21h
    
    
    exit:
    mov ah, 4ch
    int 21h      
    
    
    
    ;define_printn
    define_pthis
    define_print_string