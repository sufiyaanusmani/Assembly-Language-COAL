INCLUDE Irvine32.inc

.data
	valX DWORD 10
	valY DWORD 20
.code
	main PROC
		PUSH OFFSET valY
		PUSH OFFSET valX
		call Swap
		mov eax, valX
		call WriteDec
		call Crlf
		mov eax, valY
		call WriteDec
		call Crlf
		exit
	main ENDP

	Swap PROC
		PUSH ebp
		mov ebp, esp
		PUSH eax
		PUSH esi
		PUSH edi
		mov esi, [ebp + 8]
		mov edi, [ebp + 12]
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
