; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 3

INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter a number (0 to exit): ", 0
.code
    main PROC
        mov edx, OFFSET msg1
        start:
            call WriteString
            call ReadInt
            cmp eax, 0
            jz end1
            jmp start
        end1:
            call DumpRegs
        exit
    main ENDP
    END main