include "emu8086.inc"
.model small
.stack 100h
.data
    str1 db "Enter any two numbers-->",0
    str2 db "Enter the first number = ",0
    str3 db "Enter the second number = ",0
    str4 db "The result is = ",0
.code
    mov ax,@data
    mov ds,ax
    
    lea si,str1
    call print_string 
    printn
    
    lea si,str2
    call print_string
    call scan_num
    mov ax,cx
    printn 
    
    lea si,str3
    call print_string
    call scan_num
    mov bx,cx
    printn
    
    sub ax,cx
    
    lea si,str4
    call print_string
    call print_num
    
    
    
    
exit:
    mov ah,4ch
    int 21h
    
    
    define_print_string
    define_scan_num
    define_print_num
    define_print_num_uns
end    