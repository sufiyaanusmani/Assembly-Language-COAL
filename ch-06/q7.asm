INCLUDE Irvine32.inc

.data
	lol BYTE "COAL",0
.code
	main PROC
		mov edx, OFFSET lol
		mov ecx, 10
		call Randomize
		L1:
			mov eax, 10
			call RandomRange
			cmp eax, 0
			jnge L2
			cmp eax, 2
			jnle L2
			mov eax, white
			jmp end_if
			L2:
			cmp eax, 3
			jne L3
			mov eax, blue
			jmp end_if
			L3:
			mov eax, green
			end_if:
			call SetTextColor
			call WriteString
			call Crlf
		LOOP L1
		exit
	main ENDP



	END main

	if(n >= 0 && num <= 2){
		color = white;
	}else if(n == 3){
		color = blue;
	}else{
		color = green
	}
