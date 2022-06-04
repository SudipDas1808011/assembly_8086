.model small
.stack 100h
.data
.code
main proc
    mov cx,5 
    mov bx,4
    l1:
    push cx
    mov dl,'*'
    sub cx,bx
    sub bx,2
    l2:
        mov ah,2
        int 21h
        loop l2
    call enter
        
    pop cx
    loop l1
    mov ah,4ch
    int 21h
    
main endp 

enter proc                  ;enter function
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    ret
enter endp
    