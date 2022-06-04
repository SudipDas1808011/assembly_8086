.model small
.stack 100h
.data
str db 'mrinal$'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov cx,6
    mov si,offset str 
    
    l1:
       mov bx,[si]
       push bx      ;bx value go to stack memory
       inc si
       loop l1
    
    mov cx,6  
    l2:
       pop dx      ;stack top value come to dx
       mov ah,2
       int 21h
       loop l2 
       
    mov ah,4ch
    int 21h
main endp
;end main