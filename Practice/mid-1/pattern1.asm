; *
; * *
; * * *
; * * * *
; * * * * *

INCLUDE Irvine32.inc

.data
	row DWORD 5
.code
	main PROC
		mov al, "*"
		mov ebx, 0
		outer:
			cmp ebx, row
			jge outerEnd
			mov ecx, 0
			inner:
				cmp ecx, ebx
				jg innerEnd
				call WriteChar
				inc ecx
				jmp inner
			innerEnd:
			call Crlf
			inc ebx
			jmp outer
		outerEnd:
		exit
	main ENDP
	END main
