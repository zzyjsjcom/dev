	.arch armv8-a
	.text
	.align	2

	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -16]!

	adrp	x0, hello_str
	add	x0, x0, :lo12:hello_str
	bl	printf
	mov	x0, 0

	ldp	x29, x30, [sp], 16
	ret

	.section	.rodata
	.align	4
hello_str:
	.string	"hello aarch64\n"
