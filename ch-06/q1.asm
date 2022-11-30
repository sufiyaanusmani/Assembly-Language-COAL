INCLUDE Irvine32.inc

.data
	N = 10
	i DWORD 0
	j DWORD 60
	k DWORD 70
	arr DWORD N DUP(0)

.code
	main PROC
		mov ecx, N
		mov esi, OFFSET arr
		call fillArray
		call PrintArray
		exit
	main ENDP

	fillArray PROC
		PUSHAD
		call Randomize
		mov i, 0
		L1:
			cmp i, ecx
			jnl L1_end
			mov eax, k
			inc eax
			call RandomRange
			cmp eax, j
			jnge end_if
			cmp eax, k
			jnle end_if
			mov [esi], eax
			inc i
			add esi, TYPE arr
			end_if:
			jmp L1
		L1_end:
		POPAD
		ret
	fillArray ENDP

	PrintArray PROC
		L2:
			mov eax, [esi]
			call WriteDec
			mov al, " "
			call WriteChar
			add esi, TYPE arr
		LOOP L2
		call Crlf
		ret
	PrintArray ENDP

	END main