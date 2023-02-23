*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
        LEA     XSEQ,A0         *A0 points at XSEQ
        MOVE.B  #5,D0           *D0 is the counter of the loop 
        MOVE.B  #9,D1           *D1 is the step required from A0
        LEA     (A0,D1),A1      *A1 points at the 
LOOP    MOVE.B  (A1),D2         *D2 is temporary storage for (A1)
        MOVE.B  (A0),(A1)       *Store the element (A0) in (A1)
        MOVE.B  D2,(A0)+        *Store the temporary value D2 in (A1) then increment A0
        SUB.L   #1,A1           *decrement A1
        SUB.B   #1,D0           *decrement the counter D0
        BNE     LOOP            *Check for next iteration
    SIMHALT             ; halt simulator

* Put variables and constants here
    ORG     $2000
XSEQ    DC.B    1, 3, 4, 6, 10, 12, 30, 31, 32, 33
    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
