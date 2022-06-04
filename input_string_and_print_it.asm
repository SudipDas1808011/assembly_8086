.model small
.stack 100h
.data
string1 db 100 dup('$')     ;something$$$$$$$$$$$$$$$ 
.code
main proc
    mov ax,@data
    mov ds,ax
    mov si,offset string1

inpt:    
    mov ah,1
    int 21h
    mov [si],al
    cmp al,13
    je finish
    inc si
    jmp inpt  
    
 finish:
        mov dx,offset string1
        mov ah,9
        int 21h
    mov ah,4ch
    int 21h

main endp