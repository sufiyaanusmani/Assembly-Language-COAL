; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 4

INCLUDE Irvine32.inc

.data
    arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
    msg1 BYTE "Enter a value to search: ", 0
    msg2 BYTE "Data found at index ", 0
    msg3 BYTE "Data not found", 0
    index DWORD ?
    val WORD ?
.code
    main PROC
        mov edx, OFFSET msg1
        call WriteString
        call ReadDec
        mov val, ax
        mov ecx, LENGTHOF arr
        mov esi, 0
        L1:
            mov ax, arr[esi * TYPE arr]
            inc esi
            cmp val, ax
            je prompt
        LOOP L1
        mov edx, OFFSET msg3
        call WriteString
        exit
        prompt:
            mov index, esi
            dec index
            mov edx, OFFSET msg2
            call WriteString
            mov eax, index
            call WriteDec
            call Crlf
            call DumpRegs
        exit
    main ENDP
    END main