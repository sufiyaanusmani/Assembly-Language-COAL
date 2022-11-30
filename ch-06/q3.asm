INCLUDE Irvine32.inc

.data

.code
	main PROC
		call Randomize
		mov ecx, 10
		lol:
			mov eax, 101
			call RandomRange
			call WriteDec
			PUSH eax
			mov al, " "
			call WriteChar
			POP eax
			call CalcGrade
			call WriteChar
			call Crlf
		LOOP lol
		exit
	main ENDP

	CalcGrade PROC
		cmp eax, 100
		jng L1
		mov al, "?"
		jmp end_if
		L1:
			cmp eax, 90
			jnge L2
			mov al, "A"
			jmp end_if
		L2:
			cmp eax, 80
			jnge L3
			mov al, "B"
			jmp end_if
		L3:
			cmp eax, 70
			jnge L4
			mov al, "C"
			jmp end_if
		L4:
			cmp eax, 60
			jnge L5
			mov al, "D"
			jmp end_if
		L5:
			cmp eax, 0
			jnge L6
			mov al, "F"
			jmp end_if
		L6:
			mov al,  "?"
		end_if:
		ret
	CalcGrade ENDP

	END main