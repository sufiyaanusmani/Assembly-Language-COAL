INCLUDE Irvine32.inc

.data
	
.code
	main PROC
		PUSH 5
		call Factorial
		call WriteDec
		call Crlf
		exit
	main ENDP

	Factorial PROC
		PUSH ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		cmp eax, 0
		jne recur
		mov eax, 1
		jmp returnfun

		recur:
			dec eax
			PUSH eax
			call Factorial

		mov ebx, [ebp + 8]
		mul ebx

		returnfun:
			mov esp, ebp
			POP ebp
			ret 4
	Factorial ENDP
	END main