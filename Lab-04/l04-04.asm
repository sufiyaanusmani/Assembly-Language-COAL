; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 4

INCLUDE Irvine32.inc
    
.code
    main PROC
        mov ax, 0FFh
        add ax, 1
		call DumpRegs
        sub ax, 1
		call DumpRegs
        add al, 1
		call DumpRegs
        mov bh, 6Ch
        add bh, 95h
		call DumpRegs
        mov al, 2
        sub al, 3
		call DumpRegs
        inc al
		call DumpRegs
        exit
    main ENDP
    END main