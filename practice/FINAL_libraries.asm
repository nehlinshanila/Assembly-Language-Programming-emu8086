;two num as input and display sum
INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data
    msg1 db 'input first number: ', 0
    msg2 db 0ah, 0dh, 'input second number: ', 0
    
.code
    mov ax, @data
    mov ds, ax  
    
    lea si, msg1    ;ask for num
    call print_string   ;print
    call scan_num     ;get 1st num in cx
    
    mov ax, cx
    
    lea si, msg2
    call print_string
    call scan_num    ;get 2nd num in cx 
    
    add ax, cx
    
    call pthis
    db 0ah, 0dh, 'the sum is: ', 0 
    printn
    
    call print_num ;to print num in ax
    
    
    
  
  
  
  mov ah, 4ch
  int 21h
  
  define_print_string
  define_pthis
  define_print_num
  define_print_num_uns
  define_clear_screen 
  define_scan_num
    