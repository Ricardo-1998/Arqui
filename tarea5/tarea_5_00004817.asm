org 	100h

section .text

	call 	grafico	

	xor 	si, si
	xor 	di, di

	mov 	si, 100d 
	mov 	di, 50d 
	mov	bl, 150d
	mov	[300h],bl
	call 	linea_v

	mov 	si, 150d 
	mov 	di, 50d 
	mov	bl, 100d
	mov	[300h],bl
	call 	linea_v

    mov 	si, 110d 
	mov 	di, 60d 
	mov	bl, 90d
	mov	[300h],bl
	call 	linea_v

	mov 	si, 140d 
	mov 	di, 60d 
	mov	bl, 90d
	mov	[300h],bl
	call 	linea_v

    mov 	si, 100d 
	mov 	di, 50d 
	mov	bl, 150d
	mov	[300h],bl
	call 	linea_h

    mov 	si, 110d 
	mov 	di, 60d 
	mov	bl, 140d
	mov	[300h],bl
	call 	linea_h

    mov 	si, 110d 
	mov 	di, 90d 
	mov	bl, 140d
	mov	[300h],bl
	call 	linea_h

    mov 	si, 125d 
	mov 	di, 100d 
	mov	bl, 150d
	mov	[300h],bl
	call 	linea_h

	mov 	si, 100d 
	mov 	di, 150d 
	mov	bl, 110d
	mov	[300h],bl
	call 	linea_h

	mov 	si, 110d 
	mov 	di, 100d 
	mov	bl, 150d
	mov	[300h],bl
	call 	linea_v
	
	mov 	si, 110d 
	mov 	di, 100d 
	mov	bl,150d
	mov	[300h],bl
	call 	linea_d

	mov 	si, 125d 
	mov 	di, 100d 
	mov	bl,135d
	mov	[300h],bl
	call 	linea_d

	mov 	si, 160d 
	mov 	di, 135d 
	mov	bl,150d
	mov	[300h],bl
	call 	linea_v

	call 	kb		

	int 	20h

grafico:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	mov	ah, 0Ch
	mov	al, 1011b
	int 	10h
	ret

linea_h: 
lupi_h:	mov 	cx, 0d 
	add 	cx, si
	mov	dx, di 
	call 	pixel
	inc 	si
	cmp 	si, [300h]
	jne 	lupi_h
	ret

linea_v:
lupi_v:	mov 	cx, si 
	mov	dx, 0d 
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, [300h]
	jne 	lupi_v
	ret

linea_d:
lupi_d:	mov 	cx, si 
	mov	dx, 0d 
	add 	dx, di
	call 	pixel
	inc 	di
	inc	si
	cmp 	di, [300h]
	jne 	lupi_d
	ret

kb: 	mov	ah, 00h
	int 	16h
	ret

section .data