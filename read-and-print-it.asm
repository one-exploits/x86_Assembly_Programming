sys_exit equ 0x1
sys_read equ 0x3
sys_write equ 0x4
stdout equ 0x1
stdin equ 0x0
 
section .data
	prompt db "Enter your name plz :"
	len_prompt equ $-prompt

section .bss
	name resb 0x1E

section .text 
	global main
main:
	mov eax,sys_write
	mov ebx,stdout
	mov ecx,prompt
	mov edx,len_prompt
	int 0x80

;reading.....01010100100101
	mov eax,sys_read
	mov ebx,stdin
	mov ecx,name
	mov edx,0x1E
	int 0x80
;printin....01010110101100000000000010101
			mov eax,sys_write
			mov ebx,stdout
			mov ecx,name
			mov edx,0x1E	
			int 0x80

;exiting..1010101010101111
				mov eax,sys_exit
				mov ebx,0
				int 0x80
