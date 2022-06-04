print macro p1
    mov dx,offset p1
    mov ah,9
    int 21h
endm


.model small
.stack 100h
.data
msg1 db 'write a number: $'
;msg2 db 'Last digit is: $' 
msg3 db 'The number is Even$'
msg4 db 'The number is ODD$'
.code
main proc
      mov ax,@data
      mov ds,ax
      
      mov bl,-1
      
      print msg1
      
      L1:
        inc bl
        mov ah,1
        int 21h
        
        cmp al,13   ;enter nite carriage return er sthe cmp krte hy
        push ax
        jne L1
          
        call enter 
        ;print msg2
        
        pop dx
        pop dx
        mov ax,dx
        mov bl,2
        div bl
        
        mov dl,ah   ;in division vagsesh ah a thake
        add dl,48
        cmp dl,'1'
        je odd
        jne even
        
        odd:
            print msg4
            mov ah,4ch
            int 21h
        even:
            print msg3
        
      
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