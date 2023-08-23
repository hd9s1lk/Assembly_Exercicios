
.global		reverse_asm
type 		reverse_asm, %function
.include 	"equs.S"
.include 	"macros.S"

.gloal 		_start
.section	.text

reverse_asm: 	
		fnstart
		ldr r2, [r0]
		ldr r3, [r1]
		str r2, [r1]
		str r3, [r0]
		bx lr
		fnend





exit: 	mov r7, #OS_EXIT
	mov r0, #NORMAL
	swi 0

.section 	.data
msg: 		.ascii "Teste do assembly:\n"
.end

