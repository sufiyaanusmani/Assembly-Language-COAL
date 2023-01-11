; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

INCLUDE Irvine32.inc

.data
	x DWORD 5
	y DWORD 6
.code
    main PROC
		mov eax, x
		call WriteDec
		mov al, " "
		call WriteChar
		mov eax, y
		call WriteDec
		call Crlf
        PUSH x
		PUSH OFFSET y
		call change
		mov eax, x
		call WriteDec
		mov al, " "
		call WriteChar
		mov eax, y
		call WriteDec
        exit
    main ENDP

	change PROC
		PUSH ebp
		mov ebp, esp
		mov DWORD PTR [ebp + 12], 10
		mov eax, DWORD PTR [ebp + 8]
		mov DWORD PTR [eax], 14
		mov eax, DWORD PTR [ebp + 12]
		call WriteDec
		mov al, " "
		call WriteChar
		mov eax, DWORD PTR [ebp + 8]
		mov eax, DWORD PTR [eax]
		call WriteDec
		call Crlf
		mov esp, ebp
		POP ebp
		ret 8
	change ENDP
    END main
