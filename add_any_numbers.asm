input macro
    mov ah,1
    int 21h
endm


.model small
.stack 100h
.data
var1 db 44
var2 db 12
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dl,var1
    add dl,var2
    mov ax,dx
    mov bl,10
    div bl
    
    mov dl,al
    mov bl,ah
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