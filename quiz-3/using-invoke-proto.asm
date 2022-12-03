INCLUDE Irvine32.inc

FindLargest PROTO, ptrArray:PTR SDWORD, n:DWORD

.data
	array SDWORD 2, 4, 9, 43, 9, 0, 8

.code
	main PROC
		INVOKE FindLargest, ADDR array, LENGTHOF array
		call WriteDec
		call Crlf
		exit
	main ENDP

	FindLargest PROC USES ecx esi, ptrArray:PTR SDWORD, n:DWORD
		mov ecx, n
		mov esi, ptrArray
		mov eax, [esi]
		dec ecx
		L1:
			cmp [esi], eax
			jle cont
			mov eax, [esi]
			cont:
			add esi, TYPE SDWORD
		LOOP L1
		ret
	FindLargest ENDP
	END main
