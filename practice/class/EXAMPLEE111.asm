;take 10 inputs
;print them
;compare if input has 4 in them or not
;if yes then print 4, else print 'not found' 
;get index of where 4 was found
include 'EMU8086.INC'
.model small
.stack 100h
.data  
    array db 10 dup (?), '$'     ;store as char 
    ;array db 3 dup (?), '$'
    msg1 db "enter 10 numbers:"
    ;s db "notttttt found"
.code     
    mov ax, @data
    mov ds, ax 
    
    lea si, msg1         ;msg1 inside si
    call print_string     ;calling print_string library to print the line
    
    call PTHIS          ;calling library
    db 0ah, 0dh, 0      ;to print new line
    
    lea si, array   ;initial address of array to si
    
    mov ah, 1       ;take single key input instruction
    mov bl, 0      ;counter, i=0 
    
    input:
        cmp bl, 10      ;cmp if bl = 10 only then, i<10 
        je next          ; jump to next label
        
        int 21h             ;sees ah value, black screen then undergoes 1 instruction
        mov [si], al        ;moving value of al to si  
        
                     
        ;cmp [si], '4'
        ;mov bx, [si] 
        ;je cmpout              
        
        inc si              ;si+1 for each loop          
        
        inc bl              ;until bl is 10 keep incrementing, currently 0, i++
        
    jmp input
              ;;bl before 0, now 10 
              ;;si before 0, now 10
    next:
    
    mov ah, 2
    lea si, array     
    
    call PTHIS          ;calling library
    db 0ah, 0dh, 0      ;to print new line
              
    output: 
        cmp bl, 0          ;cmp bl with 0, currently its 10
        je next2            ;if 0 then exit
        
       ; int 21h
        mov dl, [si]        ;moving 0th index of si to dl  
        
        ;mov bx, [si]               
        ;cmp [si], '4'
        ;je cmpout
          
        
        int 21h
        inc si              ;si + 1 until its 10        
        

               
        dec bl              ;cause bl is already 10. dec until 0  
    jmp output                               
                            ;;bl before 10, now 0 
                            ;;si before 0, now 10                                      
    next2:
 
    lea si, array 
    mov bl, 0 
    
    call PTHIS          ;calling library
    db 0ah, 0dh, 0      ;to print new line
         
      ;new loop only for compare
      compare:                       
       ;cmp bl, 10         ;cause bl is currently  0
        ;je exit            ; if 0 then end this shit
        
        ;mov [si], al
        ;mov cl, [di]        ;moving value of di to cl. di is currently 0                
        cmp [si], '4' 
        je cmpout
            
        inc si              ;si+1 for each loop cause its initially 10 for now          
       
        inc bl               ;bl is for finding index
        cmp bl, 10              ;until bl is 10 keep incrementing, currently 0, i++ 
        jne compare  
    
     
     
    
      
      call PTHIS
      db 0ah, 0dh, 0
      
      cmpout:  
        mov ah, 2           ;single key output     
       mov dl, bl         ;keep value of si in cl and override everytime   
       add dl, 30h          ;its in hexa. so to get value FOR INDEX 
     ; mov dx, bx          
      int 21h
      
      
      exit:
      mov ah, 4ch
      int 21h
      
        
        
        
     DEFINE_PRINT_STRING 
     DEFINE_PTHIS
        
       
        
    