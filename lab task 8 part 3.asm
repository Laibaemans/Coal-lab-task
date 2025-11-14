.model small   
.stack 100h 
 .data 
 .code
  main proc
    mov cx, 7
    mov bl, 97 
    
     PrintSequence:
    mov  dl, bl 

    mov ah,2
     int 21h
     
     add bl,4
     
     Loop PrintSequence 
     
     mov ah,4ch
     int 21h 
     main endp
  end main
