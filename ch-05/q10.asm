INCLUDE Irvine32.inc

.data
	N = 10
	array DWORD N DUP(0)

.code
	main PROC
		mov esi, OFFSET array
		mov ecx, N
		call GenerateFibonacci
		mov ecx, N
		mov esi, OFFSET array
		call PrintArray
		exit
	main ENDP

	GenerateFibonacci PROC
		mov eax, 1
		mov ebx, 0

		L1:
			add eax, ebx
			mov edx, eax
			mov eax, ebx
			mov ebx, edx
			mov [esi], eax
			add esi, TYPE array
		LOOP L1
		ret
	GenerateFibonacci ENDP

	PrintArray PROC
		L2:
			mov eax, [esi]
			call WriteDec
			mov al, " "
			call WriteChar
			add esi, TYPE array
		LOOP L2
		call Crlf
		ret
	PrintArray ENDP
	END main