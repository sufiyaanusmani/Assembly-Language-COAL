; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

INCLUDE Irvine32.inc

key = 239
BUFMAX = 128
.data
    sprompt BYTE "Enter the plain text: ", 0
    sencrypt BYTE "Cipher Text: ", 0
    sdecrypt BYTE "Decrypted: ", 0
    buffer BYTE BUFMAX DUP(0)
    bufsize DWORD ?

.code
    main PROC
        call inputthestring
        call translatebuffer
        mov edx, OFFSET sencrypt
        call displaymsg
        call translatebuffer
        mov edx, OFFSET sdecrypt
        call displaymsg
        exit
    main ENDP

    inputthestring PROC
        pushad
        mov edx, OFFSET sprompt
        call WriteString
        mov ecx, BUFMAX
        mov edx, OFFSET buffer
        call ReadString
        mov bufsize, eax
        call Crlf
        popad
        ret
    inputthestring ENDP

    displaymsg PROC
        pushad
        call WriteString
        mov edx, OFFSET buffer
        call WriteString
        call Crlf
        popad
        ret
    displaymsg ENDP

    translatebuffer PROC
        pushad
        mov ecx, bufsize
        mov esi, 0
        L1:
            xor buffer[esi], key
            inc esi
        LOOP L1
        popad
        ret
    translatebuffer ENDP
    END main