section .data

message1:db "Enter the age",10,0

age: dd 18
age2: dd 0

message2:db "person is eligible for voting",10,0
message3:db "person is not eligibile for voting",10,0
msg3:db "%d"

section .text

global main
extern printf
extern scanf

main:
push ebp       
mov ebp,esp
push message1
call printf
push DWORD age2
push msg3
call scanf

mov eax,[age2]     
cmp eax,[age]
jge .label1
push message3
call printf
jmp .done

.label1:
push message2
call printf
jmp .done

.done:
mov esp,ebp;
pop ebp
ret
