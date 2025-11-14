
 include 'emu8086.inc'     ; REQUIRED for print_num

.model small
.stack 100h

.data

.code
main proc
    mov ax, 0          ; sum = 0
    mov bx, 1          ; start from 1

sum_loop:
    add ax, bx         ; sum = sum + bx
    inc bx             ; bx = bx + 1
    cmp bx, 11         ; repeat until bx = 11
    jl sum_loop

    call print_num     ; print AX result

    mov ah, 4Ch
    int 21h
main endp

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end main
