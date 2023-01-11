; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 1

INCLUDE Irvine32.inc

.data
    num1 DWORD 3h
    num2 DWORD 2h 
    num3 DWORD 5h
    product DWORD ?
    msg BYTE "The product of three numbers is: ", 0
.code
    main PROC
        PUSH num1
        PUSH num2
        PUSH num3
        call ThreeProd
        mov product, eax
		exit
    main ENDP

    ThreeProd PROC
        PUSH ebp
        mov ebp, esp
        mov eax, 0
        mov ebx, 0
        mov eax, [ebp + 8]
        mov ebx, [ebp + 12]
        mul ebx
        mov ebx, [ebp + 16]
        mul ebx
        mov esp, ebp
        mov edx, OFFSET msg
        call WriteString
        call WriteDec
        call Crlf
        call DumpRegs
        POP ebp
        ret 12
	ThreeProd ENDP
    END main