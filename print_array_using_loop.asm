.model small
.stack 100h
.data
array db 'abc'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov cx,3            ;cx = counter register
    
    mov si,offset array  ;si = source index
   
    for:
        mov dx,[si]     ;[si] is like value of pointer like *ptr    
        mov ah,2
        int 21h
        inc si          ;inc = increment like ++ 
        Loop for
    mov ah,4ch
    int 21h

main endp