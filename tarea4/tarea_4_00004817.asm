org 	100h

section .text
       
	mov 	si, 0d 	

loopi:	call 	kb
	cmp 	si,5d 
	je	    promedio
        sub     al, 30h
	 mov	[300h+si], al 
	inc 	si
	jmp 	loopi

promedio:mov     bx, 0d
        mov     ax, 0d

loopi2: add     al, [300h+bx]
        inc     bx
        cmp     bx, 5d
        jb      loopi2
        mov     [310h], al
        mov     [320h], bl
        mov     cl, bl
        div     cl
        mov     [330h], al

mostrar: mov 	dx, fin
	call	w_strng
	cmp     al, 1d
        je      frase1
        cmp     al, 2d
        je      frase2
        cmp     al, 3d
        je      frase3
        cmp     al, 4d
        je      frase4
        cmp     al, 5d
        je      frase5
        cmp     al, 6d
        je      frase6
        cmp     al, 7d
        je      frase7
        cmp     al, 8d
        je      frase8
        cmp     al, 9d
        je      frase9
        cmp     al, 10d
        je      frase10

frase1:	mov 	dx, msg1
        jmp     next

frase2:	mov 	dx, msg2
        jmp     next

frase3:	mov 	dx, msg3
        jmp     next

frase4:	mov 	dx, msg4
        jmp     next

frase5:	mov 	dx, msg5
        jmp     next

frase6:	mov 	dx, msg6
        jmp     next

frase7:	mov 	dx, msg7
        jmp     next

frase8:	mov 	dx, msg8
        jmp     next

frase9:	mov 	dx, msg9
        jmp     next

frase10:mov 	dx, msg10
        jmp     next
	
next:   call 	w_strng
	call 	kb
	int 	20h

texto:	mov 	ah, 00h
	mov	    al, 03h
	int 	10h
	ret

kb: 	mov	    ah, 1h
	int 	21h
	ret

w_strng:mov	    ah, 09h
	    int 	21h
	    ret

section .data

msg1 	db 	"Solo necesito el 0$"
msg2 	db 	"Aun se pasa$"
msg3 	db 	"Hay salud$"
msg4 	db 	"Me recupero$"
msg5 	db 	"En el segundo$"
msg6 	db 	"Peor es nada$"
msg7 	db 	"Muy bien$"
msg8 	db 	"Colocho$"
msg9 	db 	"Siempre me esfuerzo$"
msg10 	db 	"Perfecto solo Dios$"

fin	    db 	0xA, 0xD, "$"