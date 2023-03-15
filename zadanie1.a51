ljmp start
			
org 0100h
	start:	
	
	
	
	
	
;____________________________________________8-bitowe
		;____________________________________dodawanie
		mov a, #20h  ;dodawanie
		mov b, #30h
		add a, b
		mov r0,a ; zmienic na adres diody


		;____________________________________odejmowanie
		mov a, #40h  
		mov b, #30h
		clr c
		subb a, b
		mov r1,a	;zmienic na p cos tam


		;_____________________________________mnozenie
		mov a,#0f0h
		mov r0,a
		mov b,#0f0h
		mov r1,b
		mul ab
		
		mov r2,a	;mlodszy bit
		mov r3,b	;starszy bit
		;zmienic na p cos tam
	

		;_____________________________________dzielenie
		mov a, #39h  
		mov b, #03h
		div ab
		mov r3,a	;zmienic na p cos tam










;____________________________________________16-bitowy
		;____________________________________dodawanie
		mov r0,#10h
		mov r1,#21h   ;liczba 1021
		
		mov r2,#52h
		mov r3,#39h   ;liczba 5239
		
		mov a,r1
		add a,r3
		mov r7,a	;starsza czesc wyniku
		mov a,r0
		addc a,r2
		mov r6,a	;mlodsza czesc wyniku
	
	



		;____________________________________odejmowanie  234a-1ef5
		mov a,#4ah
		clr c
		subb a,#0f5h
		mov r1,a
		mov a,#23h
		subb a,#1eh
		mov r0,a
		
		
		
		
		;____________________________________mnozenie 4559*ac01=2e981159
		mov r0,#45h
		mov r1,#59h
		
		mov r2,#0ach
		mov r3,#01h

		
		mov a,r1
		mov b,r3
		mul ab
		mov r4,a
		mov r5,b
		
		
		mov a,r3
		mov b,r0
		mul ab
		clr c
		add a,r5
		mov r5,a
		mov a,b
		addc a,#00h
		mov r6,a
		
		mov a,r1
		mov b,r2
		mul ab
		clr c
		add a,r5
		mov r5,a
		mov a,b
		addc a,r6
		mov r6,a
		mov a,#00h
		addc a,#00h
		mov r7,a
		
		
		mov a,r0
		mov b,r2
		mul ab
		clr c
		add a,r6
		mov r6,a
		mov a,b
		addc a,r7
		mov r7,a
		
		
		
				
		;____________________________________dzielenie 1f32:03=0a66  odpowiedz na [r3][r4]
		mov r0,#1fh
		mov r1,#32h
		mov r2,#03h
		
		mov a,r0
		mov b,r2
		div ab
		mov r3,a
		
		mov a,#10h
		mul ab
		mov r7,a
		mov a,r1
		mov b,#10h
		div ab
		add a,r7
		
		mov b,r2
		div ab
		mov r4,a
		
		mov a,#10h
		mul ab
		mov r7,a
		mov a,r1
		mov b,#10h
		div ab
		mov a,r7
		add a,b
		
		mov b,r2
		div ab
		
		mov r5,a
		
		mov a,r4
		mov b,#10h
		mul ab
		mov b,r5
		add a,b
		mov r4,a
	
		
		
		


		
	nop
	nop
	nop
	jmp $
	end start