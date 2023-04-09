Include IRVINE32.inc

.data

topbar byte 8 DUP (220), 0
bottombar byte 8 DUP (223), 0
blank byte "        ",0

topleft byte 0
topright byte 0
bottomleft byte 0
bottomright byte 0

topbarx byte 52
bottombarx byte 52

topbarxvel byte 2
bottombarxvel byte 2

pongx byte 56
pongy byte 4

pongxvel byte 0
pongyvel byte 0

upleft byte 0
upright byte 0
downleft byte 0
downright byte 0

collision byte 0
hit byte 0

key0 db " "
key1 db "A"
key2 db "D"
key3 db "J"
key4 db "L"

stopped byte 1

score1 byte 0
score2 byte 0

dancingman1 byte    "                                  o                            ", 0ah, 0dh       
byte                "                                 /|\                           ", 0ah, 0dh      
byte                "                                 / \                           ", 0 

dancingman2 byte   "                               \ o /                           ", 0ah, 0dh  
byte			   "                                 |                             ", 0ah, 0dh  	
byte			   "                                / \                            ", 0

dancingman3 byte   "                                 _ o                           ", 0ah, 0dh  
byte               "                                  /\                           ", 0ah, 0dh  
byte			   "                                 | \                           ", 0

dancingman4 byte   "                                                               ", 0ah, 0dh  
byte			   "                               ___\o                           ", 0ah, 0dh  
byte			   "                              /)  |                            ", 0

dancingman5 byte   "                               __|                             ", 0ah, 0dh  
byte			   "                                 \o                            ", 0ah, 0dh  
byte			   "                                 ( \                           ", 0

dancingman6 byte   "                                 \ /                           ", 0ah, 0dh  
byte			   "                                  |                            ", 0ah, 0dh  
byte			   "                                 /o\                           ", 0

dancingman7 byte   "                                 |__                           ", 0ah, 0dh  
byte			   "                               o/                              ", 0ah, 0dh  
byte			   "                              / )                              ", 0


dancingman8 byte   "                                                               ", 0ah, 0dh  
byte			   "                               o/__                            ", 0ah, 0dh  
byte			   "                               |  (\                           ", 0

dancingman9 byte   "                                 o _                           ", 0ah, 0dh  
byte			   "                                 /\                            ", 0ah, 0dh  
byte			   "                                 / |                           ", 0
 




 player1wins byte " _____  _           __     ________ _____    __  __          _______ _   _  _____ ", 0ah, 0dh
byte			  "|  __ \| |        /\\ \   / /  ____|  __ \  /_ | \ \        / /_   _| \ | |/ ____|", 0ah, 0dh
byte			  "| |__) | |       /  \\ \_/ /| |__  | |__) |  | |  \ \  /\  / /  | | |  \| | (___  ", 0ah, 0dh
byte			  "|  ___/| |      / /\ \\   / |  __| |  _  /   | |   \ \/  \/ /   | | | . ` |\___ \ ", 0ah, 0dh
byte			  "| |    | |____ / ____ \| |  | |____| | \ \   | |    \  /\  /   _| |_| |\  |____) |", 0ah, 0dh
byte			  "|_|    |______/_/    \_\_|  |______|_|  \_\  |_|     \/  \/   |_____|_| \_|_____/ ", 0ah, 0dh, 0


player2wins byte    " _____  _           __     ________ _____    ___   __          _______ _   _  _____ ", 0ah, 0dh
 byte				"|  __ \| |        /\\ \   / /  ____|  __ \  |__ \  \ \        / /_   _| \ | |/ ____|", 0ah, 0dh
 byte				"| |__) | |       /  \\ \_/ /| |__  | |__) |    ) |  \ \  /\  / /  | | |  \| | (___  ", 0ah, 0dh
 byte				"|  ___/| |      / /\ \\   / |  __| |  _  /    / /    \ \/  \/ /   | | | . ` |\___ \ ", 0ah, 0dh
 byte				"| |    | |____ / ____ \| |  | |____| | \ \   / /_     \  /\  /   _| |_| |\  |____) |", 0ah, 0dh
 byte				"|_|    |______/_/    \_\_|  |______|_|  \_\ |____|     \/  \/   |_____|_| \_|_____/ ", 0ah, 0dh, 0
                                                                                     
                                                                                                                                                                        



start byte "   __          __  _                            _          _____   ____  _   _  _____ ", 0dh, 0ah
byte       "   \ \        / / | |                          | |        |  __ \ / __ \| \ | |/ ____|", 0dh, 0ah
byte       "    \ \  /\  / /__| | ___ ___  _ __ ___   ___  | |_ ___   | |__) | |  | |  \| | |  __ ", 0dh, 0ah
byte       "     \ \/  \/ / _ \ |/ __/ _ \| '_ ` _ \ / _ \ | __/ _ \  |  ___/| |  | | . ` | | |_ |", 0dh, 0ah
byte       "      \  /\  /  __/ | (_| (_) | | | | | |  __/ | || (_) | | |    | |__| | |\  | |__| |", 0dh, 0ah
byte       "       \/  \/ \___|_|\___\___/|_| |_| |_|\___|  \__\___/  |_|     \____/|_| \_|\_____|", 0dh, 0ah
byte	0dh, 0ah, 0dh, 0ah, 0dh, 0ah

 byte "                ____  ____  _____ ____ ____    ____  ____   _    ____ _____ ", 0dh, 0ah
 byte "               |  _ \|  _ \| ____/ ___/ ___|  / ___||  _ \ / \  / ___| ____|", 0dh, 0ah
 byte "               | |_) | |_) |  _| \___ \___ \  \___ \| |_) / _ \| |   |  _|  ", 0dh, 0ah
 byte "               |  __/|  _ <| |___ ___) |__) |  ___) |  __/ ___ \ |___| |___ ", 0dh, 0ah
 byte "               |_|   |_| \_\_____|____/____/  |____/|_| /_/   \_\____|_____|", 0dh, 0ah, 0
                                                              
                                                                                                                                                                                                                                               
                                                                                                                                                   

.code
MAIN PROC
mov dl, 0
mov dh, 0
call gotoxy

mov edx, offset start
call writestring
mov al, 1

startmenu:
call readchar
cmp al, " "
jne startmenu

first:
mov score1, 0
mov score2, 0

begin:
	call clearscreen
	
	call drawcorners
	call drawtop
	call drawground
	call drawright
	call drawleft


	call drawtopbar
	call drawbottombar
	call drawpong
	call scoreprint

gameloop:
	
	call drawnothing
	call drawtopbar
	call drawbottombar
	call movepong
	call drawpong
	call drawnothing

	mov eax, 30
	call delay

	INVOKE GETKEYSTATE, key0
	and al, 80H
	cmp al, 0
	je spacenotpressed
	cmp stopped, 1
	jne spacenotpressed
	cmp pongy, 14
	jl less
	jg greater
	less:
	mov pongyvel, 1
	mov pongxvel, 1
	jmp skip
	greater:
	mov pongyvel, -1
	mov pongxvel, -1
	skip:
	mov stopped, 0
	spacenotpressed:

	INVOKE GETKEYSTATE, key3
	and al, 80H
	cmp al, 0
	je next
	mov bottomleft,0
	jmp exitt
	next:
	mov bottomleft,1
	exitt:

	INVOKE GETKEYSTATE, key4
	and al, 80H
	cmp al, 0
	je next1
	mov bottomright,0
	jmp exitt1
	next1:
	mov bottomright,1
	exitt1:

	INVOKE GETKEYSTATE, key1
	and al, 80H
	cmp al, 0
	je next2
	mov topleft,0
	jmp exitt2
	next2:
	mov topleft,1
	exitt2:

	INVOKE GETKEYSTATE, key2
	and al, 80H
	cmp al, 0
	je next3
	mov topright,0
	jmp exitt3
	next3:
	mov topright,1
	exitt3:

	cmp bottomleft,1
	je ext
	call drawbottomblank
	mov al, bottombarxvel
	sub bottombarx, al
	ext:

	cmp bottomright,1
	je ext1
	call drawbottomblank
	mov al, bottombarxvel
	add bottombarx, al
	ext1:

	cmp topleft,1
	je ext2
	call drawtopblank
	mov al, topbarxvel
	sub topbarx, al
	ext2:

	cmp topright,1
	je ext3
	call drawtopblank
	mov al, topbarxvel
	add topbarx, al
	ext3:
	
	call barcollide
	call checkbarboundaries
	call checkpongwalls

	call checkroofandfloor
	cmp collision,1
	jne nxt
	call collisionhandler
	nxt:

	cmp score1, 7
	je exitgame
	cmp score2, 7
	je exitgame

jmp gameloop

exitgame:
mov eax, 100
call delay

call clearscreen

mov dl, 0
mov dh, 0
call GOTOXY

cmp score1, 7
jne elsedothis
mov edx, offset player1wins
jmp exiting
elsedothis:
mov edx, offset player2wins
exiting:

call writestring
mov ebx, 0

win:

INVOKE GETKEYSTATE, KEY0
and al, 80H
cmp al, 80H
jne skipthis
jmp first
skipthis:
cmp ebx, 9
jne dancing
mov ebx, 0
dancing:
call dancingman 
inc ebx
jmp win



EXIT
MAIN ENDP

drawnothing proc
	mov dl, 0
	mov dh, 0
	call Gotoxy
	mov al , ' '
	call writechar
	ret
drawnothing endp

drawtopblank proc
	mov dl, topbarx
	mov dh, 2
	call Gotoxy 
	mov edx, offset blank
	call writestring
	ret
drawtopblank endp

drawbottomblank proc
	mov dl, bottombarx
	mov dh, 27
	call Gotoxy 
	mov edx, offset blank
	call writestring
	ret
drawbottomblank endp

drawtopbar proc
	mov dl, topbarx
	mov dh, 2
	call Gotoxy
	mov edx, offset topbar
	call writestring
	ret
drawtopbar endp

drawbottombar proc
	mov dl, bottombarx
	mov dh, 27
	call Gotoxy
	mov edx, offset bottombar
	call writestring
	ret
drawbottombar endp

drawpong proc
	mov dl, pongx
	mov dh, pongy
	call Gotoxy
	mov al, 254
	call writechar
	ret
drawpong endp

drawleft proc
	mov ecx, 28
	mov dl, 20
	
	l1:
	mov al, 219
	mov dh, cl
	call Gotoxy
	call writechar
	loop l1
	ret
drawleft endp

drawright proc
	mov ecx, 28
	mov dl, 95
	
	l1:
	mov al, 219
	mov dh, cl
	call Gotoxy
	call writechar
	loop l1
	ret
drawright endp

drawtop proc
	mov ecx, 74
	mov dl, 21
	mov dh, 0
	
	l1:
	mov al, 220
	call Gotoxy
	call writechar
	inc dl
	loop l1
	ret
drawtop endp

drawground proc
	mov ecx, 74
	mov dl, 21
	mov dh, 29
	
	l1:
	mov al, 223
	call Gotoxy
	call writechar
	inc dl
	loop l1
	ret
drawground endp

drawcorners proc
	; bottom left corner
	mov dl, 20
	mov dh, 29
	call Gotoxy
	mov al, 223
	call writechar
	
	; bottom right corner
	mov dl, 95
	mov dh, 29
	call Gotoxy
	mov al, 223
	call writechar
	
	; top left corner
	mov dl, 20
	mov dh, 0
	call Gotoxy
	mov al, 220
	call writechar
	
	; top right corner
	mov dl, 95
	mov dh, 0
	call Gotoxy
	mov al, 220
	call writechar
	ret
drawcorners endp

checkbarboundaries proc
	cmp topbarx, 21
	jg next
	mov topbarx, 21
	call drawleft
	next:
	cmp topbarx, 87
	jl ext
	mov topbarx, 87
	call drawright
	ext:

	cmp bottombarx, 21
	jg next1
	mov bottombarx, 21
	call drawleft
	next1:
	cmp bottombarx, 87
	jl ext1
	mov bottombarx, 87
	call drawright
	ext1:

	ret
checkbarboundaries endp

pongblank proc
	mov dl, pongx
	mov dh, pongy
	call Gotoxy
	mov al, 32
	call writechar
	ret
pongblank endp

movepong proc
	call pongblank

	movsx eax, pongxvel
	movsx ebx, pongyvel

	add pongx, al
	add pongy, bl
	ret
movepong endp

barcollide proc
	cmp pongy, 3
	jne checknext
	mov al, topbarx 
	add al, -1
	cmp pongx, al
	jnge checknext
	add al, 9
	cmp pongx, al 
	jnle checknext
	mov al, pongyvel
	mov bl, -1
	MUL bl
	mov pongyvel , al
	mov eax, 2
	call randomrange
	cmp eax, 0
	mov bl, -1
	je true1
	mov bl, 1
	true1:
	mov al, pongxvel
	MUL bl
	mov pongxvel, al

	checknext:
	cmp pongy, 26
	jne ext
	mov al, bottombarx 
	add al, -1
	cmp pongx, al
	jnge ext
	add al, 9
	cmp pongx, al
	jnle ext
	mov al, pongyvel
	mov bl, -1
	MUL bl
	mov pongyvel, al
	mov eax, 2
	call randomrange
	cmp eax, 0
	mov bl, -1
	je true2
	mov bl, 1
	true2:
	mov al, pongxvel
	MUL bl
	mov pongxvel, al


	ext:
	ret
barcollide endp


checkpongwalls proc
	mov bl, -1
	cmp pongx, 93
	jl next
	mov al, pongxvel
	MUL bl
	mov pongxvel , al
	call drawright
	jmp ext
	
	next:
	cmp pongx, 22
	jg ext
	mov al, pongxvel
	MUL bl
	mov pongxvel, al
	call drawleft
	ext:

	ret
checkpongwalls endp

checkroofandfloor proc
	cmp pongy, 1
	jg next
	mov collision, 1
	next:
	cmp pongy, 28
	jl ext
	mov collision, 1
	ext:
	ret
checkroofandfloor endp

collisionhandler proc
	call scoreupdate
	call stop
	mov collision, 0
	ret
collisionhandler endp

scoreupdate proc
	cmp pongy, 14
	jl less
	jg greater

	less:
	inc score1


	jmp ext
	greater:
	inc score2


	ext:
	call scoreprint
	ret
scoreupdate endp


scoreprint proc

	mov dl, 52
	mov dh, 14
	call Gotoxy


	mov al, " "
	call writechar
	mov al, " "
	call writechar

	mov edx, 0
	movsx eax, score1
	mov ecx, 10
	div ecx
	mov eax, edx
	add eax, "0"
	call writechar
	

	mov al, " "
	call writechar
	mov al, ":"
	call writechar
	mov al, " "
	call writechar

	mov edx, 0
	movsx eax, score2
	mov ecx, 10
	div ecx
	mov eax, edx
	add eax, "0"
	call writechar

	ret

scoreprint endp

stop proc
	mov dl, pongx
	mov dh, pongy
	call Gotoxy
	mov al, " "
	call writechar

	mov pongx, 56

	cmp pongy, 14

	jle less
	jge greater	

	mov al , pongyvel
	mov bl, -1
	MUL bl
	mov pongyvel, al

	less:
	mov pongy, 4
	jmp nxt
	greater:
	mov pongy, 24
	nxt:

	mov stopped, 1
	mov pongyvel, 0
	mov pongxvel, 0
	ret
stop endp


clearscreen proc
mov dl, 0
mov dh, 0
mov al, " "
call Gotoxy
mov ecx, 200
l1:
	mov al ," "
	call writechar
	inc dl
	push ecx
	mov ecx, 20
	mov dh, 0
	l2:
	call writechar
	inc dh
	loop l2
	pop ecx
loop l1
ret
clearscreen endp

dancingman proc

mov dl, 0
mov dh, 14
call gotoxy

cmp ebx, 0
jne next0
mov edx, offset dancingman1
call writestring 
jmp last

next0:
cmp ebx, 1
jne next1
mov edx, offset dancingman2
call writestring
jmp last

next1:
cmp ebx, 2
jne next2
mov edx, offset dancingman3
call writestring
jmp last

next2:
cmp ebx, 3
jne next3
mov edx, offset dancingman4
call writestring
jmp last

next3:
cmp ebx, 4
jne next4
mov edx, offset dancingman5
call writestring
jmp last

next4:
cmp ebx, 5
jne next5
mov edx, offset dancingman6
call writestring
jmp last

next5:
cmp ebx, 6
jne next6
mov edx, offset dancingman7
call writestring
jmp last

next6:
cmp ebx, 7
jne next7
mov edx, offset dancingman8
call writestring
jmp last

next7:
cmp ebx, 8
jne next8
mov edx, offset dancingman9
call writestring
jmp last



next8:
last:

mov eax, 200
call delay


ret
dancingman endp

comment !
miniclearscreen proc uses ecx
mov dl, 51
mov dh, 13
mov ecx, 6
l1:
call GOTOXY
mov ebx, ecx
mov ecx, 5
l2:

mov al, ' '
call writechar

loop l2
inc dh
mov ecx, ebx
loop l1
ret
miniclearscreen endp
!

END MAIN