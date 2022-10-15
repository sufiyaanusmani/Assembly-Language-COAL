INCLUDE Irvine32.inc

.data
	marks DWORD 85
.code
	main PROC
		mov eax, marks
		cmp eax, 90
		jl L1
		mov al, "A"
		call WriteChar
		jmp end1
		L1:
		cmp eax, 80
		jl L2
		mov al, "B"
		call WriteChar
		jmp end1
		L2:
		cmp eax, 70
		jl L3
		mov al, "C"
		call WriteChar
		jmp end1
		L3:
		mov al, "D"
		call WriteChar
		end1:
		call Crlf
		exit
	main ENDP
	END main
