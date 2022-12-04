INCLUDE Irvine32.inc

.data

.code
	main PROC
		PUSH 4
		call Sum
		call WriteDec
		call Crlf
		exit
	main ENDP
	
	Sum PROC
		PUSH ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		cmp eax, 0
		jne recur
		mov eax, 0
		jmp retFun

		recur:
		dec eax
		PUSH eax
		call Sum

		mov ebx, [ebp + 8]
		add eax, ebx

		retFun:
			mov esp, ebp
			POP ebp
			ret 4
	Sum ENDP
	END main