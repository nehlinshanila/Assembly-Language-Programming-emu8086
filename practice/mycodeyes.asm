;Write a program using the Loop instruction to 
;print all letters each in a newline as follows 
;(must print all 26 letters):
INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data 
    yes db 'this is ', 0  
    no db 'this is not ', 0
.code    
    mov ax, @data
    mov ds, ax  
        
;when cx =0 print 'this is not A'
;when cx =1 print 'this is B'
;when cx =2 print 'this is not C'

    mov cx, 0        ;initiating cx value with 0, loop er starting index
    mov ah, 2        ;moving 2 into ah for string output instruction
    mov bl, 41h      ; moving 41h (A) inside bl reg     
 
    
    letters:           ;label
    mov dl, bl         ;moving the value of bl into dl
    int 21h            ; calling the dl function
    
    mov dl, 10        ;newline
    int 21h
    mov dl, 13
    int 21h  
    
       ;for(int i=0; i<26; i++)
    
    inc bl             ;increasing bl by 1 in each iteration/loop 
    
    mov ah, 9
    lea dx, yes        ;load offset of string to si to print      
    int 21h
 
     
    lea dx, no 
    int 21h
  
    
    inc cx             ;increasing cx by 1 in each itertation/loop

    cmp cx, 26     
    
    je exit        ;jump if equal 
    jmp letters     ;unconditional jump
    
    exit:
    mov ah, 4ch
    int 21h 
    
    
           
 ;definelibraries   
    define_pthis 
    define_print_string
    define_scan_num
    define_print_num_uns    