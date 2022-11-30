INCLUDE Irvine32.inc

.data
	

.code
	main PROC
		PUSH 5
		call Factorial
		call WriteDec
		call Crlf
	main ENDP

	Factorial PROC
		PUSH ebp
		mov ebp, esp
		
		; base case
		mov eax, [ebp + 8]
		cmp eax, 0
		jnz callFactorial
		mov eax, 1
		jmp return

		; recursive case
		callFactorial:
		dec eax
		PUSH eax
		call Factorial

		; what to do after returning
		returnFactorial:
		mov ebx, [ebp + 8]
		mul ebx

		; for base case
		return:
		pop ebp
		ret 4
	Factorial ENDP

	END main
