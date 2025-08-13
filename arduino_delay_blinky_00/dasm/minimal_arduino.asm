
obj/minimal_arduino.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <initGpio>:
   0:	b480      	push	{r7}
   2:	af00      	add	r7, sp, #0
   4:	4b06      	ldr	r3, [pc, #24]	; (20 <initGpio+0x20>)
   6:	681b      	ldr	r3, [r3, #0]
   8:	3330      	adds	r3, #48	; 0x30
   a:	681a      	ldr	r2, [r3, #0]
   c:	4b04      	ldr	r3, [pc, #16]	; (20 <initGpio+0x20>)
   e:	681b      	ldr	r3, [r3, #0]
  10:	3330      	adds	r3, #48	; 0x30
  12:	f042 0209 	orr.w	r2, r2, #9
  16:	601a      	str	r2, [r3, #0]
  18:	bf00      	nop
  1a:	46bd      	mov	sp, r7
  1c:	bc80      	pop	{r7}
  1e:	4770      	bx	lr
  20:	00000000 	andeq	r0, r0, r0
			20: R_ARM_ABS32	RCC_PRPH

00000024 <pinMode>:
  24:	b480      	push	{r7}
  26:	b083      	sub	sp, #12
  28:	af00      	add	r7, sp, #0
  2a:	4603      	mov	r3, r0
  2c:	460a      	mov	r2, r1
  2e:	71fb      	strb	r3, [r7, #7]
  30:	4613      	mov	r3, r2
  32:	71bb      	strb	r3, [r7, #6]
  34:	79fb      	ldrb	r3, [r7, #7]
  36:	2b00      	cmp	r3, #0
  38:	d002      	beq.n	40 <pinMode+0x1c>
  3a:	2b0e      	cmp	r3, #14
  3c:	d016      	beq.n	6c <pinMode+0x48>
  3e:	e02b      	b.n	98 <pinMode+0x74>
  40:	4b18      	ldr	r3, [pc, #96]	; (a4 <pinMode+0x80>)
  42:	681b      	ldr	r3, [r3, #0]
  44:	681a      	ldr	r2, [r3, #0]
  46:	79fb      	ldrb	r3, [r7, #7]
  48:	005b      	lsls	r3, r3, #1
  4a:	2103      	movs	r1, #3
  4c:	fa01 f303 	lsl.w	r3, r1, r3
  50:	43db      	mvns	r3, r3
  52:	ea02 0103 	and.w	r1, r2, r3
  56:	79bb      	ldrb	r3, [r7, #6]
  58:	f003 0203 	and.w	r2, r3, #3
  5c:	79fb      	ldrb	r3, [r7, #7]
  5e:	005b      	lsls	r3, r3, #1
  60:	409a      	lsls	r2, r3
  62:	4b10      	ldr	r3, [pc, #64]	; (a4 <pinMode+0x80>)
  64:	681b      	ldr	r3, [r3, #0]
  66:	430a      	orrs	r2, r1
  68:	601a      	str	r2, [r3, #0]
  6a:	e015      	b.n	98 <pinMode+0x74>
  6c:	4b0e      	ldr	r3, [pc, #56]	; (a8 <pinMode+0x84>)
  6e:	681b      	ldr	r3, [r3, #0]
  70:	681a      	ldr	r2, [r3, #0]
  72:	79fb      	ldrb	r3, [r7, #7]
  74:	005b      	lsls	r3, r3, #1
  76:	2103      	movs	r1, #3
  78:	fa01 f303 	lsl.w	r3, r1, r3
  7c:	43db      	mvns	r3, r3
  7e:	ea02 0103 	and.w	r1, r2, r3
  82:	79bb      	ldrb	r3, [r7, #6]
  84:	f003 0203 	and.w	r2, r3, #3
  88:	79fb      	ldrb	r3, [r7, #7]
  8a:	005b      	lsls	r3, r3, #1
  8c:	409a      	lsls	r2, r3
  8e:	4b06      	ldr	r3, [pc, #24]	; (a8 <pinMode+0x84>)
  90:	681b      	ldr	r3, [r3, #0]
  92:	430a      	orrs	r2, r1
  94:	601a      	str	r2, [r3, #0]
  96:	bf00      	nop
  98:	bf00      	nop
  9a:	370c      	adds	r7, #12
  9c:	46bd      	mov	sp, r7
  9e:	bc80      	pop	{r7}
  a0:	4770      	bx	lr
  a2:	bf00      	nop
	...
			a4: R_ARM_ABS32	GPIOA_PRPH
			a8: R_ARM_ABS32	GPIOD_PRPH

000000ac <digitalRead>:
  ac:	b480      	push	{r7}
  ae:	b083      	sub	sp, #12
  b0:	af00      	add	r7, sp, #0
  b2:	4603      	mov	r3, r0
  b4:	71fb      	strb	r3, [r7, #7]
  b6:	79fb      	ldrb	r3, [r7, #7]
  b8:	2b00      	cmp	r3, #0
  ba:	d002      	beq.n	c2 <digitalRead+0x16>
  bc:	2b0e      	cmp	r3, #14
  be:	d00f      	beq.n	e0 <digitalRead+0x34>
  c0:	e01d      	b.n	fe <digitalRead+0x52>
  c2:	4b12      	ldr	r3, [pc, #72]	; (10c <digitalRead+0x60>)
  c4:	681b      	ldr	r3, [r3, #0]
  c6:	3310      	adds	r3, #16
  c8:	681b      	ldr	r3, [r3, #0]
  ca:	79fa      	ldrb	r2, [r7, #7]
  cc:	2101      	movs	r1, #1
  ce:	fa01 f202 	lsl.w	r2, r1, r2
  d2:	4013      	ands	r3, r2
  d4:	2b00      	cmp	r3, #0
  d6:	bf14      	ite	ne
  d8:	2301      	movne	r3, #1
  da:	2300      	moveq	r3, #0
  dc:	b2db      	uxtb	r3, r3
  de:	e00f      	b.n	100 <digitalRead+0x54>
  e0:	4b0b      	ldr	r3, [pc, #44]	; (110 <digitalRead+0x64>)
  e2:	681b      	ldr	r3, [r3, #0]
  e4:	3310      	adds	r3, #16
  e6:	681b      	ldr	r3, [r3, #0]
  e8:	79fa      	ldrb	r2, [r7, #7]
  ea:	2101      	movs	r1, #1
  ec:	fa01 f202 	lsl.w	r2, r1, r2
  f0:	4013      	ands	r3, r2
  f2:	2b00      	cmp	r3, #0
  f4:	bf14      	ite	ne
  f6:	2301      	movne	r3, #1
  f8:	2300      	moveq	r3, #0
  fa:	b2db      	uxtb	r3, r3
  fc:	e000      	b.n	100 <digitalRead+0x54>
  fe:	2300      	movs	r3, #0
 100:	4618      	mov	r0, r3
 102:	370c      	adds	r7, #12
 104:	46bd      	mov	sp, r7
 106:	bc80      	pop	{r7}
 108:	4770      	bx	lr
 10a:	bf00      	nop
	...
			10c: R_ARM_ABS32	GPIOA_PRPH
			110: R_ARM_ABS32	GPIOD_PRPH

00000114 <digitalWrite>:
 114:	b480      	push	{r7}
 116:	b083      	sub	sp, #12
 118:	af00      	add	r7, sp, #0
 11a:	4603      	mov	r3, r0
 11c:	460a      	mov	r2, r1
 11e:	71fb      	strb	r3, [r7, #7]
 120:	4613      	mov	r3, r2
 122:	71bb      	strb	r3, [r7, #6]
 124:	79fb      	ldrb	r3, [r7, #7]
 126:	2b00      	cmp	r3, #0
 128:	d002      	beq.n	130 <digitalWrite+0x1c>
 12a:	2b0e      	cmp	r3, #14
 12c:	d022      	beq.n	174 <digitalWrite+0x60>
 12e:	e043      	b.n	1b8 <digitalWrite+0xa4>
 130:	79bb      	ldrb	r3, [r7, #6]
 132:	2b01      	cmp	r3, #1
 134:	d10e      	bne.n	154 <digitalWrite+0x40>
 136:	4b23      	ldr	r3, [pc, #140]	; (1c4 <digitalWrite+0xb0>)
 138:	681b      	ldr	r3, [r3, #0]
 13a:	3314      	adds	r3, #20
 13c:	681a      	ldr	r2, [r3, #0]
 13e:	79fb      	ldrb	r3, [r7, #7]
 140:	2101      	movs	r1, #1
 142:	fa01 f303 	lsl.w	r3, r1, r3
 146:	4619      	mov	r1, r3
 148:	4b1e      	ldr	r3, [pc, #120]	; (1c4 <digitalWrite+0xb0>)
 14a:	681b      	ldr	r3, [r3, #0]
 14c:	3314      	adds	r3, #20
 14e:	430a      	orrs	r2, r1
 150:	601a      	str	r2, [r3, #0]
 152:	e031      	b.n	1b8 <digitalWrite+0xa4>
 154:	4b1b      	ldr	r3, [pc, #108]	; (1c4 <digitalWrite+0xb0>)
 156:	681b      	ldr	r3, [r3, #0]
 158:	3314      	adds	r3, #20
 15a:	681a      	ldr	r2, [r3, #0]
 15c:	79fb      	ldrb	r3, [r7, #7]
 15e:	2101      	movs	r1, #1
 160:	fa01 f303 	lsl.w	r3, r1, r3
 164:	43db      	mvns	r3, r3
 166:	4619      	mov	r1, r3
 168:	4b16      	ldr	r3, [pc, #88]	; (1c4 <digitalWrite+0xb0>)
 16a:	681b      	ldr	r3, [r3, #0]
 16c:	3314      	adds	r3, #20
 16e:	400a      	ands	r2, r1
 170:	601a      	str	r2, [r3, #0]
 172:	e021      	b.n	1b8 <digitalWrite+0xa4>
 174:	79bb      	ldrb	r3, [r7, #6]
 176:	2b01      	cmp	r3, #1
 178:	d10e      	bne.n	198 <digitalWrite+0x84>
 17a:	4b13      	ldr	r3, [pc, #76]	; (1c8 <digitalWrite+0xb4>)
 17c:	681b      	ldr	r3, [r3, #0]
 17e:	3314      	adds	r3, #20
 180:	681a      	ldr	r2, [r3, #0]
 182:	79fb      	ldrb	r3, [r7, #7]
 184:	2101      	movs	r1, #1
 186:	fa01 f303 	lsl.w	r3, r1, r3
 18a:	4619      	mov	r1, r3
 18c:	4b0e      	ldr	r3, [pc, #56]	; (1c8 <digitalWrite+0xb4>)
 18e:	681b      	ldr	r3, [r3, #0]
 190:	3314      	adds	r3, #20
 192:	430a      	orrs	r2, r1
 194:	601a      	str	r2, [r3, #0]
 196:	e00e      	b.n	1b6 <digitalWrite+0xa2>
 198:	4b0b      	ldr	r3, [pc, #44]	; (1c8 <digitalWrite+0xb4>)
 19a:	681b      	ldr	r3, [r3, #0]
 19c:	3314      	adds	r3, #20
 19e:	681a      	ldr	r2, [r3, #0]
 1a0:	79fb      	ldrb	r3, [r7, #7]
 1a2:	2101      	movs	r1, #1
 1a4:	fa01 f303 	lsl.w	r3, r1, r3
 1a8:	43db      	mvns	r3, r3
 1aa:	4619      	mov	r1, r3
 1ac:	4b06      	ldr	r3, [pc, #24]	; (1c8 <digitalWrite+0xb4>)
 1ae:	681b      	ldr	r3, [r3, #0]
 1b0:	3314      	adds	r3, #20
 1b2:	400a      	ands	r2, r1
 1b4:	601a      	str	r2, [r3, #0]
 1b6:	bf00      	nop
 1b8:	bf00      	nop
 1ba:	370c      	adds	r7, #12
 1bc:	46bd      	mov	sp, r7
 1be:	bc80      	pop	{r7}
 1c0:	4770      	bx	lr
 1c2:	bf00      	nop
	...
			1c4: R_ARM_ABS32	GPIOA_PRPH
			1c8: R_ARM_ABS32	GPIOD_PRPH

000001cc <delay>:
 1cc:	b480      	push	{r7}
 1ce:	b085      	sub	sp, #20
 1d0:	af00      	add	r7, sp, #0
 1d2:	6078      	str	r0, [r7, #4]
 1d4:	f240 72d4 	movw	r2, #2004	; 0x7d4
 1d8:	687b      	ldr	r3, [r7, #4]
 1da:	fb02 f303 	mul.w	r3, r2, r3
 1de:	60fb      	str	r3, [r7, #12]
 1e0:	bf00      	nop
 1e2:	68fb      	ldr	r3, [r7, #12]
 1e4:	1e5a      	subs	r2, r3, #1
 1e6:	60fa      	str	r2, [r7, #12]
 1e8:	2b00      	cmp	r3, #0
 1ea:	d1fa      	bne.n	1e2 <delay+0x16>
 1ec:	bf00      	nop
 1ee:	bf00      	nop
 1f0:	3714      	adds	r7, #20
 1f2:	46bd      	mov	sp, r7
 1f4:	bc80      	pop	{r7}
 1f6:	4770      	bx	lr

Disassembly of section .data:

00000000 <RCC_PRPH>:
   0:	40023800 	andmi	r3, r2, r0, lsl #16

00000004 <GPIOA_PRPH>:
   4:	40020000 	andmi	r0, r2, r0

00000008 <GPIOD_PRPH>:
   8:	40020c00 	andmi	r0, r2, r0, lsl #24

Disassembly of section .rodata:

00000000 <CountsPerMs>:
   0:	000007d4 	ldrdeq	r0, [r0], -r4

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000306 	andeq	r0, r0, r6, lsl #6
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	0000029a 	muleq	r0, sl, r2
			c: R_ARM_ABS32	.debug_str
  10:	0002fc0c 	andeq	pc, r2, ip, lsl #24
			11: R_ARM_ABS32	.debug_str
  14:	0000b300 	andeq	fp, r0, r0, lsl #6
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	0001f800 	andeq	pc, r1, r0, lsl #16
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000218 	andeq	r0, r0, r8, lsl r2
			28: R_ARM_ABS32	.debug_str
  2c:	0001bc03 	andeq	fp, r1, r3, lsl #24
			2d: R_ARM_ABS32	.debug_str
  30:	182b0200 	stmdane	fp!, {r9}
  34:	00000038 	andeq	r0, r0, r8, lsr r0
  38:	f2080102 	vrhadd.s8	d0, d8, d2
			3b: R_ARM_ABS32	.debug_str
  3c:	02000001 	andeq	r0, r0, #1
  40:	004a0502 	subeq	r0, sl, r2, lsl #10
			42: R_ARM_ABS32	.debug_str
  44:	02020000 	andeq	r0, r2, #0
  48:	00028707 	andeq	r8, r2, r7, lsl #14
			49: R_ARM_ABS32	.debug_str
  4c:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  50:	000001a0 	andeq	r0, r0, r0, lsr #3
			50: R_ARM_ABS32	.debug_str
  54:	00008403 	andeq	r8, r0, r3, lsl #8
			55: R_ARM_ABS32	.debug_str
  58:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  5c:	00000060 	andeq	r0, r0, r0, rrx
  60:	4c070402 	cfstrsmi	mvf0, [r7], {2}
			63: R_ARM_ABS32	.debug_str
  64:	02000003 	andeq	r0, r0, #3
  68:	01490508 	cmpeq	r9, r8, lsl #10
			6a: R_ARM_ABS32	.debug_str
  6c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  70:	00023207 	andeq	r3, r2, r7, lsl #4
			71: R_ARM_ABS32	.debug_str
  74:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  78:	00746e69 	rsbseq	r6, r4, r9, ror #28
  7c:	61070402 	tstvs	r7, r2, lsl #8
			7f: R_ARM_ABS32	.debug_str
  80:	03000002 	movweq	r0, #2
  84:	000000f3 	strdeq	r0, [r0], -r3
			84: R_ARM_ABS32	.debug_str
  88:	2c131803 	ldccs	8, cr1, [r3], {3}
  8c:	03000000 	movweq	r0, #0
  90:	00000249 	andeq	r0, r0, r9, asr #4
			90: R_ARM_ABS32	.debug_str
  94:	54143003 	ldrpl	r3, [r4], #-3
  98:	05000000 	streq	r0, [r0, #-0]
  9c:	0000008f 	andeq	r0, r0, pc, lsl #1
  a0:	38010706 	stmdacc	r1, {r1, r2, r8, r9, sl}
  a4:	04000000 	streq	r0, [r0], #-0
  a8:	017b010a 	cmneq	fp, sl, lsl #2
  ac:	6d070000 	stcvs	0, cr0, [r7, #-0]
			af: R_ARM_ABS32	.debug_str
  b0:	00000001 	andeq	r0, r0, r1
  b4:	00011e07 	andeq	r1, r1, r7, lsl #28
			b5: R_ARM_ABS32	.debug_str
  b8:	54070100 	strpl	r0, [r7], #-256	; 0xffffff00
			bb: R_ARM_ABS32	.debug_str
  bc:	02000000 	andeq	r0, r0, #0
  c0:	00032007 	andeq	r2, r3, r7
			c1: R_ARM_ABS32	.debug_str
  c4:	e5070300 	str	r0, [r7, #-768]	; 0xfffffd00
			c7: R_ARM_ABS32	.debug_str
  c8:	04000001 	streq	r0, [r0], #-1
  cc:	00037207 	andeq	r7, r3, r7, lsl #4
			cd: R_ARM_ABS32	.debug_str
  d0:	9a070500 	bls	1c14d8 <delay+0x1c130c>
			d3: R_ARM_ABS32	.debug_str
  d4:	06000000 	streq	r0, [r0], -r0
  d8:	00015707 	andeq	r5, r1, r7, lsl #14
			d9: R_ARM_ABS32	.debug_str
  dc:	3c070700 	stccc	7, cr0, [r7], {-0}
			df: R_ARM_ABS32	.debug_str
  e0:	08000001 	stmdaeq	r0, {r0}
  e4:	0000fb07 	andeq	pc, r0, r7, lsl #22
			e5: R_ARM_ABS32	.debug_str
  e8:	62070900 	andvs	r0, r7, #0, 18
			eb: R_ARM_ABS32	.debug_str
  ec:	0a000001 	beq	f8 <.debug_info+0xf8>
  f0:	00001c07 	andeq	r1, r0, r7, lsl #24
			f1: R_ARM_ABS32	.debug_str
  f4:	c1070b00 	tstgt	r7, r0, lsl #22
			f7: R_ARM_ABS32	.debug_str
  f8:	0c000003 	stceq	0, cr0, [r0], {3}
  fc:	00010807 	andeq	r0, r1, r7, lsl #16
			fd: R_ARM_ABS32	.debug_str
 100:	0c070d00 	stceq	13, cr0, [r7], {-0}
			103: R_ARM_ABS32	.debug_str
 104:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
 108:	00017407 	andeq	r7, r1, r7, lsl #8
			109: R_ARM_ABS32	.debug_str
 10c:	9a070f00 	bls	1c3d14 <delay+0x1c3b48>
			10f: R_ARM_ABS32	.debug_str
 110:	10000003 	andne	r0, r0, r3
 114:	0000a707 	andeq	sl, r0, r7, lsl #14
			115: R_ARM_ABS32	.debug_str
 118:	7f071100 	svcvc	0x00071100
			11b: R_ARM_ABS32	.debug_str
 11c:	12000001 	andne	r0, r0, #1
 120:	00018a07 	andeq	r8, r1, r7, lsl #20
			121: R_ARM_ABS32	.debug_str
 124:	5d071300 	stcpl	3, cr1, [r7, #-0]
			127: R_ARM_ABS32	.debug_str
 128:	14000000 	strne	r0, [r0], #-0
 12c:	00027907 	andeq	r7, r2, r7, lsl #18
			12d: R_ARM_ABS32	.debug_str
 130:	6b071500 	blvs	1c5538 <delay+0x1c536c>
			133: R_ARM_ABS32	.debug_str
 134:	16000000 	strne	r0, [r0], -r0
 138:	00019507 	andeq	r9, r1, r7, lsl #10
			139: R_ARM_ABS32	.debug_str
 13c:	24071700 	strcs	r1, [r7], #-1792	; 0xfffff900
			13f: R_ARM_ABS32	.debug_str
 140:	18000002 	stmdane	r0, {r1}
 144:	00037f07 	andeq	r7, r3, r7, lsl #30
			145: R_ARM_ABS32	.debug_str
 148:	3f071900 	svccc	0x00071900
			14b: R_ARM_ABS32	.debug_str
 14c:	1a000000 	bne	154 <.debug_info+0x154>
 150:	0001a907 	andeq	sl, r1, r7, lsl #18
			151: R_ARM_ABS32	.debug_str
 154:	0b071b00 	bleq	1c6d5c <delay+0x1c6b90>
			157: R_ARM_ABS32	.debug_str
 158:	1c000000 	stcne	0, cr0, [r0], {-0}
 15c:	0001b407 	andeq	fp, r1, r7, lsl #8
			15d: R_ARM_ABS32	.debug_str
 160:	27071d00 	strcs	r1, [r7, -r0, lsl #26]
			163: R_ARM_ABS32	.debug_str
 164:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
 168:	00003307 	andeq	r3, r0, r7, lsl #6
			169: R_ARM_ABS32	.debug_str
 16c:	c6071f00 	strgt	r1, [r7], -r0, lsl #30
			16f: R_ARM_ABS32	.debug_str
 170:	20000001 	andcs	r0, r0, r1
 174:	00025207 	andeq	r5, r2, r7, lsl #4
			175: R_ARM_ABS32	.debug_str
 178:	06002100 	streq	r2, [r0], -r0, lsl #2
 17c:	00380107 	eorseq	r0, r8, r7, lsl #2
 180:	31040000 	mrscc	r0, (UNDEF: 4)
 184:	0001c601 	andeq	ip, r1, r1, lsl #12
 188:	02000700 	andeq	r0, r0, #0, 14
			18a: R_ARM_ABS32	.debug_str
 18c:	07000000 	streq	r0, [r0, -r0]
 190:	0000038d 	andeq	r0, r0, sp, lsl #7
			190: R_ARM_ABS32	.debug_str
 194:	03120701 	tsteq	r2, #262144	; 0x40000
			196: R_ARM_ABS32	.debug_str
 198:	07020000 	streq	r0, [r2, -r0]
 19c:	000001d9 	ldrdeq	r0, [r0], -r9
			19c: R_ARM_ABS32	.debug_str
 1a0:	03ab0703 			; <UNDEFINED> instruction: 0x03ab0703
			1a2: R_ARM_ABS32	.debug_str
 1a4:	07040000 	streq	r0, [r4, -r0]
 1a8:	00000114 	andeq	r0, r0, r4, lsl r1
			1a8: R_ARM_ABS32	.debug_str
 1ac:	035e0705 	cmpeq	lr, #1310720	; 0x140000
			1ae: R_ARM_ABS32	.debug_str
 1b0:	07060000 	streq	r0, [r6, -r0]
 1b4:	00000335 	andeq	r0, r0, r5, lsr r3
			1b4: R_ARM_ABS32	.debug_str
 1b8:	00000707 	andeq	r0, r0, r7, lsl #14
			1ba: R_ARM_ABS32	.debug_str
 1bc:	07080000 	streq	r0, [r8, -r0]
 1c0:	0000026e 	andeq	r0, r0, lr, ror #4
			1c0: R_ARM_ABS32	.debug_str
 1c4:	07060009 	streq	r0, [r6, -r9]
 1c8:	00003801 	andeq	r3, r0, r1, lsl #16
 1cc:	010d0500 	tsteq	sp, r0, lsl #10
 1d0:	000001e1 	andeq	r0, r0, r1, ror #3
 1d4:	574f4c08 	strbpl	r4, [pc, -r8, lsl #24]
 1d8:	a6070000 	strge	r0, [r7], -r0
			1db: R_ARM_ABS32	.debug_str
 1dc:	01000003 	tsteq	r0, r3
 1e0:	01d00900 	bicseq	r0, r0, r0, lsl #18
			1e2: R_ARM_ABS32	.debug_str
 1e4:	09010000 	stmdbeq	r1, {}	; <UNPREDICTABLE>
 1e8:	0001f30b 	andeq	pc, r1, fp, lsl #6
 1ec:	00030500 	andeq	r0, r3, r0, lsl #10
			1ef: R_ARM_ABS32	RCC_PRPH
 1f0:	0a000000 	beq	1f8 <.debug_info+0x1f8>
 1f4:	00008f04 	andeq	r8, r0, r4, lsl #30
 1f8:	00790900 	rsbseq	r0, r9, r0, lsl #18
			1fa: R_ARM_ABS32	.debug_str
 1fc:	0a010000 	beq	40204 <delay+0x40038>
 200:	0001f30b 	andeq	pc, r1, fp, lsl #6
 204:	00030500 	andeq	r0, r3, r0, lsl #10
			207: R_ARM_ABS32	GPIOA_PRPH
 208:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
 20c:	00000131 	andeq	r0, r0, r1, lsr r1
			20c: R_ARM_ABS32	.debug_str
 210:	f30b0b01 	vqrdmulh.s<illegal width 8>	d0, d11, d1
 214:	05000001 	streq	r0, [r0, #-1]
 218:	00000003 	andeq	r0, r0, r3
			219: R_ARM_ABS32	GPIOD_PRPH
 21c:	03b50900 			; <UNDEFINED> instruction: 0x03b50900
			21e: R_ARM_ABS32	.debug_str
 220:	0e010000 	cdpeq	0, 0, cr0, cr1, cr0, {0}
 224:	00009b10 	andeq	r9, r0, r0, lsl fp
 228:	00030500 	andeq	r0, r3, r0, lsl #10
			22b: R_ARM_ABS32	CountsPerMs
 22c:	0b000000 	bleq	234 <.debug_info+0x234>
 230:	0000008f 	andeq	r0, r0, pc, lsl #1
			230: R_ARM_ABS32	.debug_str
 234:	cc065101 	stfgts	f5, [r6], {1}
			237: R_ARM_ABS32	.text
 238:	2c000001 	stccs	0, cr0, [r0], {1}
 23c:	01000000 	mrseq	r0, (UNDEF: 0)
 240:	0002639c 	muleq	r2, ip, r3
 244:	736d0c00 	cmnvc	sp, #0, 24
 248:	15510100 	ldrbne	r0, [r1, #-256]	; 0xffffff00
 24c:	0000008f 	andeq	r0, r0, pc, lsl #1
 250:	0d6c9102 	stfeqp	f1, [ip, #-8]!
 254:	0000012a 	andeq	r0, r0, sl, lsr #2
			254: R_ARM_ABS32	.debug_str
 258:	8f0e5301 	svchi	0x000e5301
 25c:	02000000 	andeq	r0, r0, #0
 260:	0b007491 	bleq	1d4ac <delay+0x1d2e0>
 264:	00000328 	andeq	r0, r0, r8, lsr #6
			264: R_ARM_ABS32	.debug_str
 268:	14063e01 	strne	r3, [r6], #-3585	; 0xfffff1ff
			26b: R_ARM_ABS32	.text
 26c:	b8000001 	stmdalt	r0, {r0}
 270:	01000000 	mrseq	r0, (UNDEF: 0)
 274:	0002989c 	muleq	r2, ip, r8
 278:	69700c00 	ldmdbvs	r0!, {sl, fp}^
 27c:	3e01006e 	cdpcc	0, 0, cr0, cr1, cr14, {3}
 280:	0000831b 	andeq	r8, r0, fp, lsl r3
 284:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
 288:	0000ed0e 	andeq	lr, r0, lr, lsl #26
			289: R_ARM_ABS32	.debug_str
 28c:	283e0100 	ldmdacs	lr!, {r8}
 290:	00000083 	andeq	r0, r0, r3, lsl #1
 294:	00769102 	rsbseq	r9, r6, r2, lsl #2
 298:	0003400f 	andeq	r4, r3, pc
			299: R_ARM_ABS32	.debug_str
 29c:	092a0100 	stmdbeq	sl!, {r8}
 2a0:	00000083 	andeq	r0, r0, r3, lsl #1
 2a4:	000000ac 	andeq	r0, r0, ip, lsr #1
			2a4: R_ARM_ABS32	.text
 2a8:	00000068 	andeq	r0, r0, r8, rrx
 2ac:	02c29c01 	sbceq	r9, r2, #256	; 0x100
 2b0:	700c0000 	andvc	r0, ip, r0
 2b4:	01006e69 	tsteq	r0, r9, ror #28
 2b8:	00831d2a 	addeq	r1, r3, sl, lsr #26
 2bc:	91020000 	mrsls	r0, (UNDEF: 2)
 2c0:	140b0077 	strne	r0, [fp], #-119	; 0xffffff89
			2c3: R_ARM_ABS32	.debug_str
 2c4:	01000000 	mrseq	r0, (UNDEF: 0)
 2c8:	00240617 	eoreq	r0, r4, r7, lsl r6
			2ca: R_ARM_ABS32	.text
 2cc:	00880000 	addeq	r0, r8, r0
 2d0:	9c010000 	stcls	0, cr0, [r1], {-0}
 2d4:	000002f7 	strdeq	r0, [r0], -r7
 2d8:	6e69700c 	cdpvs	0, 6, cr7, cr9, cr12, {0}
 2dc:	16170100 	ldrne	r0, [r7], -r0, lsl #2
 2e0:	00000083 	andeq	r0, r0, r3, lsl #1
 2e4:	0e779102 	expeqs	f1, f2
 2e8:	00000095 	muleq	r0, r5, r0
			2e8: R_ARM_ABS32	.debug_str
 2ec:	83231701 			; <UNDEFINED> instruction: 0x83231701
 2f0:	02000000 	andeq	r0, r0, #0
 2f4:	10007691 	mulne	r0, r1, r6
 2f8:	00000369 	andeq	r0, r0, r9, ror #6
			2f8: R_ARM_ABS32	.debug_str
 2fc:	00061001 	andeq	r1, r6, r1
			2ff: R_ARM_ABS32	.text
 300:	24000000 	strcs	r0, [r0], #-0
 304:	01000000 	mrseq	r0, (UNDEF: 0)
 308:	Address 0x00000308 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <delay+0x2bfee0>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <delay+0x380a5c>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <delay+0xf82a98>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	49002605 	stmdbmi	r0, {r0, r2, r9, sl, sp}
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0b3e0104 	bleq	f80458 <delay+0xf8028c>
  44:	13490b0b 	movtne	r0, #39691	; 0x9b0b
  48:	0b3b0b3a 	bleq	ec2d38 <delay+0xec2b6c>
  4c:	13010b39 	movwne	r0, #6969	; 0x1b39
  50:	28070000 	stmdacs	r7, {}	; <UNPREDICTABLE>
  54:	1c0e0300 	stcne	3, cr0, [lr], {-0}
  58:	0800000b 	stmdaeq	r0, {r0, r1, r3}
  5c:	08030028 	stmdaeq	r3, {r3, r5}
  60:	00000b1c 	andeq	r0, r0, ip, lsl fp
  64:	03003409 	movweq	r3, #1033	; 0x409
  68:	3b0b3a0e 	blcc	2ce8a8 <delay+0x2ce6dc>
  6c:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  70:	02193f13 	andseq	r3, r9, #19, 30	; 0x4c
  74:	0a000018 	beq	dc <.debug_abbrev+0xdc>
  78:	0b0b000f 	bleq	2c00bc <delay+0x2bfef0>
  7c:	00001349 	andeq	r1, r0, r9, asr #6
  80:	3f012e0b 	svccc	0x00012e0b
  84:	3a0e0319 	bcc	380cf0 <delay+0x380b24>
  88:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  8c:	1119270b 	tstne	r9, fp, lsl #14
  90:	40061201 	andmi	r1, r6, r1, lsl #4
  94:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
  98:	00001301 	andeq	r1, r0, r1, lsl #6
  9c:	0300050c 	movweq	r0, #1292	; 0x50c
  a0:	3b0b3a08 	blcc	2ce8c8 <delay+0x2ce6fc>
  a4:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  a8:	00180213 	andseq	r0, r8, r3, lsl r2
  ac:	00340d00 	eorseq	r0, r4, r0, lsl #26
  b0:	0b3a0e03 	bleq	e838c4 <delay+0xe836f8>
  b4:	0b390b3b 	bleq	e42da8 <delay+0xe42bdc>
  b8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  bc:	050e0000 	streq	r0, [lr, #-0]
  c0:	3a0e0300 	bcc	380cc8 <delay+0x380afc>
  c4:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  c8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  cc:	0f000018 	svceq	0x00000018
  d0:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  d4:	0b3a0e03 	bleq	e838e8 <delay+0xe8371c>
  d8:	0b390b3b 	bleq	e42dcc <delay+0xe42c00>
  dc:	13491927 	movtne	r1, #39207	; 0x9927
  e0:	06120111 			; <UNDEFINED> instruction: 0x06120111
  e4:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  e8:	00130119 	andseq	r0, r3, r9, lsl r1
  ec:	002e1000 	eoreq	r1, lr, r0
  f0:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  f4:	0b3b0b3a 	bleq	ec2de4 <delay+0xec2c18>
  f8:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  fc:	06120111 			; <UNDEFINED> instruction: 0x06120111
 100:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 104:	00000019 	andeq	r0, r0, r9, lsl r0

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
			6: R_ARM_ABS32	.debug_info
   8:	00040000 	andeq	r0, r4, r0
	...
			10: R_ARM_ABS32	.text
  14:	000001f8 	strdeq	r0, [r0], -r8
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0000022a 	andeq	r0, r0, sl, lsr #4
   4:	00ec0003 	rsceq	r0, ip, r3
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	73010000 	movwvc	r0, #4096	; 0x1000
  1c:	64006372 	strvs	r6, [r0], #-882	; 0xfffffc8e
  20:	77735c3a 			; <UNDEFINED> instruction: 0x77735c3a
  24:	615c385f 	cmpvs	ip, pc, asr r8
  28:	675f6d72 			; <UNDEFINED> instruction: 0x675f6d72
  2c:	315f6363 	cmpcc	pc, r3, ror #6
  30:	5c332e30 	ldcpl	14, cr2, [r3], #-192	; 0xffffff40
  34:	32203031 	eorcc	r3, r0, #49	; 0x31
  38:	2e313230 	mrccs	2, 1, r3, cr1, cr0, {1}
  3c:	615c3031 	cmpvs	ip, r1, lsr r0
  40:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
  44:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
  48:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
  4c:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
  50:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  54:	63616d5c 	cmnvs	r1, #92, 26	; 0x1700
  58:	656e6968 	strbvs	r6, [lr, #-2408]!	; 0xfffff698
  5c:	5c3a6400 	cfldrspl	mvf6, [sl], #-0
  60:	385f7773 	ldmdacc	pc, {r0, r1, r4, r5, r6, r8, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
  64:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
  68:	6363675f 	cmnvs	r3, #24903680	; 0x17c0000
  6c:	2e30315f 	mrccs	1, 1, r3, cr0, cr15, {2}
  70:	30315c33 	eorscc	r5, r1, r3, lsr ip
  74:	32303220 	eorscc	r3, r0, #32, 4
  78:	30312e31 	eorscc	r2, r1, r1, lsr lr
  7c:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
  80:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
  84:	61652d65 	cmnvs	r5, r5, ror #26
  88:	695c6962 	ldmdbvs	ip, {r1, r5, r6, r8, fp, sp, lr}^
  8c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
  90:	735c6564 	cmpvc	ip, #100, 10	; 0x19000000
  94:	00007379 	andeq	r7, r0, r9, ror r3
  98:	696e696d 	stmdbvs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
  9c:	5f6c616d 	svcpl	0x006c616d
  a0:	75647261 	strbvc	r7, [r4, #-609]!	; 0xfffffd9f
  a4:	2e6f6e69 	cdpcs	14, 6, cr6, cr15, cr9, {3}
  a8:	00010063 	andeq	r0, r1, r3, rrx
  ac:	65645f00 	strbvs	r5, [r4, #-3840]!	; 0xfffff100
  b0:	6c756166 	ldfvse	f6, [r5], #-408	; 0xfffffe68
  b4:	79745f74 	ldmdbvc	r4!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
  b8:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
  bc:	00020068 	andeq	r0, r2, r8, rrx
  c0:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xfffff100
  c4:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
  c8:	0300682e 	movweq	r6, #2094	; 0x82e
  cc:	74730000 	ldrbtvc	r0, [r3], #-0
  d0:	6632336d 	ldrtvs	r3, [r2], -sp, ror #6
  d4:	65725f34 	ldrbvs	r5, [r2, #-3892]!	; 0xfffff0cc
  d8:	682e7367 	stmdavs	lr!, {r0, r1, r2, r5, r6, r8, r9, ip, sp, lr}
  dc:	00000100 	andeq	r0, r0, r0, lsl #2
  e0:	696e696d 	stmdbvs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
  e4:	5f6c616d 	svcpl	0x006c616d
  e8:	75647261 	strbvc	r7, [r4, #-609]!	; 0xfffffd9f
  ec:	2e6f6e69 	cdpcs	14, 6, cr6, cr15, cr9, {3}
  f0:	00010068 	andeq	r0, r1, r8, rrx
  f4:	01050000 	mrseq	r0, (UNDEF: 5)
  f8:	00020500 	andeq	r0, r2, r0, lsl #10
			fb: R_ARM_ABS32	.text
  fc:	03000000 	movweq	r0, #0
 100:	1b050110 	blne	140548 <delay+0x14037c>
 104:	9f010530 	svcls	0x00010530
 108:	8305056a 	movwhi	r0, #21866	; 0x556a
 10c:	0c030d05 	stceq	13, cr0, [r3], {5}
 110:	03320558 	teqeq	r2, #88, 10	; 0x16000000
 114:	4c052077 	stcmi	0, cr2, [r5], {119}	; 0x77
 118:	2e47053c 	mcrcs	5, 2, r0, cr7, cr12, {1}
 11c:	053c4205 	ldreq	r4, [ip, #-517]!	; 0xfffffdfb
 120:	5d052040 	stcpl	0, cr2, [r5, #-256]	; 0xffffff00
 124:	3c68052e 	cfstr64cc	mvdx0, [r8], #-184	; 0xffffff48
 128:	052e6305 	streq	r6, [lr, #-773]!	; 0xfffffcfb
 12c:	54052017 	strpl	r2, [r5], #-23	; 0xffffffe9
 130:	2025052e 	eorcs	r0, r5, lr, lsr #10
 134:	05210d05 	streq	r0, [r1, #-3333]!	; 0xfffff2fb
 138:	4c052332 	stcmi	3, cr2, [r5], {50}	; 0x32
 13c:	2e47053c 	mcrcs	5, 2, r0, cr7, cr12, {1}
 140:	053c4205 	ldreq	r4, [ip, #-517]!	; 0xfffffdfb
 144:	5d052040 	stcpl	0, cr2, [r5, #-256]	; 0xffffff00
 148:	3c68052e 	cfstr64cc	mvdx0, [r8], #-184	; 0xffffff48
 14c:	052e6305 	streq	r6, [lr, #-773]!	; 0xfffffcfb
 150:	54052017 	strpl	r2, [r5], #-23	; 0xffffffe9
 154:	2025052e 	eorcs	r0, r5, lr, lsr #10
 158:	05210d05 	streq	r0, [r1, #-3333]!	; 0xfffff2fb
 15c:	05a22601 	streq	r2, [r2, #1537]!	; 0x601
 160:	27055905 	strcs	r5, [r5, -r5, lsl #18]
 164:	4a380569 	bmi	e01710 <delay+0xe01544>
 168:	054a3305 	strbeq	r3, [sl, #-773]	; 0xfffffcfb
 16c:	27052052 	smlsdcs	r5, r2, r0, r2
 170:	4a38056a 	bmi	e01720 <delay+0xe01554>
 174:	054a3305 	strbeq	r3, [sl, #-773]	; 0xfffffcfb
 178:	14052052 	strne	r2, [r5], #-82	; 0xffffffae
 17c:	2301056b 	movwcs	r0, #5483	; 0x156b
 180:	830505a2 	movwhi	r0, #21922	; 0x55a2
 184:	0c030d05 	stceq	13, cr0, [r3], {5}
 188:	034e0558 	movteq	r0, #58712	; 0xe558
 18c:	3f052077 	svccc	0x00052077
 190:	01040200 	mrseq	r0, R12_usr
 194:	0045053c 	subeq	r0, r5, ip, lsr r5
 198:	4a010402 	bmi	411a8 <delay+0x40fdc>
 19c:	02003f05 	andeq	r3, r0, #5, 30
 1a0:	05580104 	ldrbeq	r0, [r8, #-260]	; 0xfffffefc
 1a4:	0402000d 	streq	r0, [r2], #-13
 1a8:	67055901 	strvs	r5, [r5, -r1, lsl #18]
 1ac:	02040200 	andeq	r0, r4, #0, 4
 1b0:	006e051f 	rsbeq	r0, lr, pc, lsl r5
 1b4:	4a020402 	bmi	811c4 <delay+0x80ff8>
 1b8:	02006a05 	andeq	r6, r0, #20480	; 0x5000
 1bc:	054a0204 	strbeq	r0, [sl, #-516]	; 0xfffffdfc
 1c0:	04020067 	streq	r0, [r2], #-103	; 0xffffff99
 1c4:	0d052e02 	stceq	14, cr2, [r5, #-8]
 1c8:	02040200 	andeq	r0, r4, #0, 4
 1cc:	234e0559 	movtcs	r0, #58713	; 0xe559
 1d0:	02003f05 	andeq	r3, r0, #5, 30
 1d4:	053c0104 	ldreq	r0, [ip, #-260]!	; 0xfffffefc
 1d8:	04020045 	streq	r0, [r2], #-69	; 0xffffffbb
 1dc:	3f054a01 	svccc	0x00054a01
 1e0:	01040200 	mrseq	r0, R12_usr
 1e4:	000d0558 	andeq	r0, sp, r8, asr r5
 1e8:	59010402 	stmdbpl	r1, {r1, sl}
 1ec:	02006705 	andeq	r6, r0, #1310720	; 0x140000
 1f0:	051f0204 	ldreq	r0, [pc, #-516]	; fffffff4 <delay+0xfffffe28>
 1f4:	0402006e 	streq	r0, [r2], #-110	; 0xffffff92
 1f8:	6a054a02 	bvs	152a08 <delay+0x15283c>
 1fc:	02040200 	andeq	r0, r4, #0, 4
 200:	0067054a 	rsbeq	r0, r7, sl, asr #10
 204:	2e020402 	cdpcs	4, 0, cr0, cr2, cr2, {0}
 208:	05590d05 	ldrbeq	r0, [r9, #-3333]	; 0xfffff2fb
 20c:	05a22601 	streq	r2, [r2, #1537]!	; 0x601
 210:	0e054b1a 	vmoveq.32	d5[0], r4
 214:	4c0a052e 	cfstr32mi	mvfx0, [sl], {46}	; 0x2e
 218:	02001105 	andeq	r1, r0, #1073741825	; 0x40000001
 21c:	05200104 	streq	r0, [r0, #-260]!	; 0xfffffefc
 220:	0402000a 	streq	r0, [r2], #-10
 224:	01053c01 	tsteq	r5, r1, lsl #24
 228:	0006022f 	andeq	r0, r6, pc, lsr #4
 22c:	Address 0x0000022c is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	4f495047 	svcmi	0x00495047
   4:	46415f78 			; <UNDEFINED> instruction: 0x46415f78
   8:	52004c52 	andpl	r4, r0, #20992	; 0x5200
   c:	425f4343 	subsmi	r4, pc, #201326593	; 0xc000001
  10:	00524344 	subseq	r4, r2, r4, asr #6
  14:	4d6e6970 			; <UNDEFINED> instruction: 0x4d6e6970
  18:	0065646f 	rsbeq	r6, r5, pc, ror #8
  1c:	5f434352 	svcpl	0x00434352
  20:	56525352 			; <UNDEFINED> instruction: 0x56525352
  24:	52003344 	andpl	r3, r0, #68, 6	; 0x10000001
  28:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
  2c:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
  30:	52003031 	andpl	r3, r0, #49	; 0x31
  34:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
  38:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
  3c:	52003131 	andpl	r3, r0, #1073741836	; 0x4000000c
  40:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
  44:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
  48:	68730038 	ldmdavs	r3!, {r3, r4, r5}^
  4c:	2074726f 	rsbscs	r7, r4, pc, ror #4
  50:	00746e69 	rsbseq	r6, r4, r9, ror #28
  54:	5f434352 	svcpl	0x00434352
  58:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
  5c:	43435200 	movtmi	r5, #12800	; 0x3200
  60:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
  64:	45504c31 	ldrbmi	r4, [r0, #-3121]	; 0xfffff3cf
  68:	5200524e 	andpl	r5, r0, #-536870908	; 0xe0000004
  6c:	415f4343 	cmpmi	pc, r3, asr #6
  70:	4c334248 	lfmmi	f4, 4, [r3], #-288	; 0xfffffee0
  74:	524e4550 	subpl	r4, lr, #80, 10	; 0x14000000
  78:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
  7c:	505f414f 	subspl	r4, pc, pc, asr #2
  80:	00485052 	subeq	r5, r8, r2, asr r0
  84:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
  88:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  8c:	6400745f 	strvs	r7, [r0], #-1119	; 0xfffffba1
  90:	79616c65 	stmdbvc	r1!, {r0, r2, r5, r6, sl, fp, sp, lr}^
  94:	646f6d00 	strbtvs	r6, [pc], #-3328	; 9c <.debug_str+0x9c>
  98:	43520065 	cmpmi	r2, #101	; 0x65
  9c:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
  a0:	53523342 	cmppl	r2, #134217729	; 0x8000001
  a4:	52005254 	andpl	r5, r0, #84, 4	; 0x40000005
  a8:	415f4343 	cmpmi	pc, r3, asr #6
  ac:	45324250 	ldrmi	r4, [r2, #-592]!	; 0xfffffdb0
  b0:	4500524e 	strmi	r5, [r0, #-590]	; 0xfffffdb2
  b4:	736f5c3a 	cmnvc	pc, #14848	; 0x3a00
  b8:	74735c73 	ldrbtvc	r5, [r3], #-3187	; 0xfffff38d
  bc:	2d32336d 	ldccs	3, cr3, [r2, #-436]!	; 0xfffffe4c
  c0:	74747562 	ldrbtvc	r7, [r4], #-1378	; 0xfffffa9e
  c4:	622d6e6f 	eorvs	r6, sp, #1776	; 0x6f0
  c8:	6b6e696c 	blvs	1b9a680 <delay+0x1b9a4b4>
  cc:	6f6e2d79 	svcvs	0x006e2d79
  d0:	6d61722d 	sfmvs	f7, 2, [r1, #-180]!	; 0xffffff4c
  d4:	6472615c 	ldrbtvs	r6, [r2], #-348	; 0xfffffea4
  d8:	6f6e6975 	svcvs	0x006e6975
  dc:	6c65645f 	cfstrdvs	mvd6, [r5], #-380	; 0xfffffe84
  e0:	625f7961 	subsvs	r7, pc, #1589248	; 0x184000
  e4:	6b6e696c 	blvs	1b9a69c <delay+0x1b9a4d0>
  e8:	30305f79 	eorscc	r5, r0, r9, ror pc
  ec:	6c617600 	stclvs	6, cr7, [r1], #-0
  f0:	75006575 	strvc	r6, [r0, #-1397]	; 0xfffffa8b
  f4:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  f8:	5200745f 	andpl	r7, r0, #1593835520	; 0x5f000000
  fc:	415f4343 	cmpmi	pc, r3, asr #6
 100:	52324250 	eorspl	r4, r2, #80, 4
 104:	00525453 	subseq	r5, r2, r3, asr r4
 108:	5f434352 	svcpl	0x00434352
 10c:	32424841 	subcc	r4, r2, #4259840	; 0x410000
 110:	00524e45 	subseq	r4, r2, r5, asr #28
 114:	4f495047 	svcmi	0x00495047
 118:	444f5f78 	strbmi	r5, [pc], #-3960	; 120 <.debug_str+0x120>
 11c:	43520052 	cmpmi	r2, #82	; 0x52
 120:	4c505f43 	mrrcmi	15, 4, r5, r0, cr3
 124:	4746434c 	strbmi	r4, [r6, -ip, asr #6]
 128:	6f430052 	svcvs	0x00430052
 12c:	73746e75 	cmnvc	r4, #1872	; 0x750
 130:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 134:	505f444f 	subspl	r4, pc, pc, asr #8
 138:	00485052 	subeq	r5, r8, r2, asr r0
 13c:	5f434352 	svcpl	0x00434352
 140:	31425041 	cmpcc	r2, r1, asr #32
 144:	52545352 	subspl	r5, r4, #1207959553	; 0x48000001
 148:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 14c:	6f6c2067 	svcvs	0x006c2067
 150:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
 154:	5200746e 	andpl	r7, r0, #1845493760	; 0x6e000000
 158:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 15c:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 160:	43520031 	cmpmi	r2, #49	; 0x31
 164:	53525f43 	cmppl	r2, #268	; 0x10c
 168:	32445652 	subcc	r5, r4, #85983232	; 0x5200000
 16c:	43435200 	movtmi	r5, #12800	; 0x3200
 170:	0052435f 	subseq	r4, r2, pc, asr r3
 174:	5f434352 	svcpl	0x00434352
 178:	56525352 			; <UNDEFINED> instruction: 0x56525352
 17c:	52003444 	andpl	r3, r0, #68, 8	; 0x44000000
 180:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 184:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 188:	43520035 	cmpmi	r2, #53	; 0x35
 18c:	53525f43 	cmppl	r2, #268	; 0x10c
 190:	36445652 			; <UNDEFINED> instruction: 0x36445652
 194:	43435200 	movtmi	r5, #12800	; 0x3200
 198:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
 19c:	00374456 	eorseq	r4, r7, r6, asr r4
 1a0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 1a4:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 1a8:	43435200 	movtmi	r5, #12800	; 0x3200
 1ac:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
 1b0:	00394456 	eorseq	r4, r9, r6, asr r4
 1b4:	5f434352 	svcpl	0x00434352
 1b8:	00525343 	subseq	r5, r2, r3, asr #6
 1bc:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
 1c0:	5f38746e 	svcpl	0x0038746e
 1c4:	43520074 	cmpmi	r2, #116	; 0x74
 1c8:	53535f43 	cmppl	r3, #268	; 0x10c
 1cc:	00524743 	subseq	r4, r2, r3, asr #14
 1d0:	5f434352 	svcpl	0x00434352
 1d4:	48505250 	ldmdami	r0, {r4, r6, r9, ip, lr}^
 1d8:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 1dc:	505f784f 	subspl	r7, pc, pc, asr #16
 1e0:	52445055 	subpl	r5, r4, #85	; 0x55
 1e4:	43435200 	movtmi	r5, #12800	; 0x3200
 1e8:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 1ec:	54535231 	ldrbpl	r5, [r3], #-561	; 0xfffffdcf
 1f0:	6e750052 	mrcvs	0, 3, r0, cr5, cr2, {2}
 1f4:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 1f8:	63206465 			; <UNDEFINED> instruction: 0x63206465
 1fc:	00726168 	rsbseq	r6, r2, r8, ror #2
 200:	4f495047 	svcmi	0x00495047
 204:	4f4d5f78 	svcmi	0x004d5f78
 208:	00524544 	subseq	r4, r2, r4, asr #10
 20c:	5f434352 	svcpl	0x00434352
 210:	33424841 	movtcc	r4, #10305	; 0x2841
 214:	00524e45 	subseq	r4, r2, r5, asr #28
 218:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 21c:	63206465 			; <UNDEFINED> instruction: 0x63206465
 220:	00726168 	rsbseq	r6, r2, r8, ror #2
 224:	5f434352 	svcpl	0x00434352
 228:	31425041 	cmpcc	r2, r1, asr #32
 22c:	4e45504c 	cdpmi	0, 4, cr5, cr5, cr12, {2}
 230:	6f6c0052 	svcvs	0x006c0052
 234:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
 238:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 23c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 240:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 244:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 248:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
 24c:	5f323374 	svcpl	0x00323374
 250:	43520074 	cmpmi	r2, #116	; 0x74
 254:	4c505f43 	mrrcmi	15, 4, r5, r0, cr3
 258:	5332494c 	teqpl	r2, #76, 18	; 0x130000
 25c:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
 260:	736e7500 	cmnvc	lr, #0, 10
 264:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 268:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 26c:	50470074 	subpl	r0, r7, r4, ror r0
 270:	5f784f49 	svcpl	0x00784f49
 274:	48524641 	ldmdami	r2, {r0, r6, r9, sl, lr}^
 278:	43435200 	movtmi	r5, #12800	; 0x3200
 27c:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 280:	45504c32 	ldrbmi	r4, [r0, #-3122]	; 0xfffff3ce
 284:	7300524e 	movwvc	r5, #590	; 0x24e
 288:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 28c:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 290:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 294:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 298:	4e470074 	mcrmi	0, 2, r0, cr7, cr4, {3}
 29c:	31432055 	qdaddcc	r2, r5, r3
 2a0:	30312037 	eorscc	r2, r1, r7, lsr r0
 2a4:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
 2a8:	32303220 	eorscc	r3, r0, #32, 4
 2ac:	32383031 	eorscc	r3, r8, #49	; 0x31
 2b0:	72282034 	eorvc	r2, r8, #52	; 0x34
 2b4:	61656c65 	cmnvs	r5, r5, ror #24
 2b8:	20296573 	eorcs	r6, r9, r3, ror r5
 2bc:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
 2c0:	6f633d75 	svcvs	0x00633d75
 2c4:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
 2c8:	20346d2d 	eorscs	r6, r4, sp, lsr #26
 2cc:	68746d2d 	ldmdavs	r4!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
 2d0:	20626d75 	rsbcs	r6, r2, r5, ror sp
 2d4:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
 2d8:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
 2dc:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
 2e0:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
 2e4:	616d2d20 	cmnvs	sp, r0, lsr #26
 2e8:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
 2ec:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
 2f0:	6d2d6537 	cfstr32vs	mvfx6, [sp, #-220]!	; 0xffffff24
 2f4:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 2f8:	00304f2d 	eorseq	r4, r0, sp, lsr #30
 2fc:	2f637273 	svccs	0x00637273
 300:	696e696d 	stmdbvs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
 304:	5f6c616d 	svcpl	0x006c616d
 308:	75647261 	strbvc	r7, [r4, #-609]!	; 0xfffffd9f
 30c:	2e6f6e69 	cdpcs	14, 6, cr6, cr15, cr9, {3}
 310:	50470063 	subpl	r0, r7, r3, rrx
 314:	5f784f49 	svcpl	0x00784f49
 318:	4550534f 	ldrbmi	r5, [r0, #-847]	; 0xfffffcb1
 31c:	00524445 	subseq	r4, r2, r5, asr #8
 320:	5f434352 	svcpl	0x00434352
 324:	00524943 	subseq	r4, r2, r3, asr #18
 328:	69676964 	stmdbvs	r7!, {r2, r5, r6, r8, fp, sp, lr}^
 32c:	576c6174 			; <UNDEFINED> instruction: 0x576c6174
 330:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
 334:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 338:	4c5f784f 	mrrcmi	8, 4, r7, pc, cr15	; <UNPREDICTABLE>
 33c:	00524b43 	subseq	r4, r2, r3, asr #22
 340:	69676964 	stmdbvs	r7!, {r2, r5, r6, r8, fp, sp, lr}^
 344:	526c6174 	rsbpl	r6, ip, #116, 2
 348:	00646165 	rsbeq	r6, r4, r5, ror #2
 34c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 350:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 354:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 358:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 35c:	50470074 	subpl	r0, r7, r4, ror r0
 360:	5f784f49 	svcpl	0x00784f49
 364:	52525342 	subspl	r5, r2, #134217729	; 0x8000001
 368:	696e6900 	stmdbvs	lr!, {r8, fp, sp, lr}^
 36c:	69704774 	ldmdbvs	r0!, {r2, r4, r5, r6, r8, r9, sl, lr}^
 370:	4352006f 	cmpmi	r2, #111	; 0x6f
 374:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
 378:	53523242 	cmppl	r2, #536870916	; 0x20000004
 37c:	52005254 	andpl	r5, r0, #84, 4	; 0x40000005
 380:	415f4343 	cmpmi	pc, r3, asr #6
 384:	4c324250 	lfmmi	f4, 4, [r2], #-320	; 0xfffffec0
 388:	524e4550 	subpl	r4, lr, #80, 10	; 0x14000000
 38c:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 390:	4f5f784f 	svcmi	0x005f784f
 394:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
 398:	43520052 	cmpmi	r2, #82	; 0x52
 39c:	50415f43 	subpl	r5, r1, r3, asr #30
 3a0:	4e453142 	dvfmism	f3, f5, f2
 3a4:	49480052 	stmdbmi	r8, {r1, r4, r6}^
 3a8:	47004847 	strmi	r4, [r0, -r7, asr #16]
 3ac:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 3b0:	5244495f 	subpl	r4, r4, #1556480	; 0x17c000
 3b4:	756f4300 	strbvc	r4, [pc, #-768]!	; bc <.debug_str+0xbc>
 3b8:	5073746e 	rsbspl	r7, r3, lr, ror #8
 3bc:	734d7265 	movtvc	r7, #53861	; 0xd265
 3c0:	43435200 	movtmi	r5, #12800	; 0x3200
 3c4:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 3c8:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
   c:	45206d72 	strmi	r6, [r0, #-3442]!	; 0xfffff28e
  10:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  14:	20646564 	rsbcs	r6, r4, r4, ror #10
  18:	6c6f6f54 	stclvs	15, cr6, [pc], #-336	; fffffed0 <delay+0xfffffd04>
  1c:	69616863 	stmdbvs	r1!, {r0, r1, r5, r6, fp, sp, lr}^
  20:	3031206e 	eorscc	r2, r1, lr, rrx
  24:	322d332e 	eorcc	r3, sp, #-1207959552	; 0xb8000000
  28:	2e313230 	mrccs	2, 1, r3, cr1, cr0, {1}
  2c:	20293031 	eorcs	r3, r9, r1, lsr r0
  30:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
  34:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
  38:	30313230 	eorscc	r3, r1, r0, lsr r2
  3c:	20343238 	eorscs	r3, r4, r8, lsr r2
  40:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  44:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  48:	Address 0x00000048 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
			14: R_ARM_ABS32	.debug_frame
			18: R_ARM_ABS32	.text
  1c:	00000024 	andeq	r0, r0, r4, lsr #32
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	070d4101 	streq	r4, [sp, -r1, lsl #2]
  28:	410d0d4c 	tstmi	sp, ip, asr #26
  2c:	00000ec7 	andeq	r0, r0, r7, asr #29
  30:	00000024 	andeq	r0, r0, r4, lsr #32
  34:	00000000 	andeq	r0, r0, r0
			34: R_ARM_ABS32	.debug_frame
  38:	00000024 	andeq	r0, r0, r4, lsr #32
			38: R_ARM_ABS32	.text
  3c:	00000088 	andeq	r0, r0, r8, lsl #1
  40:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  44:	100e4101 	andne	r4, lr, r1, lsl #2
  48:	79070d41 	stmdbvc	r7, {r0, r6, r8, sl, fp}
  4c:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  50:	0ec7410d 	poleqs	f4, f7, #5.0
  54:	00000000 	andeq	r0, r0, r0
  58:	00000024 	andeq	r0, r0, r4, lsr #32
  5c:	00000000 	andeq	r0, r0, r0
			5c: R_ARM_ABS32	.debug_frame
  60:	000000ac 	andeq	r0, r0, ip, lsr #1
			60: R_ARM_ABS32	.text
  64:	00000068 	andeq	r0, r0, r8, rrx
  68:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  6c:	100e4101 	andne	r4, lr, r1, lsl #2
  70:	69070d41 	stmdbvs	r7, {r0, r6, r8, sl, fp}
  74:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  78:	0ec7410d 	poleqs	f4, f7, #5.0
  7c:	00000000 	andeq	r0, r0, r0
  80:	00000024 	andeq	r0, r0, r4, lsr #32
  84:	00000000 	andeq	r0, r0, r0
			84: R_ARM_ABS32	.debug_frame
  88:	00000114 	andeq	r0, r0, r4, lsl r1
			88: R_ARM_ABS32	.text
  8c:	000000b8 	strheq	r0, [r0], -r8
  90:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  94:	100e4101 	andne	r4, lr, r1, lsl #2
  98:	02070d41 	andeq	r0, r7, #4160	; 0x1040
  9c:	41040e51 	tstmi	r4, r1, asr lr
  a0:	c7410d0d 	strbgt	r0, [r1, -sp, lsl #26]
  a4:	0000000e 	andeq	r0, r0, lr
  a8:	00000024 	andeq	r0, r0, r4, lsr #32
  ac:	00000000 	andeq	r0, r0, r0
			ac: R_ARM_ABS32	.debug_frame
  b0:	000001cc 	andeq	r0, r0, ip, asr #3
			b0: R_ARM_ABS32	.text
  b4:	0000002c 	andeq	r0, r0, ip, lsr #32
  b8:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  bc:	180e4101 	stmdane	lr, {r0, r8, lr}
  c0:	50070d41 	andpl	r0, r7, r1, asr #26
  c4:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  c8:	0ec7410d 	poleqs	f4, f7, #5.0
  cc:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002d41 	andeq	r2, r0, r1, asr #26
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000023 	andeq	r0, r0, r3, lsr #32
  10:	2d453705 	stclcs	7, cr3, [r5, #-20]	; 0xffffffec
  14:	0d06004d 	stceq	0, cr0, [r6, #-308]	; 0xfffffecc
  18:	02094d07 	andeq	r4, r9, #448	; 0x1c0
  1c:	01140412 	tsteq	r4, r2, lsl r4
  20:	03170115 	tsteq	r7, #1073741829	; 0x40000005
  24:	01190118 	tsteq	r9, r8, lsl r1
  28:	061e011a 			; <UNDEFINED> instruction: 0x061e011a
  2c:	Address 0x0000002c is out of bounds.

