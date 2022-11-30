INCLUDE Irvine32.inc

.data
	Array DWORD 10, 20, 30, 40, 50
	theSum DWORD ?

.code
	main PROC
		PUSH OFFSET Array
		mov ecx, LENGTHOF Array
		PUSH ecx
		call ArraySum
		mov theSum, eax
		call WriteDec
		call Crlf
	main ENDP

	ArraySum PROC
		PUSH ebp
		mov ebp, esp
		PUSH ecx
		PUSH esi
		mov eax, 0
		mov esi, [ebp + 12]
		mov ecx, [ebp + 8]
		L1:
			add eax, [esi]
			add esi, 4
		LOOP L1
		POP esi
		POP ecx
		mov esp, ebp
		POP ebp
		ret 8
	ArraySum ENDP
	END main
