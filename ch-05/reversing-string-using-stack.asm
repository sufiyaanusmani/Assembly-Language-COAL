INCLUDE Irvine32.inc

.data
	name1 BYTE "Sufiyaan Usmani", 0
.code
	main PROC
		mov ecx, LENGTHOF name1 - 1
		mov esi, 0

		; push
		L1:
			movzx eax, name1[esi]
			push eax
			inc esi
		LOOP L1

		; pop
		mov ecx, LENGTHOF name1 - 1
		mov esi, 0
		L2:
			pop eax
			mov name1[esi], al
			inc esi
		LOOP L2

		; print
		mov edx, OFFSET name1
		call WriteString
		call Crlf
		exit
	main ENDP
	END main
