;DATA DEFINITION STATEMENT

;[name] DirectiveInitializer [,initializer]

;eg: count1 DB 1  

;DirectiveInitializer: 16  bit value

;DB: 8 BIT INTEGER
;DW: 16 BIT INTEGER
;DD: 32 BIT INTEGER OR REAL
;DQ: 64 BIT INTEGER OR REAL
;DT: DEFINE 80 BIT(10 BYTE) INTEGER 



.model small
.data
    
    count1 db 2   ;added variable and named it count1
                  ;variable count1 has datatype db(8 bit)
                  ;db datatype has int value of 2
.code

main proc   
    
    mov dl, count1 ;moving variable to dl register
    add dl, 48     ;add 48 to dl to print character 2
    mov ah, 2h     ;code for print char
    int 21h        ;print value of "dl"
    
endp
end main