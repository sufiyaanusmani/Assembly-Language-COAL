INCLUDE Irvine32.inc

.data
	arr DWORD 10, 20, 30, 40, 50, 60
	num DWORD 10
	found BYTE "Data found at index: ",0
	notFound BYTE "Data not found",0
	flag BYTE 0
	index DWORD ?

.code
	main PROC
		mov eax, [arr]
		mov ebx, num
		mov esi, 0
		L1:
			cmp esi, LENGTHOF arr
			jge L2
			cmp ebx, arr[esi * TYPE arr]
			je f
			jmp m
			f:
				mov flag, 1
				mov index, esi
			m: inc esi
			jmp L1
		L2:
			cmp flag, 1
			je pF
			jmp pNF
			pF:
				mov edx, OFFSET found
				call WriteString
				mov eax, index
				call WriteDec
				call Crlf
				jmp end1
			pNF:
				mov edx, OFFSET notFound
				call WriteString
				call Crlf
			end1:
				exit
	main ENDP
	END main
