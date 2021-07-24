
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,3 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;MyProject.c,4 :: 		PORTB = 0B00000000;
	CLRF       PORTB+0
;MyProject.c,6 :: 		while(1){
L_main0:
;MyProject.c,7 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;MyProject.c,8 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;MyProject.c,9 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;MyProject.c,10 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;MyProject.c,11 :: 		}
	GOTO       L_main0
;MyProject.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
