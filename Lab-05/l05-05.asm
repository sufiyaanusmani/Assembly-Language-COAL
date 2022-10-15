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
            mov ecx, cols
            inner:
                mov al, "@"
                call WriteChar
            LOOP inner
            call Crlf
            mov ecx, cols
            dec cols
        LOOP outer
        exit
    main ENDP
    END main