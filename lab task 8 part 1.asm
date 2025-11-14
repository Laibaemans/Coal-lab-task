.model small
.stack 100h
.data
.code
main proc
    mov ax, 0    
    mov cx, 4     
    mov bx, 0  
        
addno:
    add ax, bx    
    inc bx         
    Loop addno     

  
    add ax, 30h    ; convert 6 to ASCII '6'
    mov dl, al
    mov ah, 2
    int 21h        ; display

    mov ah, 4ch
    int 21h
main endp
end main
