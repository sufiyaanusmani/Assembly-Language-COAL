; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 1

INCLUDE Irvine32.inc

.data
    msg BYTE "Generating 20 numbers fron 0 to 990:",0
.code
    main PROC
        mov eax, black + (green * 16)
        call SetTextColor
        call Clrscr
        mov edx, OFFSET msg
        call WriteString
        call Crlf
        mov dh, 0
        mov dl, 0
        call Crlf
        call Randomize
        mov ecx, 20
        L1:
            add dh, 1
            add dl, 1
            mov eax, 5
            call Delay
            mov eax, +991
            call RandomRange
            call Gotoxy
            call WriteDec
            call Crlf
        LOOP L1
        exit
    main ENDP
    END main