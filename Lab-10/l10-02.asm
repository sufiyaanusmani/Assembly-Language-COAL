; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

INCLUDE Irvine32.inc

.data
    array WORD 23, 434, 3, 45, 23, 45, 67, 45, 78, 56
    msg BYTE "Minimum element is: ", 0
.code
    main PROC
        PUSH OFFSET array
        call MinArray
        call Crlf
        call DumpRegs
        exit
    main ENDP

    MinArray PROC
        PUSH ebp
        mov ebp, esp
        mov esi, [ebp + 8]
        mov ecx, 0
        mov ebx, 0
        mov ecx, 9
        mov eax, 0
        mov ax, [esi]
        add esi, 2
        L1:
            cmp ax, [esi]
            jl here
            mov bx, ax
            mov ax, [esi]
            mov [esi], bx
        here:
            add esi, 2
        LOOP L1
        mov edx, OFFSET msg
        call WriteString
        call WriteDec
        POP ebp
        ret 4
    MinArray ENDP
    END main
