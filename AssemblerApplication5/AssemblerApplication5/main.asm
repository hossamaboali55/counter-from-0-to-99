.include "m328pdef.inc"
.cseg
.org 0x00
   
   ldi R16,0x00
   out DDRD,R16
   ldi R16,0xFF
	ldi R18,0x00
    out DDRC,R16
    out DDRB,R16
	OUT DDRD,R18
	ldi R16,0x00
	L2:
	 OUT PORTC,R18
		ldi R19,10
	out PORTB,R16
	IN R17,PORTB
L1:
 call Delay 
    sbic PIND,0
	rjmp L1
	ldi R16,9
	 sub R16,R17
	 BREQ HERE
	 INC R17
	 out PORTB,R17  	   
	 JMP L1
HERE:		
    INC R18
      sub R19,R18
     BREQ FINISH 
      JMP L2	
 FINISH : JMP FINISH
  Delay: ldi R23,20
Loop3:  Ldi R22, 60
Loop2:  Ldi R21,60
Loop1:  Dec R21
   Brne Loop1
   Dec R22
    Brne Loop2
  Dec R23
  Brne Loop3
   Ret


  

