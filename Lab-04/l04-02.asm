; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

INCLUDE Irvine32.inc

.data
    arrayB BYTE 10, 20, 30
    arrayW WORD 150, 250, 350
    arrayD DWORD 600, 1200, 1800
    sum1 DWORD 0
    sum2 DWORD 0
    sum3 DWORD 0

.code
    main PROC
        movzx eax, arrayB[0]
        movzx ebx, arrayW[0]
        add eax, ebx
        add eax, arrayD[0]
        mov sum1, eax

        movzx eax, arrayB[1]
        movzx ebx, arrayW[2]
        add eax, ebx
        add eax, arrayD[4]
        mov sum2, eax

        movzx eax, arrayB[2]
        movzx ebx, arrayW[4]
        add eax, ebx
        add eax, arrayD[8]
        mov sum3, eax

        mov eax, sum1
        mov ebx, sum2
        mov ecx, sum3
        call DumpRegs
        exit
    main ENDP
    END main