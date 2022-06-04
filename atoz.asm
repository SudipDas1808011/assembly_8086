.model small
.stack 100h
.data
.code
main proc 
    mov cx,26       ;here cx is counter register. 10 means count 10 to 1.if cx is 0 no loop 
    mov dl,65       ;48 ascii of '0'
    for:            ;for is the label name
        mov ah,2
        int 21h
        add dl,1
        
        loop for    ;loop works as goto in c
        
    mov ah,4ch
    int 21h

main endp