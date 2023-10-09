;do it again but if ther is two repeating numbers print both or all of their indexes
;omg
;print if their indexes are odd or even           
include 'emu8086.inc'
.model small
.stack 100h
.data 
    array db 5 dup (?), '$'
    s1 db "enter 10 numbers: ", 0  
    s2 db "The 10 numbers are: ", 0
    s3 db "repeating numbers exists in this index: ", 0
    ;s4 db "index is odd", 0
    ;s5 db "index is even", 0
.code  
    mov ax, @data
    mov ds, ax

    
    lea si, s1
    call print_string
    
    lea si, array
    mov ah, 1       ;single key input
    mov bl, 0       ;making value of bx = 0

    
    input:
        cmp bl, 5      ;comparing if bx == 10
        je next   
        
        int 21h           ;for input always int21h before. and for output after
        mov [si], al        ;moving value from lower ax reg to si 0th index      
             
        inc si              ;si++ until si ==10        
        inc bl              ;bl++ until bl ==10
        jmp input
    next: 
    
    call pthis
    db 0ah, 0dh, 0                    
         
    lea si, s2
    call print_string
        
    lea si, array
    mov ah, 2           ;single key output
                        ;bx was 0, now 10
                        ;si was 0, now 10
  
    output:
        cmp bl, 0           ;compare if bx == 0
        je next2
        
        mov dl, [si]        ;si is 10 now making it 0 next
        int 21h
        inc si              ;si++
        
        dec bl
        jmp output
        
        
    next2:   
    
    call pthis
    db 0ah, 0dh, 0                    
         
   
    
    lea si, array
    mov bl, 0 
    mov bh, 0

    
    findindex:      
     
        cmp [si], '3'       ;compare if si-th index has 4
        je indexout         ;if equal then go index output 
        cmp bl, 5          ;compare if bl == 5 until
        je check       ;jump if not equal 
        
        inc si
        inc bl              ;bl++ from 0  
        

        jmp findindex
        
  
        
    indexout:  
    
        call pthis
        db "repeating : ", 0
        
        mov ah, 2       ;single key output   
        ;mov dl, [si]    ;print the specific number  
        mov dl, bl       ;print the exact index of the number
        add dl, 30h      ;add with 30h for index 
        ;index is stored in dx currently
        int 21h 
        inc bh
         
        ;jmp evenodd 
        ;cmp bl, 5        ;cmp bl with 5
        ;je evenodd           ;if equal then exit
        ;inc bl            ; increment bx till 5
        ;inc si            ;increment si till 5
        ;jmp findindex
    
    evenodd:
        ;index currently stored in dx
        xor ah, ah      ;set ah value to 0 
        mov al, bl
        ;div = remainder in AH, quotient in AL
        mov cl, 2           ;we want to divide by 2
        div cl              ;basically AX/cl
        
        cmp ah, 0   ;if even then remainder 0
                    ;if odd then remainder 1
        je printeven
        
       call pthis
       db "odd", 0
        inc bl
        inc si
        jmp findindex
            
      printeven:
      call pthis
      db "even", 0
      inc bl
      inc si
      jmp findindex  
    
    notfound:
    call pthis
    db 0ah, 0dh, "number was not in array",0ah, 0dh, 0  
    jmp exit
    
    check:      
    cmp bh, 0
    je notfound  
    exit:
    mov ah, 4ch
    int 21h     
    
    
    
    
    
    
    
    
    define_pthis
    define_print_string