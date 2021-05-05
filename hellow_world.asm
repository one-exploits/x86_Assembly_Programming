sys_read equ 3
sys_write equ 4
stdout equ 1
stdin equ 0

section .data
section .bss
	input resb 5
section .text
global start

;11100101110
;10010101010 &&
;11011111110

 ;EAX=01000101110000000000101011111110101000111
;nsd EAX=0xFFFFF00000
;01001001010101100000000001110001

start:
	 mov eax,sys_read
	 mov ebx,stdin
	 mov ecx,input
	 mov edx,5
	 int 0x80
         
		mov eax,1
		mov ebx,0
		int 0x80
	
