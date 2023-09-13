.model small
.stack 100h
.data
.code

    mov cx, 26        ;initiating cx value with 0, loop er starting index
    mov ah, 2
    mov bl, 41h      ;initiating capitalized A value in bl
    
    letters:      
    mov dl, bl      ;transferring bl value into dl
    int 21h         ;for showing output of dl
    
    mov dl, 10      ;for newline
    int 21h
    mov dl, 13
    int 21h
    
    inc bl          ;increasing bl value ONCE in every loop
    
    loop letters    ;to end the loop till cx==0
    
    exit:
    mov ah, 4ch
    int 21h