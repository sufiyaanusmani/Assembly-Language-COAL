; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 3

INCLUDE Irvine32.inc

.data
    array1 BYTE 10, 20, 30, 40
    array2 BYTE 4 DUP(?)
.code
    main PROC
        mov eax, 0
        mov al, array1[3]
        mov array2[0], al         ; array2: 40

        mov al, array1[2]
        mov array2[1], al         ; array2: 40, 30

        mov al, array1[1]
        mov array2[2], al         ; array2: 40, 30, 20

        mov al, array1[0]
        mov array2[3], al         ; array2: 40, 30, 20, 10

        ; printing values of array2
        mov eax, 0
        mov ebx, 0
        mov ecx, 0
        mov edx, 0

        mov al, [array2]
        mov bl, [array2 + 1]
        mov cl, [array2 + 2]
        mov dl, [array2 + 3]
        call DumpRegs
        exit
    main ENDP
    END main