;1 2 3 4 5 6 7 8 9 10
;2 4 6 8 10 12 14 16 18 20
;3 6 9 12 ...
;4 8 12 ...
;5 10 15 ...

INCLUDE Irvine32.inc

.data
	
.code
	main PROC
		mov ebx, 1
		outer:
			cmp ebx, 5
			jle L1
			jmp outerEnd
			L1:
				mov eax, ebx
				mov ecx, 1
				inner:
					cmp ecx, 10
					jle L2
					jmp innerEnd
					L2:
						call WriteDec
						mov edx, eax
						mov al, " "
						call WriteChar
						mov eax, edx
						add eax, ebx
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
