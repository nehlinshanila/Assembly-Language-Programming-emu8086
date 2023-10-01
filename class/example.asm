;make array
;take the array
;search a random number
;get the index if the number exists in the array
;else print not found   
.model small
.stack 100h
.data     
    array db dup 5, '$' 
    array2 db 1,2,3,4,5, '$'    ;$ is null value end of array
.code  
    mov ax, @data
    mov ds, ax
    
    lea si, array      ;initial address of array to si
    
    mov ah, 1       ;taking single key input instruction
    mov bl, 0       ;int i = 0 ;counter same as cx
    
    _input:
     
    cmp bl, 5       ;check if i<5
    je next
    
    int 21h         ;sees ah value, stores in al
    mov [si], al    ;stores in array 0th index
    inc si          ;ekta ekta kore increment 
    
    inc bl          ;i++ till 5  
    
    jmp _input       
    ;before bl = 0    ah = 1    si[0] = array[0] .... 
    ;after bl = 5     ah = 1    si[5] = array[5] 
    
    next:
    mov ah, 2       ;moving 2 in ah   
    lea si, array   ;input is already in array which is passed to si 
    
    output:
    cmp bl, 0       ;compare if 5 is equal to bl
    je exit         ; jump to exit if d = zero     
    
     
    mov dl, [si]      ;moving value of si 0th index in dl
    int 21h          
    
    inc si            ;si+1 and onwards 
    dec bl            ;decrease bl until its 0 cause it's already 5
    
    jmp output

    ;int 21h
    
    
    ;jmp exit cause literally next line
    
    
    
    exit:
    mov ah, 4ch
    int 21h
    
    
      
    
    