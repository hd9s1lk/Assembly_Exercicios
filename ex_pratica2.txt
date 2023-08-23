.global		_start
.section	.text
_start:		mov r7, #4
		mov r0, #1
		ldr r1, =out
		mov r2, #6
		swi 0
		mov r7, #1
		mov r0, #0
		swi 0
.section	.data
out:		.ascii "Output Assembly\n"
.end
