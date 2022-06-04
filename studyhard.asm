.model small
.stack 100h
.data  
outmsg db 'write a character:$' 
outmsg2 db 'write another character:$'
var1 db ?
var2 db ?
.code       
main proc 
;loading the variables    
    mov ax,@data
    mov ds,ax
;write a number    
    mov dx,offset outmsg
    mov ah,9
    int 21h
;print a space    
    mov dl,32
    mov ah,2
    int 21h
;input a character    
    mov ah,1
    int 21h  
;print a new line
    mov dl,10
    mov ah,2
    int 21h
;carriage return    
    mov dl,13
    mov ah,2
    int 21h
;write an another character    
    mov dx,offset outmsg2
    mov ah,9
    int 21h
;print a space   
    mov dl,32
    mov ah,2
    int 21h
;taking input as another character    
    mov ah,1
    int 21h
;exit from displaying    
    mov ah,4ch
    int 21h
main endp
