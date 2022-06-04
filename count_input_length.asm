.model small
.stack
.data
.code
main proc
    
    call input
    
    mov ah,4ch
    int 21h
    main endp

input proc
       mov bl,-1
    l1:
        mov ah,1
        int 21h
        inc bl
        cmp al,13
        jne l1
        
        call enter
        
        mov dl,bl
        add dl,48
        mov ah,2
        int 21h
    
    
    ret
    input endp 

enter proc
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    ret
    enter endp