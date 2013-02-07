section .data
    hello:     db 'Hello world',10   
    helloLen:  equ $-hello             ; Length of the 'Hello world' string
                                       

section .text
    global main

main:
    mov eax,4            ; The system call for write 
    mov ebx,1            
    mov ecx,hello        ; Put the offset of hello in ecx
    mov edx,helloLen    
                         ; move length of hello to edx
    int 80h              

    mov eax,1            ; The system call for exit 
    mov ebx,0            
    int 80h
