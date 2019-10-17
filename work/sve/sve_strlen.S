// reference: https://alastairreid.github.io/papers/sve-ieee-micro-2017.pdf
	.arch armv8.2-a+sve
	.text
	.align	2

	.global	sve_strlen
	.type	sve_strlen, %function

sve_strlen:
	mov x1, x0
	ptrue p0.b
.loop:
	setffr
	ldff1b z0.b, p0/z, [x1]
	rdffr p1.b, p0/z
	cmpeq p2.b, p1/z, z0.b, #0
	brkbs p2.b, p1/z, p2.b
	incp x1, p2.b
	b.last .loop
	sub x0, x1, x0
ret
