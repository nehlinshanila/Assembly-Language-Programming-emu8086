INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data
    ;CONVERT ODD NUMBERED INDEX TO CAPITAL LETTERS
    array db 10 dup(?) , '$'
    newl db 0ah, 0dh
.code 
    mov ax, @data    ;data to ax
    mov ds, ax       ;ax to dataseg
                 
    mov cx, 10       ;store 10 in cx for loop times
    lea si, array    ;store ea of array in si
    mov ah, 1        ;move 1 in ah for single char input instruction from user
    
    _array:           ;label is _array:
        int 21h       ;checks 1 in ah and executes single char input command
                      ;and stores the input value in al
        ;add al, 32      
        mov [si], al  ;moving value of al to offset si or index of array
        inc si        ;increment the index of array 
    loop _array       ;execute loop
    ;this will work until the value of cx reaches 0 ;decrements cx for loop purpuse until 0 by 1
    
    
     
    mov ah, 2          ;mov 2 in ah for single char output instruction 
    mov dl, 0ah        ;always dl e ante hobe OR DX
    int 21h            ;checks 2 in ah and executes single char output command and checks dl for char output 
    mov dl, 0dh        ;to backspace the extra space that appears after newline
    int 21h            ;checks dl for 0dh value and executes a backspace
    
    _capitalize: 
       ;quotient in al
       ;remainder in ah 
       xor ah, ah
       mov bl, 2
       div bl
       cmp ah, 0
       je cap
       
    jmp _capitalize  
    
    cap:
    add array, 32 
    int 21h 
    
    ;test al, 1
    ;jz capitalize
    
    ;capitalize:
    ;mov ah, 2
    ;add [si], 32
    ;inc si
    ;int 21h
    
    lea dx, array      ;moving the effective address of array into dx  
    mov ah, 9          ;character string output
    int 21h            ;checks the value of 9 in ah and executes and prints the char string from dx
        
    mov ah, 4ch        ;end function
    int 21h            ;terminate
    
    ;define macro 
    
    
    
    
end 
