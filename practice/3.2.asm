;take an input of size 10, print last 4 char 1st 
;then newline and print middle 2
;then newline then print 1st 4 char

;if 0123456789 
;then 
;6789
;45
;0123

;print a string calling for number input
;after the inputs, clear the screen and show output
include 'emu8086.inc'
.model small
.stack 100h
.data 
    
     a db 10 dup (?), '$' 
     
.code  
    mov ax, @data
    mov ds, ax   
    
    call pthis
    db "gimme 10 inputs: ", 0 
    
    ;newline 
    mov ah, 2
     mov dl, 0ah
     int 21h
     mov dl, 0dh
     int 21h
    
    
    mov ah, 1
    ;take input  
    
    int 21h
    mov a[0], al
    
    int 21h
    mov a[1], al
    
    int 21h
    mov a[2], al
    
    int 21h
    mov a[3], al 
    
    int 21h
    mov a[4], al
    
    int 21h
    mov a[5], al
    
    int 21h
    mov a[6], al
    
    int 21h
    mov a[7], al
    
    int 21h
    mov a[8], al
    
    int 21h
    mov a[9], al
    
    ;output  
     ;CLEAR SCREEN
    call clear_screen
    
    mov ah, 2
    
    mov dl, a[6]
    int 21h
    
    mov dl, a[7]
    int 21h
    
    mov dl, a[8]
    int 21h
    
    mov dl, a[9]
    int 21h
    
    
    ;newline
     mov dl, 0ah
     int 21h
     mov dl, 0dh
     int 21h  
     
      mov ah, 2 ;mid 2
    
    mov dl, a[4]
    int 21h
    
    mov dl, a[5]
    int 21h
    
  ;newline
     mov dl, 0ah
     int 21h
     mov dl, 0dh
     int 21h    
 
    ;1st 4 char  
    mov ah, 2
    
    mov dl, a[0]
    int 21h
    
    mov dl, a[1]
    int 21h
    
    mov dl, a[2]
    int 21h
    
    mov dl, a[3]
    int 21h
   
   ;newline
     mov dl, 0ah
     int 21h
     mov dl, 0dh
     int 21h 
    
  
     mov ah, 4ch
     int 21h
    
    
    ;library
    define_clear_screen 
    define_pthis