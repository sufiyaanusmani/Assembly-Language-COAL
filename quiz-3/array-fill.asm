INCLUDE Irvine32.inc

.data
	array DWORD 10 DUP(0)

.code
	main PROC
		PUSH TYPE array
		PUSH 50
		PUSH LENGTHOF array
		PUSH OFFSET array
		call ArrayFill
		PUSH LENGTHOF array
		PUSH OFFSET array
		call PrintArray
		exit
	main ENDP

	ArrayFill PROC
		PUSH ebp
		mov ebp, esp
		PUSHAD
		call Randomize
		mov ecx, [ebp + 12]
		mov edi, [ebp + 8]
		L1:
			mov eax, [ebp + 16]
			call RandomRange
			mov [edi], eax
			add edi, [ebp + 20]
		LOOP L1
		POPAD
		mov esp, ebp
		POP ebp
		ret 16
	ArrayFill ENDP

	PrintArray PROC
		PUSH ebp
		mov ebp, esp
		PUSHAD
		mov ecx, [ebp + 12]
		mov esi, [ebp + 8]
		L1:
			mov eax, [esi]
			call WriteDec
			mov al, " "
			call WriteChar
			add esi, TYPE DWORD
		LOOP L1
		call Crlf
		mov esp, ebp
		POP ebp
		ret 8
	PrintArray ENDP
	END main
