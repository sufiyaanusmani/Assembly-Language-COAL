INCLUDE Irvine32.inc

.data
	N = 10
	i DWORD 0
	j DWORD 30
	k DWORD 70
	arr DWORD 10, 20, 30, 34, 36, 40, 50, 23, 12, 122
	sum DWORD 0

.code
	main PROC
		mov esi, OFFSET arr
		mov ecx, LENGTHOF arr
		mov eax, 0
		call SumArray
		mov sum, eax
		call WriteDec
		call Crlf
		exit
	main ENDP

	SumArray PROC
		L1:
			mov ebx, [esi]
			cmp ebx, j
			jnge loop_end
			cmp ebx, k
			jnle loop_end
			add eax, [esi]
			loop_end:
			add esi, TYPE arr
		LOOP L1
		ret
	SumArray ENDP
	END main