INCLUDE Irvine32.inc

.data
	array DWORD 1000, 2000

.code
	main PROC
		PUSH OFFSET array
		PUSH OFFSET [array + 4]
		call Swap
		mov eax, [array]
		call WriteDec
		call Crlf
		mov eax, [array + 4]
		call WriteDec
		call Crlf
	main ENDP

	Swap PROC
		PUSH ebp
		mov ebp, esp
		PUSH eax
		PUSH esi
		PUSH edi
		mov esi, [ebp + 12]
		mov edi, [ebp + 8]
		mov eax, [esi]
		xchg eax, [edi]
		mov [esi], eax
		POP edi
		POP esi
		POP eax
		mov esp, ebp
		POP ebp
		ret 8
	Swap ENDP
	END main
