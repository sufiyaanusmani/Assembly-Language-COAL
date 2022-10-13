; Reversing string

INCLUDE Irvine32.inc

.data
	name1 BYTE "Sufiyaan Usmani", 0
.code
	main PROC
		mov ebx, LENGTHOF name1-1
		mov ecx, ebx
		mov esi, 0
		L1:
			movzx eax, name1[esi]
			PUSH eax
			add esi, TYPE name1
		LOOP L1

		mov ecx, ebx
		mov esi, 0
		L2:
			POP eax
			mov name1[esi], al
			add esi, TYPE name1
		LOOP L2

		; printing reversed string
		mov edx, OFFSET name1
		call WriteString
		call crlf
		exit
	main ENDP
	END main
