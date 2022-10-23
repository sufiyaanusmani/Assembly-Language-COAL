; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 3

INCLUDE Irvine32.inc

.data
	val byte "Generating 10 integer 0 to 4293967294:",0
	val2 byte "Generating 10 integer -50 to +49:",0
.code
	main PROC
		mov edx,OFFSET val
		call WriteString
		mov ecx,10
		call Randomize
		mov eax,+4294967294

		l1:
			call Randomrange
			call WriteInt
			call Crlf
		LOOP l1
		mov edx,OFFSET val2
		call WriteString
		call Crlf
		mov ecx,10
		mov eax,100
		l2:
			call RandomRange
			sub eax,50
			call WriteInt
			call Crlf
			mov eax,100
		LOOP l2
		exit
	main ENDP
	END main