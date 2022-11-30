INCLUDE Irvine32.inc

.data

.code
	main PROC
		PUSH 5
		call Sum
		mov eax, ecx
		call WriteDec
		call Crlf
		exit
	main ENDP

	Sum PROC
		PUSH ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		cmp eax, 0
		jnz recursive
		mov ecx, 0
		jmp return

		recursive:
			dec eax
			PUSH eax
			call Sum

		afterRecursion:
			mov edx, [ebp + 8]
			add ecx, edx

		return:
			POP ebp
			ret 4
	Sum ENDP
	END main
