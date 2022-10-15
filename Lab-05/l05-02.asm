; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

INCLUDE Irvine32.inc

.data
    i SDWORD ?

.code
    main PROC
        mov i, 0
        again:
            cmp i, 8
            jg done
            mov eax, i
            call WriteInt
            mov al, " "
            call WriteChar
            inc i
            jmp again
        done:
            call Crlf
            call WaitMsg
        exit
    main ENDP
    END main