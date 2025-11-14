.model small   
.stack 100h 
 .data 
 .code
  main proc
    mov cx, 5
    mov bl, 1  
    
    Oddno:
    mov  dl, bl 
    add dl,30h
    mov ah,2
     int 21h
     
     add bl,2 
     
     Loop Oddno  
     
     mov ah,4ch
     int 21h 
     main endp
  end main
