.model small
.stack 100h
.data
.code
main proc
    mov ax,19
    mov bl,6
    div bl
    
    mov dl,al   ;quotient(vagfol) jay al a 
    mov bl,ah   ;remainder (vagsesh) jay ah a
    add dl,48
    mov ah,2
    int 21h 
    
    mov dl,bl
    add dl,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
main endp