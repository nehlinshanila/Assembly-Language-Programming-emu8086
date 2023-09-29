include "emu8086.inc"
.model small
.stack 100h
.data
    str1 db "Enter two numbers-->",0
    str2 db "Number 01 = ",0
    str3 db "Number 02 = ",0
    str4 db "Multiplication of them is = ",0
    str5 db "Enter a number = ",0
    str6 db "Result is = ",0
.code
    mov ax,@data
    mov ds,ax
    
    lea si,str1         ;assign offset of str1 to si
    call print_string   ;print str1
    printn              ;print new line
    
    lea si,str2
    call print_string
    call scan_num       ;get input from user
    mov ax,cx           ;mov the input to ax
    printn
    
    lea si,str3
    call print_string
    call scan_num
    printn
    
    mul cx              ;multiply content of ax by cx
    lea si,str4
    call print_string
    call print_num      ;print the result
    
    call clear_screen
    
    lea si,str5
    call print_string
    call scan_num
    printn
    
    div cx
    lea si,str6
    call print_string
    call print_num
    
exit:
    mov ah,4ch
    int 21h
    

    define_print_string
    define_scan_num
    define_print_num
    define_print_num_uns
    define_clear_screen        
end
    

    