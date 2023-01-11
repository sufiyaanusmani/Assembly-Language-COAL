; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 1

INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter marks: ", 0
    msg2 BYTE "You grade is ", 0
    msg3 BYTE "Invalid marks entered", 0
.code
    main PROC
        start:
        mov edx, OFFSET msg1
        call WriteString
        call ReadInt
        cmp eax, 60
        jg Invalid
        cmp eax, 48
        jge gradeA
        cmp eax, 39
        jge gradeB
        cmp eax, 30
        jge gradeC
        cmp eax, 24
        jge gradeD
        jmp gradeF
        gradeA:
            mov al, 'A'
            jmp gradeShow
        gradeB:
            mov al, 'B'
            jmp gradeShow
        gradeC:
            mov al, 'C'
            jmp gradeShow
        gradeD:
            mov al, 'D'
            jmp gradeShow
        gradeE:
            mov al, 'E'
            jmp gradeShow
        gradeF:
            mov al, 'F'
        gradeShow:
            mov edx, OFFSET msg2
            call WriteString
            call WriteChar
            jmp quit
        invalid:
            mov edx, OFFSET msg3
            call WriteString
            call Crlf
            jmp start
        quit:
            call Crlf
        exit
    main ENDP
    END main