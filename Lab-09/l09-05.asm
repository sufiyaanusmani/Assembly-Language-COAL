; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 5

INCLUDE Irvine32.inc
.data
    Val1 SWORD -40
    Val2 SWORD +20
    Val3 SWORD -2
    Temp SWORD ?
.code
    main PROC
        mov eax, 0
        mov ebx, 0
        mov edx, 0
        mov ax, val2
        mov bx, val3
        idiv bx
        sal eax, 16
        sar eax, 16
        mov ecx, 0
        mov ecx, eax
        mov eax, 0
        mov edx, 0
        mov ax, val1
        cwd
        mov ebx, 0
        mov bx, val2
        idiv bx
        sal eax, 16
        sar eax, 16
        imul ecx
        sal ecx, 16
        sar ecx, 16
        call WriteInt
        exit
    main ENDP
    END main