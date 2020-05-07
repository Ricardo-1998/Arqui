	org	100h
;Inicio ejercicio 1----------------------------------------------------------
	mov	ax, 0000h
	mov	bx, 0000h
	mov	ax, 4d
	mov	bx, 8d
	add 	ax,bx
	mov	bx, 0000h
	mov	bx, 1d
	add 	ax,bx
	mov	bx, 0000h
	mov	bx, 7d
	add 	ax,bx
	mov	bx, 0000h
	mov 	bx, 4d
	div 	bx
;En ax queda guardado que es 5 el promedio frase "en el segundo"
	mov 	cl, "E"
	mov 	[200h], cl
	mov 	cl, "N"
	mov 	[201h], cl
	mov 	cl, "E"
	mov 	[203h], cl
	mov 	cl, "L"
	mov 	[204h], cl
	mov 	cl, "S"
	mov 	[206h], cl
	mov 	cl, "E"
	mov 	[207h], cl
	mov 	cl, "G"
	mov 	[208h], cl
	mov 	cl, "U"
	mov 	[209h], cl
	mov 	cl, "N"
	mov 	[20Ah], cl
	mov 	cl, "D"
	mov 	[20Bh], cl
	mov 	cl, "O"
	mov 	[20Ch], cl
;Fin ejercicio 1----------------------------------------------------------

;Inicio ejericio 2--------------------------------------------------------
	mov	ax, 0000h
	mov 	ax, 4d
	mov	bx, 0000h
	mov	bx, 2d
	mov 	si, 0d



lupita:	mov [si+210h],ax
	mul	bx
	inc	si
	cmp	ax,100h
	jb	lupita

lupita2:mov [si+210h],ax
	mul	bx
	inc	si
	inc 	si
	cmp 	si,16d
	jne	lupita2


;Fin ejericio 2--------------------------------------------------------

;Inicio ejericio 3--------------------------------------------------------

	mov 	si,0000h
	mov 	ax,0000h
	mov 	bx,0000h
	mov 	bx,1d

lupita3:mov [si+220h],ax
	add 	ax,bx
	mov	dx,ax
	mov 	ax,bx
	mov 	bx,dx
	inc	si
	
	cmp	ax,100h
	jb	lupita3

lupita4:mov [si+220h],ax
	add 	ax,bx
	mov	dx,ax
	mov 	ax,bx
	mov 	bx,dx
	inc	si
	inc 	si
	cmp 	si,16d
	jne	lupita4


	int	20h
;Fin ejericio 3--------------------------------------------------------