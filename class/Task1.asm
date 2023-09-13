;Task 1

include 'emu8086.inc'
.model small
.stack 100h
.data
    
    msg1 db 'Enter a number: ',0
    msg2 db 0ah, 0dh, 'Enter another number: ',0
    
.code
    mov ax, @data
    mov ds, ax
    
    lea si, msg1
    call print_string
    call scan_num
   
    
    mov ax, cx  
    
    lea si, msg2
    call print_string
    call scan_num
    
    sub ax, cx
    
    call pthis
    db 13, 10, 'the difference is : ', 0
    
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
    
end
    
    