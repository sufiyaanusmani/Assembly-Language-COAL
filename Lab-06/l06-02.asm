; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

INCLUDE Irvine32.inc

.data
    val BYTE "!", 0
.code
    main PROC
        mov edx, OFFSET val
        call Randomize
        mov ecx, 100
        L1:
            call GetMaxXY
            mov eax, GetMaxXY
            call RandomRange
            mov dl, al
            call RandomRange
            mov dh, al
            call Gotoxy
            mov edx, OFFSET val
            call WriteString
            mov eax, 100
            call Delay
            call Crlf
        LOOP L1
        call WriteString
        exit
    main ENDP
    END main