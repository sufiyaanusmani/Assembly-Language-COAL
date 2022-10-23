; * * * * *
;   * * * *
;     * * *
;       * *
;         *

INCLUDE Irvine32.inc

.data
	row DWORD 5
.code
	main PROC
		mov ebx, 0
		outer:
			cmp ebx, row
			jge outerEnd
			mov ecx, 0
			inner:
				cmp ecx, row
				jge innerEnd
				cmp ecx, ebx
				jl elsePart
				mov al, "*"
				call WriteChar
				jmp L1
				elsePart:
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

		exit
	main ENDP
	END main
