; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 6

; edx = -eax + 1 + ebx - ecx + 0Ah - 65o + 73d

INCLUDE Irvine32.inc

.code
	main PROC
		mov edx, 1
        mov eax, 5      ; random value
        sub edx, eax
        mov ebx, 2      ; random value
        add edx, ebx
        mov ecx, 8      ; random value
        sub edx, ecx
        add edx, 0Ah
        sub edx, 65o
        add edx, 73d

		call DumpRegs
		exit
	main ENDP
	END main