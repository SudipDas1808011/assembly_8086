.model small
.stack 100h
.data
msgeq db 'both are equal$'
msguneq db 'we are not same bro$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    
    cmp bl,al   ;cmp = compare two register's value
    je eq       ;je = jump if equal
    
    mov dx,offset msguneq
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    
    eq:
        mov dx,offset msgeq
        mov ah,9
        int 21h
    
    mov ah,4ch
    int 21h
        
main endp
