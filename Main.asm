; Main.asm
; Name: Kutay Sayil & Cypher Miller
; UTEid: ks48624	cam7937
; Continuously reads from x4600 making sure its not reading duplicate
; symbols. Processes the symbol based on the program description
; of mRNA processing.
               .ORIG x4000
; initialize the stack pointer
	AND R6, R6, #0
	LD R6, pointer

; set up the keyboard interrupt vector table entry
	LD R0, intrloc
	STI R0, ivt


; enable keyboard interrupts
	LD R0, intable
	STI R0, kbsrloc
	

; start of actual program

	BRnzp #-1
	TRAP x25

pointer	.FILL x4000
intrloc	.FILL x2600
ivt	.FILL x0180
kbsrloc	.FILL xFE00
intable	.FILL x4000
		.END
