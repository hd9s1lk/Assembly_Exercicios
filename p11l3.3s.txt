.global		sumcoord_point_asm	@export the labels for others modules including the C ones
.type    	sumcoord_point_asm, %function
	 
.equ 		XCOORD, 0*4
.equ 		YCOORD, 1*4
.equ		POINTSIZE, 2*4
.section	.text
@code----------------------------------------------------------------------------~
sumcoord_point_asm:
		.fnstart
		stmfd sp!, {r4-r7, lr}	@push R4-R6 and LR to stack
		mov r4, #0				@sum_x = 0;
		mov r5, #0				@sum_y = 0;
sumloop:
		ldr r6, [r0, #XCOORD]	@get xcoord
		ldr r7, [r0, #YCOORD]	@get ycoord
		add r0, r0, #POINTSIZE
		add r4, r4, r6
		add r5, r5, r7
		subs r1, r1, #1
		bne sumloop
		str r4, [r2]			@store to sum_x
		str r5, [r3]			@store to sum_y
		ldmfd sp!, {r4-r7, pc}	@pop R4-R6 and PC (LR) from stack
		.fnend
.end
