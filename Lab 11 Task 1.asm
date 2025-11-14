; Task 1 
;Write an assembly language program that input characters string and prints them in reverse order. Use a stack. 

org 100h

.model small
.stack 100h
.data
.code
main proc
    mov ax, 4
    mov ax,30h
    Push ax   
    
    mov ax,0
    add ax, 30h
    Push ax
    
    mov ax, 4
    add ax, 30h
    push ax
    
    mov ax,1
    add ax, 30h
    push ax
    
    mov ax, 5
    add ax, 30h
    push ax
    
      mov ax,0
      add ax, 30h
      push ax
      
       mov ax, 3
       add ax, 30h
      push ax
      
       mov ax, 0
       add ax, 30h
      push ax
      
       mov ax,4
       add ax, 30h
      push ax
        
        mov cx, 8
       
        
           

       stack_loop:
    pop dx                  
    mov ah, 02h
    int 21h 
    
     mov dl, 10 
     mov ah,2h
     int 21h
   
    loop stack_loop  
    
    
    
    pop ax
    pop ax
    pop ax
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