.model small
.stack 100h
.data
theName DB 'Laiba Eman$'
msg1 DB 'How many times do u want to print the name: $'
newline DB 0Dh, 0Ah, '$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    sub al, 30h       ; Convert ASCII to number (0-9)
    mov cl, al        ; Move number to CL
    mov ch, 0         ; Clear CH (important!)
    
    mov dx, offset newline
    mov ah, 9
    int 21h

    print_loop:
    mov dx, offset theName
    mov ah, 9
    int 21h

    mov dx, offset newline
    mov ah, 9
    int 21h

    loop print_loop     

    mov ah, 4Ch
    int 21h
main endp
end main
