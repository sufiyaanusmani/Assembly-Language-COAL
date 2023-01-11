; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 6

INCLUDE Irvine32.inc
.data
    Num1    QWORD    3A2C098FDE6273EDh
    Num2    QWORD    26D371B41CA8B4F6h
.code
    main PROC
        mov eax, 0
        mov edx, 0
        mov eax, DWORD PTR Num1
        mov edx, DWORD PTR Num1[4]
        add eax, DWORD PTR Num2
        adc edx, DWORD PTR Num2[4]
        call WriteDec
        mov eax, edx
        cmp eax, 0
        JE Ex
        call WriteDec
        Ex:
        exit
    main ENDP
    END main