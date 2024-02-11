#MAKE_EXE#
.model small  

L88: 
mov Al ,02H 
IO_LOOP1:
OUT 0EH,AL
mov CX,1000H
L1:      DEC BX
         NOP
         JNZ L1
         
mov Al , 00H 
IO_LOOP2:
OUT 0EH,AL
mov CX,1000H
L2:      DEC BX
         NOP
         JNZ L2
         
mov Al ,02H 
IO_LOOP3: 
OUT 0EH,AL
mov CX,1000H
L3:      DEC BX
         NOP
         JNZ L3
         
mov Al , 00H
IO_LOOP4: 
OUT 0EH,AL
mov CX,1000H
L4:      DEC BX
         NOP
         JNZ L4 

mov Al ,00H 
IO_LOOP5:
OUT 0EH,AL
mov CX,1000H
L5:      DEC BX
         NOP
         JNZ L5

mov Al ,05H 
IO_LOOP6:
OUT 0EH,AL
mov CX,1000H
L6:      DEC BX
         NOP
         JNZ L6
          
mov Al ,06H 
IO_LOOP7:
OUT 0EH,AL
mov CX,1000H
L7:      DEC BX
         NOP
         JNZ L7

mov Al ,05H 
IO_LOOP8:
OUT 0EH,AL
mov CX,1000H
L8:      DEC BX
         NOP
         JNZ L8

SHL AL,1
JMP L88

.DATA
END 