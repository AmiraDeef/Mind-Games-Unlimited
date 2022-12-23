.MODEL small
.STACK
.386 
;home messages--------------------------------
.DATA    
HMS DB  10,10,'       ******************************************************************',10,'$'
HMS1 DB 10,10,'                        WELCOME TO MIND GAMES UNLIMITED                     ','$'
HMS2 DB 10,10,10,'       ******************************************************************',10,'$'
HMS3 DB 10,10,'-> Please, Choose Game and Enter its Number:',10,10, '       1-MATH PATTERN GAME',10,10,'       2-WORD GUESSING GAME',10,'$'
HMS5 DB 10,'       4-TRIANGLE MATH PUZZLES GAME',10,'$'
HMS4 DB 10,'       3-PYRAMID MATH PUZZLES GAME',10,'$'
HMS8 DB 10,10,'-> Please, Enter a Valid Number: ','$'
HMS9 DB 10,10,'1-Back                     2-Exit',10,'$'
mea db 10,10,13,'Made By: Eman Wgeeh, Amira Deef, Mai El-Khodery','$'
;--------------------------------------------
;data of math pattern game
;MESSAGES------------------------------------
MSG1 DB 10,'************************* WELCOME TO MATH PATTERN GAME *************************',10,'$'
MSG2 DB 10,'Rules: ',10,'$'
MSG3 DB 10,'-* Observe The Pattern And Choose The Right Answer.',10,'$'
MSG4 DB '-* For Every Right Answer You Will Get 1 Point.',10,'$'
MSG5 DB 10,'Press Enter To Start The Game: ','$'
MSG6 DB 10,'********** Bravo, Right Answer **********',10,'$'
MSG7 DB 10,'********** Wrong Answer! ***************',10,'$'
MSG8 DB 10,10,10,'______________________ YOU FINISHED THE GAME SUCCESSFULLY ______________________',10,'$'
MSG9 DB 10,10,'Your Total Score is: ','$'
MSG10 DB 10,10,10,'_________________________________',03,' Thank You ',03,'__________________________________',10,'$'
;FIRST QUESTION------------------------------
Q1  DB 10,'1. 3+6=12','$'
Q11 DB 10,'   6+8=20','$'
Q12 DB 10,'   8+11=?',10,'$'
QA1 DB 10,'   a) 22    b) 16    c) 27','$'
;SECOND QUESTION-----------------------------
Q2  DB 10,'2. 1+4=5','$'
Q21 DB 10,'   2+5=12','$'
Q22 DB 10,'   3+6=21','$'
Q23 DB 10,'   8+11=?',10,'$'
QA2 DB 10,'   a) 96    b) 84    c) 92','$'
;THIRD QUESTION------------------------------
Q3  DB 10,'3. 6+8=70','$'
Q31 DB 10,'   3+7=52','$'
Q32 DB 10,'   9+4=25','$'
Q33 DB 10,'   1+5=?',10,'$'
QA3 DB 10,'   a) 24    b) 18    c) 26','$'
;FORTH QUESTION------------------------------
Q4  DB 10,'4. 11+11=3','$'
Q41 DB 10,'   23+14=11','$'
Q42 DB 10,'   31+25=10','$'
Q43 DB 10,'   42+10=?',10,'$'
QA4 DB 10,'   a) 7    b) 9    c) 11','$'
;FIFTH QUESTION------------------------------
Q5  DB 10,'5. 1+1=5','$'
Q51 DB 10,'   3+3=45','$'
Q52 DB 10,'   5+5=125','$'
Q53 DB 10,'   6+6=?',10,'$'
QA5 DB 10,'   a) 180    b) 216    c) 150','$'
;-----------------------------------------------------
;data of word guessing game
ms1 DB 10,"************************ WELCOME TO WORD GUESSING GAME *************************",10,"$"
ms2 DB 10,"Rules: ",10,"$"
ms3 DB 10,"-* Use All Letters To GUESS Only One Word.","$"
ms4 DB 10,"-* For Every Right Answer You Will Get 1 Point.",10,"$"
ms5 DB 10,"Press Enter To Start The Game: ","$"
hi db  "Let's Play, My Frind!",10,10,"$"
msgw1 db 0ah,0dh,"*-1. The 1st Group of Random Letters: ","$"
msgw2 db 0ah,0dh,"*-2. The 2nd Group of Random Letters: ","$"
msgw3 db 0ah,0dh,"*-3. The 3rd Group of Random Letters: ","$"
msgw4 db 0ah,0dh,"*-4. The 4th Group of Random Letters: ","$"
msgw5 db 0ah,0dh,"*-5. The 5th Group of Random Letters: ","$"
gw5 db "n","t","i","l","l","g","i","l","n","c","e","e"
len5 equ $ - gw5
ow5 db "i","n","t","e","l","l","i","g","e","n","c","e"
w5 db len5 dup(?)
gw2 db "s","c","c","e","i","e","n"
len2 equ $ - gw2
ow2 db "s","c","i","e","n","c","e"
w2 db len2 dup(?)
gw3 db "c","s","s","u","c","e","s"
len3 equ $ - gw3
ow3 db "s","u","c","c","e","s","s"
w3 db len3 dup(?)
gw4 db "a","b","i","n","r"
len4 equ $ - gw4
ow4 db 'b','r','a','i','n'
w4 db len4 dup(?)
gw1 db "e","a","s","b","s","y","l","m"
len1 equ $ - gw1
ow1 db "a","s","s","e","m","b","l","y"
w1 db len1 dup(?)
p db 48
cor db 0ah,0dh,"******** Correct!, Well Done My Friend ********",10,10,"$"
incor db 0ah,0dh,"******** Sorry!, Wrong Answer :( ********",10,10,"$"
ms8 DB 10,10,'______________________ YOU FINISHED THE GAME SUCCESSFULLY ______________________',10,'$'
ms9 DB 10,'Your Total Score is: ','$'
ms10 DB 10,10,'_________________________________',03,' Thank You ',03,'__________________________________','$'
;-----------------------------------------------------
;data of pyramid math game
pr db  10,'********************* WELCOME TO PYRAMID MATH PUZZLES GAME *********************',10,'$'
prr DB 10,'Rules: ',10,'$'
pr1 db 10,'1. In this Pyramid Math Puzzle, some numbers are arranged in a triangular shape','$'
pr2 db 10,'use your logical reasoning skills to find the relationship between these numbers','$'
pr3 db 10,'2. Then apply the same mathematical formula to find the value of the missing','$'
pr4 db 10,'number which will replace the question mark at the top of the pyramid.','$'
pr5 db 10,'________________________________________________________________________________',10,'$'
pr6 DB 10,'Press Enter To Start The Game: ','$'
pr7 db 10,'Go ahead ',16,10,10,'$'
;num=8 based on mul each two muns
row1 db 1,1,2,4
row2 db 2,2,4
row3 db 4,4
row4 db "? $"
missing_num db 38h
;;;;;;;;;;
;num=17 based on the sum of each two nums
level2_row1 db 1,3,2,1
level2_row2 db 4,5,3
level2_row3 db 9,8
level2_row4 db "? $"
level2_missing_num db 17
;;;;;;;;;
;num = 6 based on the number between each number
level3_row1 db 9,7,5,3
level3_row2 db 8,6,4
level3_row3 db 7,5
level3_row4 db "? $"
level3_missing_num db 6
;;;;;;;;;
; num = 4 based on the sub of each two numbers
level4_row1 db 8,2,3,7
level4_row2 db 6,1,15;15 = ? is the missed number
level4_row3 db 5,3
level4_row4 db 2
level4_missing_num db 4
;;;;;;;;;
; num = 4 based on the sub of each two numbers
level5_row1 db 9,3,1,9
level5_row2 db 3,3,9;15 = ? is the missed number
level5_row3 db 1,3
level5_row4 db "?$"
level5_missing_num db 3
;;;;;;;;;
space4 db "    $"
spacee3 db "   $"
space2 db "  $"
space1 db " $"
space db " $"
new_line db 0ah,0dh,"$"
;;;;;;;;
msg db "-> Enter the missing number: $"
right_answer db 10," -------------- Good, That is right --------------- ",10,"$"
false_answer db 10," -------------- Sorry, Not right -------------- ",10,"$"
continuing db 10,"Do you want to continue?  a)Yes  b)No ....","$",10,10
;-----------------------------------------------------
;data of triangle math game
m1 db 10,'******************** WELCOME TO TRIANGLE MATH PUZZLES GAME *********************',10,'$'
m2 DB 10,'Rules: ',10,'$'
m3 DB 10,'1. In this Triangle Math Puzzle, you are given some numbers around the triangle.','$'
m4 db 10,'2. Your challenge is to study the given number relationship and then find $'
m5 db 10,'the value of the missing number which will replace the question mark.','$'
m6 db 10,'________________________________________________________________________________',10,'$'
m7 DB 10,'Press Enter To Start The Game: ','$'
m8 db 10,'Go ahead ',16,10,10,'$'
;level1..mul of first num by itself - (sum of other numbers)
triangle1 db 2,1,2,1
triangle2 db 3,1,4,4
triangle3 db 1,1,0,15
level1Tri_missingNum db 0
;;;;;;;;;;;;;;;;;;;;
;level2..sum of all numbers
level2_triangle1 db 3,1,2,6
level2_triangle2 db 4,4,1,9
level2_triangle3 db 5,1,15,8 ;(15+30h = ?)
level2Tri_missingNum db 2
;;;;;;;;;;;;;;;;;;;;
;level3..(a+b)*c
level3_triangle1 db 3,1,2,8
level3_triangle2 db 3,0,3,9
level3_triangle3 db 15,2,1,8 ;(15+30h = ?)
level3Tri_missingNum db 6
;;;;;;;;;;;;;;;;;;;;
;level3..(a/b)+c
level4_triangle1 db 8,4,1,3
level4_triangle2 db 3,1,3,6
level4_triangle3 db 6,15,5,7 ;(15+30h = ?)
level4Tri_missingNum db 3
;;;;;;;;;;;;;;;;;;;;
space7 db "       $"
space3 db "   $"
new_lines2 db 0ah,0dh,0ah,0dh,"$"
;new_line db 0ah,0dh,
line db "________________ $"
;right_answer db "that is right $"
;false_answer db " not right $"
;continuing db "do you want to continue?  a)Yes  b)No ....$"
;msg db "Enter the missing number  :  $
end_msg db 10,10,'________________________________',03,' Thank You ',03,'___________________________________','$'
;-----------------------------------------------------

.CODE

    MAIN PROC FAR
    .STARTUP
    
    CALL CLEAR
;print home messages----------------------------------    
    LEA DX,HMS
    CALL PRINT
    
    LEA DX,HMS1
    CALL PRINT
    
    LEA DX,HMS2
    CALL PRINT
    
    LEA DX,HMS3
    CALL PRINT
    
    LEA DX,HMS4
    CALL PRINT
    
    LEA DX,HMS5
    CALL PRINT
;choose number game number-----------------------------      
    CHECK:
    CALL READ 
   
    CMP AL,'1'
    JNE L1
    JMP GAME1
    CALL EXIT
    
    L1:
    CMP AL,'2'
    JNE L2
    JMP GAME2
    
    
    L2:
    CMP AL,'3'
    JNE L3
    JMP GAME3
    
    
    L3:
    CMP AL,'4'
    JNE INVALID
    JMP GAME4
    
     
    GAME1:
     CALL CLEAR
     CALL MATH_PATTERNS
     CALL BACK
     
    GAME2:
     CALL CLEAR
     CALL WORD_GAME
     CALL BACK
 
    GAME3:
     CALL CLEAR
     CALL pyramid_game
     CALL BACK
     
    GAME4:
     CALL CLEAR
     CALL triangle_game
     CALL BACK
     
     
    INVALID:
     LEA DX,HMS8
     CALL PRINT
     CALL CHECK
    
    MAIN ENDP
;----------------------------------------------
;------------------FRIST GAME-----------------
    MATH_PATTERNS PROC NEAR
    
    LEA DX,MSG1
    CALL PRINT
    
    LEA DX,MSG2
    CALL PRINT
    
    LEA DX,MSG3
    CALL PRINT
    
    LEA DX,MSG4
    CALL PRINT
    
    START:
    MOV BL,00H  
    LEA DX,MSG5
    CALL PRINT
    
    MOV AH,01H
    INT 21H
    
    CMP AL,0DH
    JE QSN1
    JNE START
    
;Print First Question------------------------
    QSN1:
    CALL QN1
    CALL INPUT
     
    CMP AL,'c'
    JE QSN2
    JNE QSNW2

    QSN2:
    LEA DX,MSG6
    CALL PRINT
    INC BL
    
;Print Second Question-----------------------    
    CALL QN2 
    CALL INPUT
    
    CMP AL,'a'
    JE QSN3
    JNE QSNW3
    
    QSNW2:
    LEA DX,MSG7
    CALL PRINT
    
    CALL QN2 
    CALL INPUT
    
    CMP AL,'a'
    JE QSN3 
    JNE QSNW3
 
    QSN3:
    LEA DX,MSG6
    CALL PRINT
    
    INC BL
    
;Print Third Question-------------------------    
    CALL QN3 
    CALL INPUT
    
    CMP AL,'c'
    JE QSN4
    JNE QSNW4
    
    QSNW3:
    LEA DX,MSG7
    CALL PRINT
    
    CALL QN3
    CALL INPUT
    
    CMP AL,'c'
    JE QSN4 
    JNE QSNW4

    QSN4:
    LEA DX,MSG6
    CALL PRINT
    INC BL
    
;Print Fourth Question----------------------- 
    CALL QN4 
    CALL INPUT
    
    CMP AL,'b'
    JE QSN5
    JNE QSNW5
    
    QSNW4:
    LEA DX,MSG7
    CALL PRINT
    
    CALL QN4 
    CALL INPUT
    
    CMP AL,'b'
    JE QSN5 
    JNE QSNW5
    
    QSN5:
    LEA DX,MSG6
    CALL PRINT
    
    INC BL
;Print Fifth Question-----------------------    
    CALL QN5 
    CALL INPUT
    
    CMP AL,'a'
    JE FINISH 
    JNE FINISHW   
    
    QSNW5:
    LEA DX,MSG7
    CALL PRINT
   
    CALL QN5 
    CALL INPUT
    
    CMP AL,'a'
    JE FINISH 
    JNE FINISHW
    
;Print Finish and Score------------------------       
    FINISH:
    LEA DX,MSG6
    CALL PRINT
    INC BL
    
    LEA DX,MSG8
    CALL PRINT
    
    CALL SCORE
     
    FINISHW:
    LEA DX,MSG7
    CALL PRINT 
    
    LEA DX,MSG8
    CALL PRINT 
   
    CALL SCORE
    
;Print Thank and Exit--------------------------    
    THANK: 
    LEA DX,MSG10
    CALL PRINT
    call back
    
;---------------------------------   

;Functions Questions Patterns  
    QN1 PROC NEAR
    LEA DX,Q1
    CALL PRINT  
    LEA DX,Q11
    CALL PRINT
    LEA DX,Q12
    CALL PRINT
    LEA DX,QA1
    CALL PRINT 
    RET
    QN1 ENDP
;--------------------------   
    QN2 PROC NEAR
    LEA DX,Q2
    CALL PRINT
    LEA DX,Q21
    CALL PRINT
    LEA DX,Q22
    CALL PRINT
    LEA DX,Q23
    CALL PRINT
    LEA DX,QA2
    CALL PRINT
    RET 
    QN2 ENDP
;--------------------------    
    QN3 PROC NEAR
    LEA DX,Q3
    CALL PRINT
    LEA DX,Q31
    CALL PRINT
    LEA DX,Q32
    CALL PRINT
    LEA DX,Q33
    CALL PRINT
    LEA DX,QA3
    CALL PRINT
    RET
    QN3 ENDP
;--------------------------    
    QN4 PROC NEAR
    LEA DX,Q4
    CALL PRINT
    LEA DX,Q41
    CALL PRINT
    LEA DX,Q42
    CALL PRINT
    LEA DX,Q43
    CALL PRINT
    LEA DX,QA4
    CALL PRINT
    RET
    QN4 ENDP
;--------------------------    
    QN5 PROC NEAR
    LEA DX,Q5
    CALL PRINT
    LEA DX,Q51
    CALL PRINT
    LEA DX,Q52
    CALL PRINT
    LEA DX,Q53
    CALL PRINT
    LEA DX,QA5
    CALL PRINT
    RET 
    QN5 ENDP
;--------------------------    
    
;Function To Calculate Score    
    SCORE PROC NEAR
     LEA DX,MSG9
     CALL PRINT
     ADD BL, 48
    
     CMP BL,57
     MOV AH,02H
     MOV DL, BL
     INT 21H
     JMP THANK
    SCORE ENDP
;--------------------------  
  
;Function To Read Characters    
    INPUT PROC NEAR
      MOV AH,02H
      MOV DL,0AH
      INT 21H   
      MOV DL,0DH
      INT 21H
  
      MOV AH,01H
      INT 21H
      RET
    INPUT ENDP  
;-------------------------- 

    MATH_PATTERNS ENDP
;----------------------------------------------

;------------------SECOND GAME-----------------
    WORD_GAME PROC NEAR
    
    ;welcom messages
    intro:
    lea dx,ms1
    call print
    lea dx,ms2
    call print
    lea dx,ms3
    call print
    lea dx,ms4
    call print
    ent:
    ;start game with pressing enter
    LEA DX,ms5
    CALL PRINT
    CALL READ
    CMP AL,0DH
    je hii
    jne ent
    
    
    hii:
    lea dx,hi
    call print 
    ;the frist question
    ques1:
    lea dx,msgw1
    call print
    mov bx,offset gw1 
    mov cx,len1
    ;print the 1st random letters
    pgw1:
    mov dl,[bx]
    call printc
    inc bx
    mov dl,32
    call printc
    loop pgw1
    ;nl
    mov ah,02h
    mov dl,0AH
    INT 21H   
    mov dl,0DH
    INT 21H
    
    mov si,offset w1
    mov di,offset ow1
    mov cx,len1
    ;accept string from user
    a:
    CALL READ
    mov [si],al
    inc si
    loop a
    
    mov cx,len1
    sub si,len1
    
    ;compare two string
    b:
    mov bl,[di]
    cmp bl,[si]
    jne incorrect1
    inc si
    inc di
    loop b
    mov bl,00
    ;same
    call correct
    jmp ques2
    
    ;not same
    incorrect1:
    lea dx,incor
    call print
    ;the second question
    ques2:
    
    lea dx,msgw2
    call print
    mov bx,offset gw2
    mov cx,len2
    ;print the 2nd random letters
    pgw2:
    mov dl,[bx]
    call printc
    inc bx
    mov dl,32
    call printc
    loop pgw2
    ;nl
    mov ah,02h
    mov dl,0AH
    INT 21H   
    mov dl,0DH
    INT 21H

    mov si,offset w2
    mov di,offset ow2
    mov cx,len2
    
    ;accept string2 from user
    c:
    CALL READ
    mov [si],al
    inc si
    loop c
    
    mov cx,len2
    sub si,len2
    
    ;compare two string
    d:
    mov bl,[di]
    cmp bl,[si]
    jne incorrect2
    inc si
    inc di
    loop d
    ;same
    call correct
    jmp ques3
    
    ;not same
    incorrect2:
    lea dx,incor
    call print
    ;the third question
    ques3:
    lea dx,msgw3
    call print
    mov bx,offset gw3
    mov cx,len3
    
    ;print the 3rd random letters
    pgw3:
    mov dl,[bx]
    call printc
    inc bx
    mov dl,32
    call printc
    loop pgw3
    ;nl
    mov ah,02h
    mov dl,0AH
    INT 21H   
    mov dl,0DH
    INT 21H

    mov si,offset w3
    mov di,offset ow3
    mov cx,len3
    
    ;accept string3 from user
    e:
    CALL READ
    mov [si],al
    inc si
    loop e
    
    mov cx,len3
    sub si,len3
    
    ;compare two string
    f:
    mov bl,[di]
    cmp bl,[si]
    jne incorrect3
    inc si
    inc di
    loop f
    ;same
    call correct
    jmp ques4
    
    ;not same
    incorrect3:
    lea dx,incor
    call print
    ;the fourth question
    ques4:
    lea dx,msgw4
    call print
    mov bx,offset gw4
    mov cx,len4
    ;print the 4th random letters
    pgw4:
    mov dl,[bx]
    call printc
    inc bx
    mov dl,32
    call printc
    loop pgw4
    ;nl
    mov ah,02h
    mov dl,0AH
    INT 21H   
    mov dl,0DH
    INT 21H

    mov si,offset w4
    mov di,offset ow4
    mov cx,len4
    
    ;accept string2 from user
    g:
    CALL READ
    mov [si],al
    inc si
    loop g
    
    mov cx,len4
    sub si,len4
    
    ;compare two string
    h:
    mov bl,[di]
    cmp bl,[si]
    jne incorrect4
    inc si
    inc di
    loop h
    ;same
    call correct
    jmp ques5
    
    ;not same
    incorrect4:
    lea dx,incor
    call print
    ;the fifth question
    ques5:
    lea dx,msgw5
    call print
    mov bx,offset gw5
    mov cx,len5
    
    ;print the 5th random letters
    pgw5:
    mov dl,[bx]
    call printc
    inc bx
    mov dl,32
    call printc
    loop pgw5
    ;nl
    mov ah,02h
    mov dl,0AH
    INT 21H   
    mov dl,0DH
    INT 21H

    mov si,offset w5
    mov di,offset ow5
    mov cx,len5
    
    ;accept string2 from user
    i:
    CALL READ
    mov [si],al
    inc si
    loop i
    
    mov cx,len5
    sub si,len5
    
    ;compare two string
    j:
    mov bl,[di]
    cmp bl,[si]
    jne incorrect5
    inc si
    inc di
    loop j
    ;same
    call correct
    jmp res
    
    ;not same
    incorrect5:
    lea dx,incor
    call print
    ;the result and end msg
    res:
    lea dx,ms8
    call print
    lea dx,ms9
    call print
    mov dl,p
    call printc
    lea dx,ms10
    call print
    call back
    
    WORD_GAME ENDP
;-----------------------------------------------    

;------------------THIRD GAME-----------------
    pyramid_game proc near
    ;first 
    lea dx,pr
    call print
    lea dx, prr
    call print 
    lea dx,pr1
    call print 
    lea dx,pr2
    call print 
    lea dx,pr3
    call print
    lea dx,pr4
    call print
    lea dx,pr5
    call print
    START1:
    MOV BL,00H  
    LEA DX,pr6
    CALL PRINT
    
    CALL READ
    
    CMP AL,0DH
    JE GO
    JNE START1
    GO:
    lea dx,pr7
    call print
    
    ;printing_pyramid1
    lea dx,new_lines2
    CALL PRINT
    mov cx,1
    lea dx,space4
    CALL PRINT
    print_row4:
    lea dx,row4
    CALL PRINT
    loop print_row4
    ;;
    lea dx,new_line
    CALL PRINT
    ;;
    mov cx,2
    lea si,row3
    lea dx,space3
    CALL PRINT
    print_row3:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    lea dx,space
    CALL PRINT
    loop print_row3
    ;;
    lea dx,new_line
    CALL PRINT
    ;;
    mov cx,3
    lea si,row2
    lea dx,space2
    CALL PRINT
    print_row2:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    lea dx,space
    CALL PRINT
    loop print_row2
    ;;
    lea dx,new_line
    CALL PRINT
    ;;
    mov cx,4
    lea si,row1
    lea dx,space1
    CALL PRINT
    print_row1:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    lea dx,space
    CALL PRINT
    loop print_row1
    ;;
    lea dx,new_lines2
    CALL PRINT
    
    ;accepting the answer
    lea dx,msg
    CALL PRINT
    
    mov dl, 10  
    mov bl, 0
    
    scanNum:
      CALL READ
      cmp al, 13   ; Check if user pressed ENTER KEY
      je  answer_msg 
      mov ah, 0  
      sub al, 30h   ; ASCII to DECIMAL
      mov cl, al
      mov al, bl   ; Store the previous value in AL
      mul dl       ; multiply the previous value with 10
      add al, cl   ; previous value + new value ( after previous value is multiplyed with 10 )
      mov bl, al

    jmp scanNum  
    
    answer_msg:
    ;new line
    lea dx,new_line
    CALL PRINT
    ;compare input with missing number 
    add bl,30h
    cmp bl,missing_num
    jne not_right
    lea dx,right_answer
    CALL PRINT
    jmp go_on
    not_right:
    lea dx,false_answer
    CALL PRINT
    
    go_on:
    lea dx,new_line
    CALL PRINT
    
    lea dx,continuing
    CALL PRINT
 
    CALL READ
    lea dx,new_line
    CALL PRINT
    cmp al,61h;compare with letter a
    jne back ;no
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL2
    ;printing_pyramid2
    
    ;make spaces
    lea dx,new_lines2
    CALL PRINT
    lea dx,space4
    CALL PRINT
    ;print row4
    print_level2_row4:
    lea dx,level2_row4
    CALL PRINT
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,spacee3
    CALL PRINT
    ;print row3
    mov cx,2
    lea si,level2_row3
    print_level2_row3:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level2_row3
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space2
    CALL PRINT
    
    mov cx,3
    lea si,level2_row2
    print_level2_row2:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level2_row2
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space1
    CALL PRINT
    
    mov cx,4
    lea si,level2_row1
    print_level2_row1:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level2_row1
    ;new line
    lea dx,new_lines2
    CALL PRINT
    
    ;accepting the answer
    lea dx,msg
    CALL PRINT
    
    mov dl, 10  
    mov bl, 0
    
    scanNum2:
    CALL READ
    cmp al, 13   ; Check if user pressed ENTER KEY
    je  answer_msg2 
    mov ah, 0  
    sub al, 30h   ; ASCII to DECIMAL
    mov cl, al
    mov al, bl   ; Store the previous value in AL
    mul dl       ; multiply the previous value with 10
    add al, cl   ; previous value + new value ( after previous value is multiplyed with 10 )
    mov bl, al

    jmp scanNum2  
    ;print if the answer is right or not
    answer_msg2:
    ;new line
    lea dx,new_line
    CALL PRINT
    ;compare input with missing number 
    cmp bl,level2_missing_num
    jne not_right2
    lea dx,right_answer
    CALL PRINT
    jmp go_on2
    not_right2:
    lea dx,false_answer
    CALL PRINT
    
    go_on2:
    lea dx,new_line
    CALL PRINT
    
    lea dx,continuing
    CALL PRINT
 
    CALL READ
    lea dx,new_line
    CALL PRINT
    cmp al,61h;compare with letter a
    jne back ;no
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL3
    ;printing_pyramid2
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space4
    CALL PRINT
    ;print row4
    print_level3_row4:
    lea dx,level3_row4
    CALL PRINT
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,spacee3
    CALL PRINT
    ;print row3
    mov cx,2
    lea si,level3_row3
    print_level3_row3:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level3_row3
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space2
    CALL PRINT
    
    mov cx,3
    lea si,level3_row2
    print_level3_row2:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level3_row2
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space1
    CALL PRINT
    
    mov cx,4
    lea si,level3_row1
    print_level3_row1:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level3_row1
    ;new line
    lea dx,new_lines2
    CALL PRINT
    
    ;accepting the answer
    lea dx,msg
    CALL PRINT
    
    mov dl, 10  
    mov bl, 0
    
    scanNum3:
    CALL READ
    cmp al, 13   ; Check if user pressed ENTER KEY
    je  answer_msg3 
    mov ah, 0  
    sub al, 30h   ; ASCII to DECIMAL
    mov cl, al
    mov al, bl   ; Store the previous value in AL
    mul dl       ; multiply the previous value with 10
    add al, cl   ; previous value + new value ( after previous value is multiplyed with 10 )
    mov bl, al

    jmp scanNum3  
    ;print if the answer is right or not
    answer_msg3:
    ;new line
    lea dx,new_line
    CALL PRINT
    ;compare input with missing number 
    cmp bl,level3_missing_num
    jne not_right3
    lea dx,right_answer
    CALL PRINT
    jmp go_on3
    not_right3:
    lea dx,false_answer
    CALL PRINT
    
    go_on3:
    lea dx,new_line
    CALL PRINT
    
    lea dx,continuing
    CALL PRINT 
 
    CALL READ
    lea dx,new_line
    CALL PRINT
    cmp al,61h;compare with letter a
    jne back ;no
    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL4
    ;printing_pyramid2
    ;make spaces
    lea dx,new_lines2
    CALL PRINT
    lea dx,space4
    CALL PRINT
    ;print row4
    print_level4_row4:
    mov dl,level4_row4
    add dx,30h
    CALL PRINTC
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,spacee3
    CALL PRINT
    ;print row3
    mov cx,2
    lea si,level4_row3
    print_level4_row3:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level4_row3
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space2
    CALL PRINT
    
    mov cx,3
    lea si,level4_row2
    print_level4_row2:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level4_row2
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space1
    CALL PRINT
    
    mov cx,4
    lea si,level4_row1
    print_level4_row1:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level4_row1
    ;new line
    lea dx,new_lines2
    CALL PRINT
    
    ;accepting the answer
    lea dx,msg
    CALL PRINT

    mov dl, 10  
    mov bl, 0
    
    scanNum4:
    CALL READ
    cmp al, 13   ; Check if user pressed ENTER KEY
    je  answer_msg4 
    mov ah, 0  
    sub al, 30h   ; ASCII to DECIMAL
    mov cl, al
    mov al, bl   ; Store the previous value in AL
    mul dl       ; multiply the previous value with 10
    add al, cl   ; previous value + new value ( after previous value is multiplyed with 10 )
    mov bl, al

    jmp scanNum4  
    ;print if the answer is right or not
    answer_msg4:
    ;new line
    lea dx,new_line
    CALL PRINT
    ;compare input with missing number 
    cmp bl,level4_missing_num
    jne not_right3
    lea dx,right_answer
    CALL PRINT
    jmp go_on4
    not_right4:
    lea dx,false_answer
    CALL PRINT
    
    go_on4:
    lea dx,new_line
    CALL PRINT
    
    lea dx,continuing
    CALL PRINT 
 
    CALL READ
    lea dx,new_line
    CALL PRINT
    cmp al,61h;compare with letter a
    jne back ;no
   
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL5
    ;printing_pyramid2
    ;make spaces
    lea dx,new_lines2
    CALL PRINT
    lea dx,space4
    CALL PRINT
    ;print row4
    print_level5_row4:
    lea dx,level5_row4
    CALL PRINT
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space3
    CALL PRINT
    ;print row3
    mov cx,2
    lea si,level5_row3
    print_level5_row3:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level5_row3
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space2
    CALL PRINT
    
    mov cx,3
    lea si,level5_row2
    print_level5_row2:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level5_row2
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space1
    CALL PRINT
    
    mov cx,4
    lea si,level5_row1
    print_level5_row1:
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    inc si
    ;make space
    lea dx,space
    CALL PRINT
    loop print_level5_row1
    ;new line
    lea dx,new_lines2
    CALL PRINT
    
    ;accepting the answer
    lea dx,msg
    CALL PRINT
    
    mov dl, 10  
    mov bl, 0
    
    scanNum5:
    CALL READ
    cmp al, 13   ; Check if user pressed ENTER KEY
    je  answer_msg5
    mov ah, 0  
    sub al, 30h   ; ASCII to DECIMAL
    mov cl, al
    mov al, bl   ; Store the previous value in AL
    mul dl       ; multiply the previous value with 10
    add al, cl   ; previous value + new value ( after previous value is multiplyed with 10 )
    mov bl, al

    jmp scanNum5  
    ;print if the answer is right or not
    answer_msg5:
    ;new line
    lea dx,new_line
    CALL PRINT
    ;compare input with missing number 
    cmp bl,level5_missing_num
    jne not_right5
    lea dx,right_answer
    CALL PRINT
    jmp go_on5
    not_right5:
    lea dx,false_answer
    CALL PRINT
    
    go_on5:
    lea dx,new_line
    CALL PRINT
    
    call back
    pyramid_game endp  
;--------------------------------------------

;------------------LAST GAME-----------------
    triangle_game proc near
    
    triangle_game:
    ;FIRST GAME
    ;first 
    lea dx,m1
    call print
    lea dx, m2
    call print 
    lea dx,m3
    call print 
    lea dx,m4
    call print 
    lea dx,m5
    call print
    lea dx,m6
    call print
    
    START2:
    MOV BL,00H  
    LEA DX,m7
    CALL PRINT
   
    CALL READ
    CMP AL,0DH
    JE GOO
    JNE START2
    GOO:
    lea dx,m8
    call print
    
    lea si,triangle1
    first_triangle:
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make 7 spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC   
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;make new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_line
    CALL PRINT
    
    lea dx,line
    CALL PRINT
    
    ;second
    lea si,triangle2
    sec_triangle:
    ;make new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;make new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    mov ah,2h
    int 21h
    ;make space
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_line
    CALL PRINT
 
    lea dx,line
    CALL PRINT
    
    ;third
    lea si,triangle3
    third_triangle:
    ;new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make space
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_lines2
    CALL PRINT
    
    ;;accepting the answer
    lea dx,msg
    CALL PRINT
    
    mov dl, 10  
    mov bl, 0
    
    inputNum:
    CALL READ
    ;Check if user pressed ENTER KEY
    cmp al, 13   
    je  reply_msg
    mov ah, 0  
    sub al, 30h
    ;Store the previous value in AL
    mov cl, al
    mov al, bl
    ;multiply the previous value with 10   
    mul dl    
    ;previous value + new value ( after previous value is multiplyed with 10 )
    add al, cl   
    mov bl, al
    jmp inputNum  
    
    reply_msg:
    ;add bl,30h
    cmp bl,level1Tri_missingNum
    jne falseAnswer
    lea dx,right_answer
    CALL PRINT
    jmp askIfWannaContinue
    falseAnswer:
    lea dx,false_answer
    CALL PRINT
    
    askIfWannaContinue:
    lea dx,new_line
    CALL PRINT
    
    lea dx,continuing
    CALL PRINT 
    ;input a(yes) or b(no)
    CALL READ
    lea dx,new_line
    CALL PRINT
    cmp al,61h;compare with letter a
    jne back ;no

    lea dx,new_line
    CALL PRINT
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;SECOND GAME
    ;first 
    lea si,level2_triangle1
    first_triangle2:
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make 7 spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC   
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;make new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make spaces
    lea dx,space7
    CALL PRINT 
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_line
    CALL PRINT
    
    lea dx,line
    CALL PRINT
    
    ;second
    lea si,level2_triangle2
    sec_triangle2:
    ;make new lines
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;make new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make space
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_line
    CALL PRINT
 
    lea dx,line
    CALL PRINT
    
    ;third
    lea si,level2_triangle3
    third_triangle2:
    ;new lines
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make space
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_lines2
    CALL PRINT
    
    ;;accepting the answer
    lea dx,msg
    CALL PRINT
    
    mov dl, 10  
    mov bl, 0
    
    inputNum2:
    CALL READ
    ;Check if user pressed ENTER KEY
    cmp al, 13   
    je  reply_msg2
    mov ah, 0  
    sub al, 30h
    ;Store the previous value in AL
    mov cl, al
    mov al, bl
    ;multiply the previous value with 10   
    mul dl    
    ;previous value + new value ( after previous value is multiplyed with 10 )
    add al, cl   
    mov bl, al
    jmp inputNum2  
    
    reply_msg2:
    cmp bl,level2Tri_missingNum
    jne falseAnswer2
    lea dx,right_answer
    CALL PRINT
    jmp askIfWannaContinue2
    falseAnswer2:
    lea dx,false_answer
    CALL PRINT
    
    askIfWannaContinue2:
    lea dx,new_line
    CALL PRINT
    
    lea dx,continuing
    CALL PRINT 
    ;input a(yes) or b(no)
    CALL READ
    lea dx,new_line
    CALL PRINT
    cmp al,61h;compare with letter a
    jne back ;no

    lea dx,new_line
    CALL PRINT

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;THIRD GAME
    ;first 
    lea si,level3_triangle1
    first_triangle3:
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make 7 spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC   
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;make new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_line
    CALL PRINT
    
    lea dx,line
    CALL PRINT
    
    ;second
    lea si,level3_triangle2
    sec_triangle3:
    ;make new lines
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;make new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make space
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_line
    CALL PRINT
    lea dx,line
    CALL PRINT
    
    ;third
    lea si,level3_triangle3
    third_triangle3:
    ;new lines
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    mov ah,2h
    int 21h
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make space
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_lines2
    CALL PRINT
 
    
    ;;accepting the answer
    lea dx,msg
    CALL PRINT
    
    mov dl, 10  
    mov bl, 0
    
    inputNum3:
    CALL READ
    ;Check if user pressed ENTER KEY
    cmp al, 13   
    je  reply_msg3
    mov ah, 0  
    sub al, 30h
    ;Store the previous value in AL
    mov cl, al
    mov al, bl
    ;multiply the previous value with 10   
    mul dl    
    ;previous value + new value ( after previous value is multiplyed with 10 )
    add al, cl   
    mov bl, al
    jmp inputNum3  
    
    reply_msg3:
    cmp bl,level3Tri_missingNum
    jne falseAnswer3
    lea dx,right_answer
    CALL PRINT
    jmp askIfWannaContinue3
    falseAnswer3:
    lea dx,false_answer
    CALL PRINT
    
    askIfWannaContinue3:
    lea dx,new_line
    CALL PRINT
    
    lea dx,continuing
    CALL PRINT
    ;input a(yes) or b(no)
    CALL READ
    lea dx,new_line
    CALL PRINT
    cmp al,61h;compare with letter a
    jne back ;no

    lea dx,new_line
    CALL PRINT

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;THIRD GAME
    ;first 
    lea si,level4_triangle1
    first_triangle4:
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make 7 spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC    
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;make new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_line
    CALL PRINT
    
    lea dx,line
    CALL PRINT
    
    ;second
    lea si,level4_triangle2
    sec_triangle4:
    ;make new lines
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;make new line
    lea dx,new_line
    CALL PRINT
    ;make space
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make space
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_line
    CALL PRINT
 
    lea dx,line
    CALL PRINT
    
    ;third
    lea si,level4_triangle3
    third_triangle4:
    ;new lines
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the first number
    mov dl,[si]
    add dl,30h
    CALL PRINTC
    ;two new lines
    lea dx,new_lines2
    CALL PRINT
    ;make spaces
    lea dx,space7
    CALL PRINT
    ;print the result of operations/missing number
    mov dl,[si+3]
    add dl,30h
    CALL PRINTC
    ;new line
    lea dx,new_line
    CALL PRINT
    ;make spaces
    lea dx,space3
    CALL PRINT
    ;print second number
    mov dl,[si+1]
    add dl,30h
    CALL PRINTC
    ;make space
    lea dx,space7
    CALL PRINT
    ;print third number
    mov dl,[si+2]
    add dl,30h
    CALL PRINTC
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lea dx,new_lines2
    CALL PRINT
 
    
    ;;accepting the answer
    lea dx,msg
    CALL PRINT
    
    mov dl, 10  
    mov bl, 0
    
    inputNum4:
    CALL READ
    ;Check if user pressed ENTER KEY
    cmp al, 13   
    je  reply_msg4
    mov ah, 0  
    sub al, 30h
    ;Store the previous value in AL
    mov cl, al
    mov al, bl
    ;multiply the previous value with 10   
    mul dl    
    ;previous value + new value ( after previous value is multiplyed with 10 )
    add al, cl   
    mov bl, al
    jmp inputNum4 
    
    reply_msg4:
    cmp bl,level4Tri_missingNum
    jne falseAnswer4
    lea dx,right_answer
    CALL PRINT
    jmp askIfWannaContinue4
    falseAnswer4:
    lea dx,false_answer
    CALL PRINT
    
    askIfWannaContinue4:
    lea dx,new_line
    CALL PRINT
    
    lea dx,end_msg
    CALL PRINT
    
    triangle_game endp
;----------------------------------------------

;ADDETION PROCEDURES
; to print correct msg and inc points
    correct proc near
        mov dx,offset cor
        mov ah,09h
        int 21h
        inc p
        ret   
    correct endp

;print string----------------------------------
    PRINT PROC NEAR
      MOV AH,09H
      INT 21H
      RET
    PRINT ENDP
;print character-------------------------------
    printc proc near
        mov ah,02h
        int 21h
        ret
    printc endp
    
;read characters--------------------------------    
    READ PROC NEAR
     MOV AH,01H
     INT 21H
     RET
    READ ENDP
    
;exit from program------------------------------
    EXIT PROC NEAR
     lea dx,mea
     call print
     MOV AH,4CH
     INT 21H
     RET
     EXIT ENDP
 
;back to home page or exit----------------------     
    BACK PROC NEAR
     LEA DX,HMS9
     CALL PRINT
    
    CHECK1:
     CALL READ
     CMP AL,'1' 
     JNE EXIT1
     JMP MAIN
    
    EXIT1:
     CMP AL,'2'
     JNE INVALID1
     JMP EXIT 
    
    INVALID1:
     LEA DX,HMS8
     CALL PRINT
     CALL CHECK1
     
     RET
    BACK ENDP
    
;clear screen------------------------------
   CLEAR PROC NEAR
    MOV AH,00H
    MOV AL,02H
    INT 10h
    RET
   CLEAR ENDP
 
END MAIN