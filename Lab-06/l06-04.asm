; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 4

INCLUDE Irvine32.inc

BUFFER_SIZE = 501

.data
    buffer BYTE BUFFER_SIZE DUP(?)
    filename BYTE "mytask4.txt",0
    fileHandle HANDLE ?
    stringLength DWORD ?
    bytesWritten DWORD ?
    str2 BYTE "Bytes written to file [mytask4.txt]: ",0
    str3 BYTE "Enter up to 500 characters and press"
         BYTE "[Enter]: ", 0dh, 0ah, 0
.code
    main PROC
        mov edx, OFFSET filename
        call CreateOutputFile
        mov fileHandle, eax
        mov edx, OFFSET str3  ; "Enter upto..."
        call WriteString
        mov ecx, BUFFER_SIZE  ; Input a string
        mov edx, OFFSET buffer
        call ReadString
        mov stringLength, eax
        mov eax, fileHandle
        mov edx, OFFSET buffer
        mov ecx, stringLength
        call WriteToFile
        mov bytesWritten, eax
        call CloseFile
        mov edx, OFFSET str2
        call WriteString
        mov eax, bytesWritten
        call WriteDec
        call Crlf
        exit
    main ENDP
    END main