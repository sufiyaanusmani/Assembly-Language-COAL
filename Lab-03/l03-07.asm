; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 7

INCLUDE Irvine32.inc

.data
    imm8 = 20
    ; We can also use: imm8 EQU 20
    Data1 WORD 8
    Data2 WORD 15
    Data3 WORD 20

.code
    main PROC
        mov eax, 0
        mov al, imm8
        add ax, Data1
        sub ax, Data3
        add al, imm8
        add ax, Data2
        call DumpRegs
        exit
    main ENDP
    END main