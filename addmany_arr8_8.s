    .globl _sumarray
    _sumarray:         
    LDA  HL,2(SP)
    LD   A,(HL)
    INC  HL
	
	LD   D,(HL)
    INC  HL
	LD	 H,(HL)
	LD	 L,D
	
	LD	 E,(HL)
	INC	 HL
	LD   D,(HL)
	PUSH DE
	INC  HL
	JP   whileloop
	
	whileloop:

	CP 	 #1
	JP   Z,END
	DEC  A
	

	LD	 C,(HL)
	INC  HL
	LD	 B,(HL)
	INC  HL
	
	POP	 DE
	PUSH HL
	LD   H,D
	LD	 L,E
	
   	ADD  HL,DE
	MOV	 D,H
	MOV	 E,L
	POP  HL
	PUSH DE
	JP   whileloop

	END:
	# LD  D,#0
	POP  DE
	RET
