INCLUDE Irvine32.inc

.data
	array DWORD 10, 20, 30, 40, 50
	sum DWORD ?
.code
	main PROC
		PUSH LENGTHOF array
		PUSH OFFSET array
		call ArraySum
		mov sum, eax
		call WriteDec
		call Crlf
		exit
	main ENDP

	ArraySum PROC
		PUSH ebp
		mov ebp, esp
		PUSH ecx
		PUSH esi
		mov eax, 0
		mov ecx, [ebp + 12]
		mov esi, [ebp + 8]
		L1:
			add eax, [esi]
			add esi, TYPE DWORD
		LOOP L1
		POP esi
		POP ecx
		mov esp, ebp
		POP ebp
		ret 8
	ArraySum ENDP
	END main
