	.arch armv8.2-a
	.text
	.align	2

	.global	neon_add3
	.type	neon_add3, %function

neon_add3:
	ldr	q0, [x0]
	movi	v1.16b, #0x3
	add	v0.16b, v0.16b, v1.16b
	str	q0, [x0]
	ret
