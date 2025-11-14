
;COAL Lab 11
;TASK 2
;
org 100h

 
.model small 
.data 
.code 
main proc 
     mov ax, 'a'
    Push ax
    
    mov ax,'l'
    Push ax
    
    mov ax, 'i'
    push ax
    
    mov ax,'s'
    push ax
    
    mov ax, 'h'
    push ax
    
      mov ax,'a'
      push ax
      
       
   mov cx,6
  stack_loop:
    pop dx             
    mov ah, 02h        
    int 21h
    loop stack_loop    
    
    
    
    pop ax
    pop ax
    pop ax
    pop ax
    pop ax
    pop ax
   
             

    mov ah, 4Ch
    int 21h
main endp
end main        
     
     
     
     
ret