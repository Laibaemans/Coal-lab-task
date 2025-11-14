.model small
.stack 100h
.data
.code
main proc
     mov cx, 26
     mov dx, 97
                
     CapLet:    ;name of loop 
      
      mov ah,2
      int 21h
      
      Inc dx
      
      Loop CapLet   ;Calling loop
      mov ah, 4ch
      int 21h
      main endp
end main
