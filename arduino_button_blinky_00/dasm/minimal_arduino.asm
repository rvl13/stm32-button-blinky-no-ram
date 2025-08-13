
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

Disassembly of section .data:

00000000 <RCC_PRPH>:
   0:	40023800 	andmi	r3, r2, r0, lsl #16

00000004 <GPIOA_PRPH>:
   4:	40020000 	andmi	r0, r2, r0

00000008 <GPIOD_PRPH>:
   8:	40020c00 	andmi	r0, r2, r0, lsl #24

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000002bb 			; <UNDEFINED> instruction: 0x000002bb
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	0000028e 	andeq	r0, r0, lr, lsl #5
			c: R_ARM_ABS32	.debug_str
  10:	0002f00c 	andeq	pc, r2, ip
			11: R_ARM_ABS32	.debug_str
  14:	00007900 	andeq	r7, r0, r0, lsl #18
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	0001cc00 	andeq	ip, r1, r0, lsl #24
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000020c 	andeq	r0, r0, ip, lsl #4
			28: R_ARM_ABS32	.debug_str
  2c:	0001b003 	andeq	fp, r1, r3
			2d: R_ARM_ABS32	.debug_str
  30:	182b0200 	stmdane	fp!, {r9}
  34:	00000038 	andeq	r0, r0, r8, lsr r0
  38:	e6080102 	str	r0, [r8], -r2, lsl #2
			3b: R_ARM_ABS32	.debug_str
  3c:	02000001 	andeq	r0, r0, #1
  40:	004a0502 	subeq	r0, sl, r2, lsl #10
			42: R_ARM_ABS32	.debug_str
  44:	02020000 	andeq	r0, r2, #0
  48:	00027b07 	andeq	r7, r2, r7, lsl #22
			49: R_ARM_ABS32	.debug_str
  4c:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  50:	00000194 	muleq	r0, r4, r1
			50: R_ARM_ABS32	.debug_str
  54:	0000bf03 	andeq	fp, r0, r3, lsl #30
			55: R_ARM_ABS32	.debug_str
  58:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  5c:	00000060 	andeq	r0, r0, r0, rrx
  60:	40070402 	andmi	r0, r7, r2, lsl #8
			63: R_ARM_ABS32	.debug_str
  64:	02000003 	andeq	r0, r0, #3
  68:	013d0508 	teqeq	sp, r8, lsl #10
			6a: R_ARM_ABS32	.debug_str
  6c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  70:	00022607 	andeq	r2, r2, r7, lsl #12
			71: R_ARM_ABS32	.debug_str
  74:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  78:	00746e69 	rsbseq	r6, r4, r9, ror #28
  7c:	55070402 	strpl	r0, [r7, #-1026]	; 0xfffffbfe
			7f: R_ARM_ABS32	.debug_str
  80:	03000002 	movweq	r0, #2
  84:	000000ee 	andeq	r0, r0, lr, ror #1
			84: R_ARM_ABS32	.debug_str
  88:	2c131803 	ldccs	8, cr1, [r3], {3}
  8c:	03000000 	movweq	r0, #0
  90:	0000023d 	andeq	r0, r0, sp, lsr r2
			90: R_ARM_ABS32	.debug_str
  94:	54143003 	ldrpl	r3, [r4], #-3
  98:	05000000 	streq	r0, [r0, #-0]
  9c:	00380107 	eorseq	r0, r8, r7, lsl #2
  a0:	0a040000 	beq	1000a8 <digitalWrite+0xfff94>
  a4:	00017601 	andeq	r7, r1, r1, lsl #12
  a8:	01610600 	cmneq	r1, r0, lsl #12
			aa: R_ARM_ABS32	.debug_str
  ac:	06000000 	streq	r0, [r0], -r0
  b0:	00000119 	andeq	r0, r0, r9, lsl r1
			b0: R_ARM_ABS32	.debug_str
  b4:	00540601 	subseq	r0, r4, r1, lsl #12
			b6: R_ARM_ABS32	.debug_str
  b8:	06020000 	streq	r0, [r2], -r0
  bc:	00000314 	andeq	r0, r0, r4, lsl r3
			bc: R_ARM_ABS32	.debug_str
  c0:	01d90603 	bicseq	r0, r9, r3, lsl #12
			c2: R_ARM_ABS32	.debug_str
  c4:	06040000 	streq	r0, [r4], -r0
  c8:	00000366 	andeq	r0, r0, r6, ror #6
			c8: R_ARM_ABS32	.debug_str
  cc:	00cf0605 	sbceq	r0, pc, r5, lsl #12
			ce: R_ARM_ABS32	.debug_str
  d0:	06060000 	streq	r0, [r6], -r0
  d4:	0000014b 	andeq	r0, r0, fp, asr #2
			d4: R_ARM_ABS32	.debug_str
  d8:	01300607 	teqeq	r0, r7, lsl #12
			da: R_ARM_ABS32	.debug_str
  dc:	06080000 	streq	r0, [r8], -r0
  e0:	000000f6 	strdeq	r0, [r0], -r6
			e0: R_ARM_ABS32	.debug_str
  e4:	01560609 	cmpeq	r6, r9, lsl #12
			e6: R_ARM_ABS32	.debug_str
  e8:	060a0000 	streq	r0, [sl], -r0
  ec:	0000001c 	andeq	r0, r0, ip, lsl r0
			ec: R_ARM_ABS32	.debug_str
  f0:	03a9060b 			; <UNDEFINED> instruction: 0x03a9060b
			f2: R_ARM_ABS32	.debug_str
  f4:	060c0000 	streq	r0, [ip], -r0
  f8:	00000103 	andeq	r0, r0, r3, lsl #2
			f8: R_ARM_ABS32	.debug_str
  fc:	0200060d 	andeq	r0, r0, #13631488	; 0xd00000
			fe: R_ARM_ABS32	.debug_str
 100:	060e0000 	streq	r0, [lr], -r0
 104:	00000168 	andeq	r0, r0, r8, ror #2
			104: R_ARM_ABS32	.debug_str
 108:	038e060f 	orreq	r0, lr, #15728640	; 0xf00000
			10a: R_ARM_ABS32	.debug_str
 10c:	06100000 	ldreq	r0, [r0], -r0
 110:	000000dc 	ldrdeq	r0, [r0], -ip
			110: R_ARM_ABS32	.debug_str
 114:	01730611 	cmneq	r3, r1, lsl r6
			116: R_ARM_ABS32	.debug_str
 118:	06120000 	ldreq	r0, [r2], -r0
 11c:	0000017e 	andeq	r0, r0, lr, ror r1
			11c: R_ARM_ABS32	.debug_str
 120:	005d0613 	subseq	r0, sp, r3, lsl r6
			122: R_ARM_ABS32	.debug_str
 124:	06140000 	ldreq	r0, [r4], -r0
 128:	0000026d 	andeq	r0, r0, sp, ror #4
			128: R_ARM_ABS32	.debug_str
 12c:	006b0615 	rsbeq	r0, fp, r5, lsl r6
			12e: R_ARM_ABS32	.debug_str
 130:	06160000 	ldreq	r0, [r6], -r0
 134:	00000189 	andeq	r0, r0, r9, lsl #3
			134: R_ARM_ABS32	.debug_str
 138:	02180617 	andseq	r0, r8, #24117248	; 0x1700000
			13a: R_ARM_ABS32	.debug_str
 13c:	06180000 	ldreq	r0, [r8], -r0
 140:	00000373 	andeq	r0, r0, r3, ror r3
			140: R_ARM_ABS32	.debug_str
 144:	003f0619 	eorseq	r0, pc, r9, lsl r6	; <UNPREDICTABLE>
			146: R_ARM_ABS32	.debug_str
 148:	061a0000 	ldreq	r0, [sl], -r0
 14c:	0000019d 	muleq	r0, sp, r1
			14c: R_ARM_ABS32	.debug_str
 150:	000b061b 	andeq	r0, fp, fp, lsl r6
			152: R_ARM_ABS32	.debug_str
 154:	061c0000 	ldreq	r0, [ip], -r0
 158:	000001a8 	andeq	r0, r0, r8, lsr #3
			158: R_ARM_ABS32	.debug_str
 15c:	0027061d 	eoreq	r0, r7, sp, lsl r6
			15e: R_ARM_ABS32	.debug_str
 160:	061e0000 	ldreq	r0, [lr], -r0
 164:	00000033 	andeq	r0, r0, r3, lsr r0
			164: R_ARM_ABS32	.debug_str
 168:	01ba061f 			; <UNDEFINED> instruction: 0x01ba061f
			16a: R_ARM_ABS32	.debug_str
 16c:	06200000 	strteq	r0, [r0], -r0
 170:	00000246 	andeq	r0, r0, r6, asr #4
			170: R_ARM_ABS32	.debug_str
 174:	07050021 	streq	r0, [r5, -r1, lsr #32]
 178:	00003801 	andeq	r3, r0, r1, lsl #16
 17c:	01310400 	teqeq	r1, r0, lsl #8
 180:	000001c1 	andeq	r0, r0, r1, asr #3
 184:	0001f406 	andeq	pc, r1, r6, lsl #8
			185: R_ARM_ABS32	.debug_str
 188:	81060000 	mrshi	r0, (UNDEF: 6)
			18b: R_ARM_ABS32	.debug_str
 18c:	01000003 	tsteq	r0, r3
 190:	00030606 	andeq	r0, r3, r6, lsl #12
			191: R_ARM_ABS32	.debug_str
 194:	cd060200 	sfmgt	f0, 4, [r6, #-0]
			197: R_ARM_ABS32	.debug_str
 198:	03000001 	movweq	r0, #1
 19c:	00039f06 	andeq	r9, r3, r6, lsl #30
			19d: R_ARM_ABS32	.debug_str
 1a0:	0f060400 	svceq	0x00060400
			1a3: R_ARM_ABS32	.debug_str
 1a4:	05000001 	streq	r0, [r0, #-1]
 1a8:	00035206 	andeq	r5, r3, r6, lsl #4
			1a9: R_ARM_ABS32	.debug_str
 1ac:	29060600 	stmdbcs	r6, {r9, sl}
			1af: R_ARM_ABS32	.debug_str
 1b0:	07000003 	streq	r0, [r0, -r3]
 1b4:	00000006 	andeq	r0, r0, r6
			1b5: R_ARM_ABS32	.debug_str
 1b8:	62060800 	andvs	r0, r6, #0, 16
			1bb: R_ARM_ABS32	.debug_str
 1bc:	09000002 	stmdbeq	r0, {r1}
 1c0:	01070500 	tsteq	r7, r0, lsl #10
 1c4:	00000038 	andeq	r0, r0, r8, lsr r0
 1c8:	dc010d05 	stcle	13, cr0, [r1], {5}
 1cc:	07000001 	streq	r0, [r0, -r1]
 1d0:	00574f4c 	subseq	r4, r7, ip, asr #30
 1d4:	039a0600 	orrseq	r0, sl, #0, 12
			1d6: R_ARM_ABS32	.debug_str
 1d8:	00010000 	andeq	r0, r1, r0
 1dc:	0001c408 	andeq	ip, r1, r8, lsl #8
			1dd: R_ARM_ABS32	.debug_str
 1e0:	0b090100 	bleq	2405e8 <digitalWrite+0x2404d4>
 1e4:	000001ee 	andeq	r0, r0, lr, ror #3
 1e8:	00000305 	andeq	r0, r0, r5, lsl #6
			1ea: R_ARM_ABS32	RCC_PRPH
 1ec:	04090000 	streq	r0, [r9], #-0
 1f0:	0000008f 	andeq	r0, r0, pc, lsl #1
 1f4:	0000b408 	andeq	fp, r0, r8, lsl #8
			1f5: R_ARM_ABS32	.debug_str
 1f8:	0b0a0100 	bleq	280600 <digitalWrite+0x2804ec>
 1fc:	000001ee 	andeq	r0, r0, lr, ror #3
 200:	00000305 	andeq	r0, r0, r5, lsl #6
			202: R_ARM_ABS32	GPIOA_PRPH
 204:	25080000 	strcs	r0, [r8, #-0]
			207: R_ARM_ABS32	.debug_str
 208:	01000001 	tsteq	r0, r1
 20c:	01ee0b0b 	mvneq	r0, fp, lsl #22
 210:	03050000 	movweq	r0, #20480	; 0x5000
 214:	00000000 	andeq	r0, r0, r0
			214: R_ARM_ABS32	GPIOD_PRPH
 218:	00031c0a 	andeq	r1, r3, sl, lsl #24
			219: R_ARM_ABS32	.debug_str
 21c:	063b0100 	ldrteq	r0, [fp], -r0, lsl #2
 220:	00000114 	andeq	r0, r0, r4, lsl r1
			220: R_ARM_ABS32	.text
 224:	000000b8 	strheq	r0, [r0], -r8
 228:	024d9c01 	subeq	r9, sp, #256	; 0x100
 22c:	700b0000 	andvc	r0, fp, r0
 230:	01006e69 	tsteq	r0, r9, ror #28
 234:	00831b3b 	addeq	r1, r3, fp, lsr fp
 238:	91020000 	mrsls	r0, (UNDEF: 2)
 23c:	00e80c77 	rsceq	r0, r8, r7, ror ip
			23e: R_ARM_ABS32	.debug_str
 240:	3b010000 	blcc	40248 <digitalWrite+0x40134>
 244:	00008328 	andeq	r8, r0, r8, lsr #6
 248:	76910200 	ldrvc	r0, [r1], r0, lsl #4
 24c:	03340d00 	teqeq	r4, #0, 26
			24e: R_ARM_ABS32	.debug_str
 250:	27010000 	strcs	r0, [r1, -r0]
 254:	00008309 	andeq	r8, r0, r9, lsl #6
 258:	0000ac00 	andeq	sl, r0, r0, lsl #24
			259: R_ARM_ABS32	.text
 25c:	00006800 	andeq	r6, r0, r0, lsl #16
 260:	779c0100 	ldrvc	r0, [ip, r0, lsl #2]
 264:	0b000002 	bleq	274 <.debug_info+0x274>
 268:	006e6970 	rsbeq	r6, lr, r0, ror r9
 26c:	831d2701 	tsthi	sp, #262144	; 0x40000
 270:	02000000 	andeq	r0, r0, #0
 274:	0a007791 	beq	1e0c0 <digitalWrite+0x1dfac>
 278:	00000014 	andeq	r0, r0, r4, lsl r0
			278: R_ARM_ABS32	.debug_str
 27c:	24061401 	strcs	r1, [r6], #-1025	; 0xfffffbff
			27f: R_ARM_ABS32	.text
 280:	88000000 	stmdahi	r0, {}	; <UNPREDICTABLE>
 284:	01000000 	mrseq	r0, (UNDEF: 0)
 288:	0002ac9c 	muleq	r2, ip, ip
 28c:	69700b00 	ldmdbvs	r0!, {r8, r9, fp}^
 290:	1401006e 	strne	r0, [r1], #-110	; 0xffffff92
 294:	00008316 	andeq	r8, r0, r6, lsl r3
 298:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
 29c:	0000ca0c 	andeq	ip, r0, ip, lsl #20
			29d: R_ARM_ABS32	.debug_str
 2a0:	23140100 	tstcs	r4, #0, 2
 2a4:	00000083 	andeq	r0, r0, r3, lsl #1
 2a8:	00769102 	rsbseq	r9, r6, r2, lsl #2
 2ac:	00035d0e 	andeq	r5, r3, lr, lsl #26
			2ad: R_ARM_ABS32	.debug_str
 2b0:	060d0100 	streq	r0, [sp], -r0, lsl #2
 2b4:	00000000 	andeq	r0, r0, r0
			2b4: R_ARM_ABS32	.text
 2b8:	00000024 	andeq	r0, r0, r4, lsr #32
 2bc:	Address 0x000002bc is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <digitalWrite+0x2bff98>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <digitalWrite+0x380b14>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <digitalWrite+0xf82b50>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	3e010405 	cdpcc	4, 0, cr0, cr1, cr5, {0}
  3c:	490b0b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp}
  40:	3b0b3a13 	blcc	2ce894 <digitalWrite+0x2ce780>
  44:	010b390b 	tsteq	fp, fp, lsl #18
  48:	06000013 			; <UNDEFINED> instruction: 0x06000013
  4c:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
  50:	00000b1c 	andeq	r0, r0, ip, lsl fp
  54:	03002807 	movweq	r2, #2055	; 0x807
  58:	000b1c08 	andeq	r1, fp, r8, lsl #24
  5c:	00340800 	eorseq	r0, r4, r0, lsl #16
  60:	0b3a0e03 	bleq	e83874 <digitalWrite+0xe83760>
  64:	0b390b3b 	bleq	e42d58 <digitalWrite+0xe42c44>
  68:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
  6c:	00001802 	andeq	r1, r0, r2, lsl #16
  70:	0b000f09 	bleq	3c9c <digitalWrite+0x3b88>
  74:	0013490b 	andseq	r4, r3, fp, lsl #18
  78:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
  7c:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  80:	0b3b0b3a 	bleq	ec2d70 <digitalWrite+0xec2c5c>
  84:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  88:	06120111 			; <UNDEFINED> instruction: 0x06120111
  8c:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  90:	00130119 	andseq	r0, r3, r9, lsl r1
  94:	00050b00 	andeq	r0, r5, r0, lsl #22
  98:	0b3a0803 	bleq	e820ac <digitalWrite+0xe81f98>
  9c:	0b390b3b 	bleq	e42d90 <digitalWrite+0xe42c7c>
  a0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  a4:	050c0000 	streq	r0, [ip, #-0]
  a8:	3a0e0300 	bcc	380cb0 <digitalWrite+0x380b9c>
  ac:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  b0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b4:	0d000018 	stceq	0, cr0, [r0, #-96]	; 0xffffffa0
  b8:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  bc:	0b3a0e03 	bleq	e838d0 <digitalWrite+0xe837bc>
  c0:	0b390b3b 	bleq	e42db4 <digitalWrite+0xe42ca0>
  c4:	13491927 	movtne	r1, #39207	; 0x9927
  c8:	06120111 			; <UNDEFINED> instruction: 0x06120111
  cc:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  d0:	00130119 	andseq	r0, r3, r9, lsl r1
  d4:	002e0e00 	eoreq	r0, lr, r0, lsl #28
  d8:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  dc:	0b3b0b3a 	bleq	ec2dcc <digitalWrite+0xec2cb8>
  e0:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  e4:	06120111 			; <UNDEFINED> instruction: 0x06120111
  e8:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  ec:	00000019 	andeq	r0, r0, r9, lsl r0

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
			6: R_ARM_ABS32	.debug_info
   8:	00040000 	andeq	r0, r4, r0
	...
			10: R_ARM_ABS32	.text
  14:	000001cc 	andeq	r0, r0, ip, asr #3
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0000020f 	andeq	r0, r0, pc, lsl #4
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
 100:	1b05010d 	blne	14053c <digitalWrite+0x140428>
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
 164:	4a380569 	bmi	e01710 <digitalWrite+0xe015fc>
 168:	054a3305 	strbeq	r3, [sl, #-773]	; 0xfffffcfb
 16c:	27052052 	smlsdcs	r5, r2, r0, r2
 170:	4a38056a 	bmi	e01720 <digitalWrite+0xe0160c>
 174:	054a3305 	strbeq	r3, [sl, #-773]	; 0xfffffcfb
 178:	14052052 	strne	r2, [r5], #-82	; 0xffffffae
 17c:	2301056b 	movwcs	r0, #5483	; 0x156b
 180:	830505a2 	movwhi	r0, #21922	; 0x55a2
 184:	0c030d05 	stceq	13, cr0, [r3], {5}
 188:	034e0558 	movteq	r0, #58712	; 0xe558
 18c:	3f052077 	svccc	0x00052077
 190:	01040200 	mrseq	r0, R12_usr
 194:	0045053c 	subeq	r0, r5, ip, lsr r5
 198:	4a010402 	bmi	411a8 <digitalWrite+0x41094>
 19c:	02003f05 	andeq	r3, r0, #5, 30
 1a0:	05580104 	ldrbeq	r0, [r8, #-260]	; 0xfffffefc
 1a4:	0402000d 	streq	r0, [r2], #-13
 1a8:	67055901 	strvs	r5, [r5, -r1, lsl #18]
 1ac:	02040200 	andeq	r0, r4, #0, 4
 1b0:	006e051f 	rsbeq	r0, lr, pc, lsl r5
 1b4:	4a020402 	bmi	811c4 <digitalWrite+0x810b0>
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
 1f0:	051f0204 	ldreq	r0, [pc, #-516]	; fffffff4 <digitalWrite+0xfffffee0>
 1f4:	0402006e 	streq	r0, [r2], #-110	; 0xffffff92
 1f8:	6a054a02 	bvs	152a08 <digitalWrite+0x1528f4>
 1fc:	02040200 	andeq	r0, r4, #0, 4
 200:	0067054a 	rsbeq	r0, r7, sl, asr #10
 204:	2e020402 	cdpcs	4, 0, cr0, cr2, cr2, {0}
 208:	05590d05 	ldrbeq	r0, [r9, #-3333]	; 0xfffff2fb
 20c:	0a022601 	beq	89a18 <digitalWrite+0x89904>
 210:	Address 0x00000210 is out of bounds.


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
  78:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  7c:	5c73736f 	ldclpl	3, cr7, [r3], #-444	; 0xfffffe44
  80:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  84:	75622d32 	strbvc	r2, [r2, #-3378]!	; 0xfffff2ce
  88:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  8c:	696c622d 	stmdbvs	ip!, {r0, r2, r3, r5, r9, sp, lr}^
  90:	2d796b6e 	vldmdbcs	r9!, {d22-<overflow reg d76>}
  94:	722d6f6e 	eorvc	r6, sp, #440	; 0x1b8
  98:	615c6d61 	cmpvs	ip, r1, ror #26
  9c:	69756472 	ldmdbvs	r5!, {r1, r4, r5, r6, sl, sp, lr}^
  a0:	625f6f6e 	subsvs	r6, pc, #440	; 0x1b8
  a4:	6f747475 	svcvs	0x00747475
  a8:	6c625f6e 	stclvs	15, cr5, [r2], #-440	; 0xfffffe48
  ac:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  b0:	0030305f 	eorseq	r3, r0, pc, asr r0
  b4:	4f495047 	svcmi	0x00495047
  b8:	52505f41 	subspl	r5, r0, #260	; 0x104
  bc:	5f004850 	svcpl	0x00004850
  c0:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
  c4:	5f323374 	svcpl	0x00323374
  c8:	6f6d0074 	svcvs	0x006d0074
  cc:	52006564 	andpl	r6, r0, #100, 10	; 0x19000000
  d0:	415f4343 	cmpmi	pc, r3, asr #6
  d4:	52334248 	eorspl	r4, r3, #72, 4	; 0x80000004
  d8:	00525453 	subseq	r5, r2, r3, asr r4
  dc:	5f434352 	svcpl	0x00434352
  e0:	32425041 	subcc	r5, r2, #65	; 0x41
  e4:	00524e45 	subseq	r4, r2, r5, asr #28
  e8:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
  ec:	69750065 	ldmdbvs	r5!, {r0, r2, r5, r6}^
  f0:	5f38746e 	svcpl	0x0038746e
  f4:	43520074 	cmpmi	r2, #116	; 0x74
  f8:	50415f43 	subpl	r5, r1, r3, asr #30
  fc:	53523242 	cmppl	r2, #536870916	; 0x20000004
 100:	52005254 	andpl	r5, r0, #84, 4	; 0x40000005
 104:	415f4343 	cmpmi	pc, r3, asr #6
 108:	45324248 	ldrmi	r4, [r2, #-584]!	; 0xfffffdb8
 10c:	4700524e 	strmi	r5, [r0, -lr, asr #4]
 110:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 114:	52444f5f 	subpl	r4, r4, #380	; 0x17c
 118:	43435200 	movtmi	r5, #12800	; 0x3200
 11c:	4c4c505f 	mcrrmi	0, 5, r5, ip, cr15
 120:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
 124:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 128:	505f444f 	subspl	r4, pc, pc, asr #8
 12c:	00485052 	subeq	r5, r8, r2, asr r0
 130:	5f434352 	svcpl	0x00434352
 134:	31425041 	cmpcc	r2, r1, asr #32
 138:	52545352 	subspl	r5, r4, #1207959553	; 0x48000001
 13c:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 140:	6f6c2067 	svcvs	0x006c2067
 144:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
 148:	5200746e 	andpl	r7, r0, #1845493760	; 0x6e000000
 14c:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 150:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 154:	43520031 	cmpmi	r2, #49	; 0x31
 158:	53525f43 	cmppl	r2, #268	; 0x10c
 15c:	32445652 	subcc	r5, r4, #85983232	; 0x5200000
 160:	43435200 	movtmi	r5, #12800	; 0x3200
 164:	0052435f 	subseq	r4, r2, pc, asr r3
 168:	5f434352 	svcpl	0x00434352
 16c:	56525352 			; <UNDEFINED> instruction: 0x56525352
 170:	52003444 	andpl	r3, r0, #68, 8	; 0x44000000
 174:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 178:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 17c:	43520035 	cmpmi	r2, #53	; 0x35
 180:	53525f43 	cmppl	r2, #268	; 0x10c
 184:	36445652 			; <UNDEFINED> instruction: 0x36445652
 188:	43435200 	movtmi	r5, #12800	; 0x3200
 18c:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
 190:	00374456 	eorseq	r4, r7, r6, asr r4
 194:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 198:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 19c:	43435200 	movtmi	r5, #12800	; 0x3200
 1a0:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
 1a4:	00394456 	eorseq	r4, r9, r6, asr r4
 1a8:	5f434352 	svcpl	0x00434352
 1ac:	00525343 	subseq	r5, r2, r3, asr #6
 1b0:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
 1b4:	5f38746e 	svcpl	0x0038746e
 1b8:	43520074 	cmpmi	r2, #116	; 0x74
 1bc:	53535f43 	cmppl	r3, #268	; 0x10c
 1c0:	00524743 	subseq	r4, r2, r3, asr #14
 1c4:	5f434352 	svcpl	0x00434352
 1c8:	48505250 	ldmdami	r0, {r4, r6, r9, ip, lr}^
 1cc:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 1d0:	505f784f 	subspl	r7, pc, pc, asr #16
 1d4:	52445055 	subpl	r5, r4, #85	; 0x55
 1d8:	43435200 	movtmi	r5, #12800	; 0x3200
 1dc:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 1e0:	54535231 	ldrbpl	r5, [r3], #-561	; 0xfffffdcf
 1e4:	6e750052 	mrcvs	0, 3, r0, cr5, cr2, {2}
 1e8:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 1ec:	63206465 			; <UNDEFINED> instruction: 0x63206465
 1f0:	00726168 	rsbseq	r6, r2, r8, ror #2
 1f4:	4f495047 	svcmi	0x00495047
 1f8:	4f4d5f78 	svcmi	0x004d5f78
 1fc:	00524544 	subseq	r4, r2, r4, asr #10
 200:	5f434352 	svcpl	0x00434352
 204:	33424841 	movtcc	r4, #10305	; 0x2841
 208:	00524e45 	subseq	r4, r2, r5, asr #28
 20c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 210:	63206465 			; <UNDEFINED> instruction: 0x63206465
 214:	00726168 	rsbseq	r6, r2, r8, ror #2
 218:	5f434352 	svcpl	0x00434352
 21c:	31425041 	cmpcc	r2, r1, asr #32
 220:	4e45504c 	cdpmi	0, 4, cr5, cr5, cr12, {2}
 224:	6f6c0052 	svcvs	0x006c0052
 228:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
 22c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 230:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 234:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 238:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 23c:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
 240:	5f323374 	svcpl	0x00323374
 244:	43520074 	cmpmi	r2, #116	; 0x74
 248:	4c505f43 	mrrcmi	15, 4, r5, r0, cr3
 24c:	5332494c 	teqpl	r2, #76, 18	; 0x130000
 250:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
 254:	736e7500 	cmnvc	lr, #0, 10
 258:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 25c:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 260:	50470074 	subpl	r0, r7, r4, ror r0
 264:	5f784f49 	svcpl	0x00784f49
 268:	48524641 	ldmdami	r2, {r0, r6, r9, sl, lr}^
 26c:	43435200 	movtmi	r5, #12800	; 0x3200
 270:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 274:	45504c32 	ldrbmi	r4, [r0, #-3122]	; 0xfffff3ce
 278:	7300524e 	movwvc	r5, #590	; 0x24e
 27c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 280:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 284:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 288:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 28c:	4e470074 	mcrmi	0, 2, r0, cr7, cr4, {3}
 290:	31432055 	qdaddcc	r2, r5, r3
 294:	30312037 	eorscc	r2, r1, r7, lsr r0
 298:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
 29c:	32303220 	eorscc	r3, r0, #32, 4
 2a0:	32383031 	eorscc	r3, r8, #49	; 0x31
 2a4:	72282034 	eorvc	r2, r8, #52	; 0x34
 2a8:	61656c65 	cmnvs	r5, r5, ror #24
 2ac:	20296573 	eorcs	r6, r9, r3, ror r5
 2b0:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
 2b4:	6f633d75 	svcvs	0x00633d75
 2b8:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
 2bc:	20346d2d 	eorscs	r6, r4, sp, lsr #26
 2c0:	68746d2d 	ldmdavs	r4!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
 2c4:	20626d75 	rsbcs	r6, r2, r5, ror sp
 2c8:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
 2cc:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
 2d0:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
 2d4:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
 2d8:	616d2d20 	cmnvs	sp, r0, lsr #26
 2dc:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
 2e0:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
 2e4:	6d2d6537 	cfstr32vs	mvfx6, [sp, #-220]!	; 0xffffff24
 2e8:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 2ec:	00304f2d 	eorseq	r4, r0, sp, lsr #30
 2f0:	2f637273 	svccs	0x00637273
 2f4:	696e696d 	stmdbvs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
 2f8:	5f6c616d 	svcpl	0x006c616d
 2fc:	75647261 	strbvc	r7, [r4, #-609]!	; 0xfffffd9f
 300:	2e6f6e69 	cdpcs	14, 6, cr6, cr15, cr9, {3}
 304:	50470063 	subpl	r0, r7, r3, rrx
 308:	5f784f49 	svcpl	0x00784f49
 30c:	4550534f 	ldrbmi	r5, [r0, #-847]	; 0xfffffcb1
 310:	00524445 	subseq	r4, r2, r5, asr #8
 314:	5f434352 	svcpl	0x00434352
 318:	00524943 	subseq	r4, r2, r3, asr #18
 31c:	69676964 	stmdbvs	r7!, {r2, r5, r6, r8, fp, sp, lr}^
 320:	576c6174 			; <UNDEFINED> instruction: 0x576c6174
 324:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
 328:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 32c:	4c5f784f 	mrrcmi	8, 4, r7, pc, cr15	; <UNPREDICTABLE>
 330:	00524b43 	subseq	r4, r2, r3, asr #22
 334:	69676964 	stmdbvs	r7!, {r2, r5, r6, r8, fp, sp, lr}^
 338:	526c6174 	rsbpl	r6, ip, #116, 2
 33c:	00646165 	rsbeq	r6, r4, r5, ror #2
 340:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 344:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 348:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 34c:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 350:	50470074 	subpl	r0, r7, r4, ror r0
 354:	5f784f49 	svcpl	0x00784f49
 358:	52525342 	subspl	r5, r2, #134217729	; 0x8000001
 35c:	696e6900 	stmdbvs	lr!, {r8, fp, sp, lr}^
 360:	69704774 	ldmdbvs	r0!, {r2, r4, r5, r6, r8, r9, sl, lr}^
 364:	4352006f 	cmpmi	r2, #111	; 0x6f
 368:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
 36c:	53523242 	cmppl	r2, #536870916	; 0x20000004
 370:	52005254 	andpl	r5, r0, #84, 4	; 0x40000005
 374:	415f4343 	cmpmi	pc, r3, asr #6
 378:	4c324250 	lfmmi	f4, 4, [r2], #-320	; 0xfffffec0
 37c:	524e4550 	subpl	r4, lr, #80, 10	; 0x14000000
 380:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 384:	4f5f784f 	svcmi	0x005f784f
 388:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
 38c:	43520052 	cmpmi	r2, #82	; 0x52
 390:	50415f43 	subpl	r5, r1, r3, asr #30
 394:	4e453142 	dvfmism	f3, f5, f2
 398:	49480052 	stmdbmi	r8, {r1, r4, r6}^
 39c:	47004847 	strmi	r4, [r0, -r7, asr #16]
 3a0:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 3a4:	5244495f 	subpl	r4, r4, #1556480	; 0x17c000
 3a8:	43435200 	movtmi	r5, #12800	; 0x3200
 3ac:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 3b0:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
   c:	45206d72 	strmi	r6, [r0, #-3442]!	; 0xfffff28e
  10:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  14:	20646564 	rsbcs	r6, r4, r4, ror #10
  18:	6c6f6f54 	stclvs	15, cr6, [pc], #-336	; fffffed0 <digitalWrite+0xfffffdbc>
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

