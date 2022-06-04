.model small
.data
msg1 db 'write a Capital letter: $'
msg2 db 'small letter is :$'
.code
main proc
;fetching info from data section 
    mov ax,@data
    mov ds,ax
;obtaining address from msg1    
    mov dx,offset msg1
    mov ah,9    ;service routine 9 for displaying string
    int 21h     ;interrupt cpu for displaying
    
    mov ah,1    ;service routine 1 for getting input (single char.)
    int 21h     
    mov bl,al   ;keep input value to base register
    
    mov dl,10   ;10 for \n new line.
    mov ah,2    ;service routine 2 for displaying output 
    int 21h
    
    mov dl,13   ;13 for \r carriage return. which place the cursor in first line
    mov ah,2
    int 21h
    
    mov dx,offset msg2
    mov ah,9
    int 21h   
    
    add bl,32
    mov dl,bl
    mov ah,2
    int 21h
    
    
    
    mov ah,4ch
    int 21h
main endp