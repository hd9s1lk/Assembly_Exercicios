.global		distance2D_asm		@export the labels for others modules including the C ones
.type    	distance2D_asm, %function
	 
.equ 		XCOORD, 0*4
.equ 		YCOORD, 1*4
.section	.text
@code----------------------------------------------------------------------------~
distance2D_asm:
		.fnstart
		stmfd sp!, {r4-r9, lr}	@push R4-R6 and LR to stack
		ldr r4, [r0, #XCOORD]	@get xcoord from first point
		ldr r5, [r0, #YCOORD]	@get ycoord from first point
		ldr r6, [r1, #XCOORD]	@get xcoord from second point
		ldr r7, [r1, #YCOORD]	@get ycoord from second point
		sub r8, r4, r6			@sub p1.xcoord to p2.xcoord
		sub r9, r5, r7			@sub p1.ycoord to p2.ycoord
		str r8, [r2]			@store to dx
		str r9, [r3]			@store to dy
		ldmfd sp!, {r4-r9, pc}	@pop R4-R6 and PC (LR) from stack
		.fnend
.end