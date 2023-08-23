@program to interact with a C function and printf direct call
.include	"equs.S"
.include	"macros.S"

.equ		VALOR1, 1100
.equ		VALOR2, 1200

.global		_start

.section	.text
@program entry------------------------------------------------------------------
_start:
		mov r0, #VALOR1		
		mov r1, #VALOR2
		call cmax	
		mov r3, r0
		ldr r0, =msg	
		call printf

exit:	mov r7, #OS_EXIT
		mov r0, #NORMAL
		swi 0
@data---------------------------------------------------------------------------
.section	.data
msg:	.asciz "O maior número entre %d e %d == %d\n"
.end