 .MODEL SMALL
.STACK 100H
.DATA
msg1 DB 'Enter first number: $'
msg2 DB 0DH,0AH,'Enter second number: $'
equalMsg DB 0DH,0AH,'Both numbers are equal.$'
greaterMsg DB 0DH,0AH,'First number is greater.$'
lessMsg DB 0DH,0AH,'First number is smaller.$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; ---- Input first number ----
    MOV DX, OFFSET msg1
    MOV AH, 9
    INT 21H

    MOV AH, 1        ; Input single digit
    INT 21H
    SUB AL, 30H       ; Convert ASCII to number
    MOV BL, AL        ; Store first number in BL

    ; ---- Input second number ----
    MOV DX, OFFSET msg2
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 30H
    MOV BH, AL        ; Store second number in BH

    ; ---- Compare both numbers ----
    CMP BL, BH
    JE EQUAL
    JG GREATER
    JL LESS
EQUAL:
    MOV DX, OFFSET equalMsg
    MOV AH, 9
    INT 21H
    JMP EXIT
GREATER:
    MOV DX, OFFSET greaterMsg
    MOV AH, 9
    INT 21H
    JMP EXIT

LESS:
    MOV DX, OFFSET lessMsg
    MOV AH, 9
    INT 21H

; ---- Exit program ----
EXIT:
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
