;multiply two numbers
.model small
.stack 100h
.data
.code
main proc
    mov al,5
    mov bl,2
    mul bl
    aam         ;ascii adjust after amplification. separtate two digits
    
    mov dl,ah  
    mov bl,al
    
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