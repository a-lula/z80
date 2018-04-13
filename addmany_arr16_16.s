.globl _sumarray
_sumarray:         
LDA	HL,2(SP)
LD	A,(HL)
INC	HL
LD	D,(HL)
INC	HL
LD	H,(HL)
LD	L,D	
LD	E,(HL)
INC	HL
LD	D,(HL)
INC	HL
PUSH	DE	
JP	whileloop	
	
whileloop:
CP 	#1
JP	Z,END
DEC	A
LD	C,(HL)
INC	HL
LD	B,(HL)
INC	HL
POP	DE
PUSH	HL
LD	H,D
LD	L,E	
ADD	HL,BC
LD	D,H
LD	E,L
POP	HL
PUSH	DE
JP	whileloop

END:
POP	DE
RET
