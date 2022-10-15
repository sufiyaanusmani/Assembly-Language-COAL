INCLUDE Irvine32.inc

.data
	array DWORD 10h, 20h, 30h, 40h
	msg1 BYTE "Original Array: ",0
	msg2 BYTE "Array Reversed: ",0
.code
	main PROC
		; printing array before reversing
		mov edx, OFFSET msg1
		call WriteString
		mov ecx, LENGTHOF array
		mov esi, OFFSET array
		L1:
			mov eax, [esi]
			call WriteDec
			mov al, " "
			call WriteChar
			add esi, TYPE array
		LOOP L1
		call Crlf
		
		; reversing array
		mov edi, LENGTHOF array - 1
		mov esi, 0
		mov ecx, LENGTHOF array / 2
		reverse:
			mov eax, array[edi * TYPE array]
			xchg eax, array[esi * TYPE array]
			mov array[edi * TYPE array], eax
			inc esi
			dec edi
		LOOP reverse

		; printing array after reversing
		mov edx, OFFSET msg2
		call WriteString
		mov ecx, LENGTHOF array
		mov esi, OFFSET array
		L3:
			mov eax, [esi]
			call WriteDec
			mov al, " "
			call WriteChar
			add esi, TYPE array
		LOOP L3
		call Crlf
		exit
	main ENDP
	END main
