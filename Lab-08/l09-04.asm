; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 4

INCLUDE Irvine32.inc

.data
	col DWORD 0
	msg1 BYTE "Enter number of columns: ", 0

.code
    main PROC
		mov edx, OFFSET msg1
		call WriteString
		call ReadDec
		mov col, eax
		call Crlf
		call PrintPattern
        exit
    main ENDP

	PrintPattern PROC
		mov ebx, 0
		outer:
			cmp ebx, col
			jge outerEnd
			mov ecx, 0
			inner:
				cmp ecx, col
				jge innerEnd
				mov edx, col
				dec edx
				sub edx, ebx
				cmp ecx, edx
				jl space
				cmp ecx, col
				jg space
				mov al, "*"
				call WriteChar
				jmp L1
				space:
					mov al, " "
					call WriteChar
				L1:

				inc ecx
				jmp inner
			innerEnd:
			call Crlf
			inc ebx
			jmp outer
		outerEnd:
		ret
	PrintPattern ENDP
    END main