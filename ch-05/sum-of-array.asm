INCLUDE Irvine32.inc

.data
	array DWORD 10, 20, 30, 40, 50
	sum DWORD ?
.code
	main PROC
		mov esi, OFFSET array
		mov ecx, LENGTHOF array
		call arraySum
		mov sum, eax
		call WriteDec
		call Crlf
		exit
	main ENDP

	arraySum PROC
		push esi
		push ecx
		mov eax, 0
		L1:
			add eax, [esi]
			add esi, TYPE DWORD
		LOOP L1
		pop ecx
		pop esi
		ret
	arraySum ENDP
	END main
