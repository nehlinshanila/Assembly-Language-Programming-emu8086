;Task 2

include 'emu8086.inc'
.model small
.stack 100h
.data
    
    msg1 db 'Enter first number: ',0
    msg2 db 0ah, 0dh, 'Enter second number: ',0
    msg3 db 0ah, 0dh, 'Enter third number: ',0
    
.code
    mov ax, @data
    mov ds, ax
    
    lea si, msg1      ;asking for 1st number
    call print_string
    call scan_num      ;get first num in cx
   
    
    mov ax, cx        ;copy number to ax
    
    lea si, msg2        ;ask for 2nd num
    call print_string
    call scan_num        ;input 2nd num in cx
    
    mul cx         
    
    call pthis   ;in a new line
    db 13, 10, 'the multiplied value is : ', 0  
    
    call print_num   ;print num in ax
    
    call clear_screen ;to clear the screen
    
    
    lea si, msg3    ;third input
    call print_string
    call scan_num
    
    cwd             ;convert to double word
    idiv cx         ;dividing the 
    
    call pthis
    db 13, 10, 'the divided value is : ', 0  
    
    call print_num
    
    exit:
    mov ah, 4ch
    int 21h
    
    
    ;---libraries------
    
    define_print_string
    define_pthis
    define_scan_num
    define_print_num
    define_print_num_uns   
    define_clear_screen
    
end
    
    