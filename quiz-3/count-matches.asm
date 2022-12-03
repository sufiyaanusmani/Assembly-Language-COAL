INCLUDE Irvine32.inc

CountMatches PROTO, pArray1:PTR DWORD, pArray2:PTR DWORD, n:DWORD

.data
	array1 DWORD 1, 4, 6, 7, 8
	array2 DWORD 4, 4, 6, 3, 8

.code
	main PROC
		INVOKE CountMatches, ADDR array1, ADDR array2, LENGTHOF array1
		call WriteDec
		call Crlf
		exit
	main ENDP

	CountMatches PROC USES esi edi ebx ecx, pArray1:PTR DWORD, pArray2:PTR DWORD, n:DWORD
		mov ecx, n
		mov esi, pArray1
		mov edi, pArray2
		mov eax, 0
		L1:
			mov ebx, [esi]
			cmp ebx, [edi]
			jne cont
			inc eax
			cont:
			add esi, TYPE DWORD
			add edi, TYPE DWORD
		LOOP L1
		ret
	CountMatches ENDP
	END main
