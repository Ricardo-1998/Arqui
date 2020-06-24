	org 	100h

section .text

	call 	texto	
	call 	cursor
	call 	frase
	call	frase2
	call	frase3
	call	kbwait

	int 	20h

texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

cursor: 	mov	ah, 01h
	mov 	ch, 00000000b
	mov 	cl, 00001110b
	int 	10h
	ret

w_char:	mov 	ah, 09h
	mov 	al, cl
	mov 	bh, 0h
	mov 	bl, 00001111b
	mov 	cx, 1h
	int 	10h
	ret

kbwait: 	mov 	ax, 0000h
	int 	16h
	ret

m_cursr:mov 	ah, 02h
	mov 	dx, di  ; columna
	mov 	dh, 1d ; fila
	mov 	bh, 0h
	int 	10h
	ret

m_cursr2:mov 	ah, 02h
	mov 	dx, di  ; columna
	mov 	dh, 5d ; fila
	mov 	bh, 0h
	int 	10h
	ret

m_cursr3:mov 	ah, 02h
	mov 	dx, di  ; columna
	mov 	dh, 9d ; fila
	mov 	bh, 0h
	int 	10h
	ret

frase:	mov 	di, 30d
lupi:	mov 	cl, [msg+di-30d]
	call    	m_cursr
	call 	w_char
	inc	di
	cmp 	di, len
	jb	lupi
	ret

frase2:	mov 	di, 10d
lupi2:	mov 	cl, [msg2+di-10d]
	call    	m_cursr2
	call 	w_char
	inc	di
	cmp 	di, len2
	jb	lupi2
	ret

frase3:	mov 	di, 1d
lupi3:	mov 	cl, [msg3+di-1d]
	call    	m_cursr3
	call 	w_char
	inc	di
	cmp 	di, len3
	jb	lupi3
	ret



section .data
msg	db 	"Chistes Chiclin"
len 	equ	$-msg+30d

msg2	db 	"Que bebida esta prohibida en Brasil? La 7up :v"
len2 	equ	$-msg2+10d

msg3	db 	"Era tan feo,pero tan feo que mando su foto por email y lo bloqueo el antivirus"
len3 	equ	$-msg3+1d

