.model small
.stack 100h
.data
.code
main proc
     mov ah,6
     mov al,5
     mov bh,00010000b
     mov ch,0
     mov cl,0
     mov dh,15
     mov dl,15
     int 10h    ;interrupt graphics
     
     mov ah,4ch
     int 21h
    
main endp