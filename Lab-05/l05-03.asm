; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 5

INCLUDE Irvine32.inc

.data  
    msg BYTE "This is lab of nested loop", 0
    cols DWORD 5

.code
    main PROC
        mov edx, OFFSET msg
        call WriteString
        call Crlf
        mov ecx, cols
        outer:
            mov ebx, ecx
            mov ecx, cols
            inner:
                mov al, "@"
                call WriteChar
                mov al, " "
                call WriteChar
            LOOP inner
            call Crlf
            dec cols
            mov ecx, ebx
        LOOP outer
        exit
    main ENDP
    END main