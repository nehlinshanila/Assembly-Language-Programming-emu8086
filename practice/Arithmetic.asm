;print char from ascii table
;also some simple maths

.model small
.data
.code

main proc
    
    mov dl, 2
    ;add dl, 2    ;to print 4 now
    sub dl, 1     ;subtract= 1
    
    
    ;add dl, 30h  ;to print decimal of 2 we need to add 30h with 2h to make it 32
    add dl, 48   ;to print decimal of 2 we need to add 48 with 2 to make it 50
    mov ah, 2h   ;code for print char
    int 21h      ;prints value of dl
    
endp
end main