INCLUDE Irvine32.inc

.data
	arr DWORD 10, 20, 30, 40, 50, 60
	num DWORD 60
	found BYTE "Data found at index: ",0
	notFound BYTE "Data not found",0
	flag BYTE 0
	index DWORD ?
	size1 = LENGTHOF arr

.code
	main PROC
		mov esi, 0
		mov ebx, num
		L1:
			cmp esi, size1
			jge L1end
			cmp arr[esi * TYPE arr], ebx
			jne else1
			mov flag, 1
			jmp L1end
			else1:
			inc esi
			jmp L1
		L1end:

		cmp flag, 1
		jne notFoundL
		mov edx, OFFSET found
		jmp end1
		notFoundL:
		mov edx, OFFSET notFound
		end1:
			call WriteString
			mov eax, esi
			call WriteDec
			call Crlf
		exit
	main ENDP
	END main
