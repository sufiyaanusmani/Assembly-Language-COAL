; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 4

INCLUDE Irvine32.inc

.data
    str1 BYTE "COAL Lab", 0

.code
    main PROC
        mov edx, OFFSET str1
        mov ecx, 5
        L1:
            call WriteString
            call crlf
        LOOP L1
        exit
    main ENDP
    END main