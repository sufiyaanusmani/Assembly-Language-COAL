; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 1

INCLUDE Irvine32.inc

.data
    arr DWORD 7, 4, 1, 5, 2

.code
    main PROC
        mov eax, 0
        mov eax, arr[8]
        call DumpRegs

        mov eax, arr[16]
        call DumpRegs

        mov eax, arr[4]
        call DumpRegs

        mov eax, arr[12]
        call DumpRegs

        mov eax, arr[0]
        call DumpRegs
        exit
    main ENDP
    END main