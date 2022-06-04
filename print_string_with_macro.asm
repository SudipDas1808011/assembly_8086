;fist build your macro
print macro p1
    mov dx,offset p1
    mov ah,9
    int 21h
endm

.model small
.stack 100h
.data
var1 db 'this is the first line$'
var2 db 'this is the second line$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    print var1
    call enter    ;print new line with carriage return
    print var2 
    
    mov ah,4ch
    int 21h
main endp 

enter proc
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
 ret
enter endp
