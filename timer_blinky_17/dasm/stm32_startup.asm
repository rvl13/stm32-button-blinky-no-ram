
obj/stm32_startup.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
   0:	b580      	push	{r7, lr}
   2:	b086      	sub	sp, #24
   4:	af00      	add	r7, sp, #0
   6:	4a1a      	ldr	r2, [pc, #104]	; (70 <Reset_Handler+0x70>)
   8:	4b1a      	ldr	r3, [pc, #104]	; (74 <Reset_Handler+0x74>)
   a:	1ad3      	subs	r3, r2, r3
   c:	607b      	str	r3, [r7, #4]
   e:	4b19      	ldr	r3, [pc, #100]	; (74 <Reset_Handler+0x74>)
  10:	617b      	str	r3, [r7, #20]
  12:	4b19      	ldr	r3, [pc, #100]	; (78 <Reset_Handler+0x78>)
  14:	613b      	str	r3, [r7, #16]
  16:	2300      	movs	r3, #0
  18:	60fb      	str	r3, [r7, #12]
  1a:	e00a      	b.n	32 <Reset_Handler+0x32>
  1c:	693a      	ldr	r2, [r7, #16]
  1e:	1c53      	adds	r3, r2, #1
  20:	613b      	str	r3, [r7, #16]
  22:	697b      	ldr	r3, [r7, #20]
  24:	1c59      	adds	r1, r3, #1
  26:	6179      	str	r1, [r7, #20]
  28:	7812      	ldrb	r2, [r2, #0]
  2a:	701a      	strb	r2, [r3, #0]
  2c:	68fb      	ldr	r3, [r7, #12]
  2e:	3301      	adds	r3, #1
  30:	60fb      	str	r3, [r7, #12]
  32:	68fa      	ldr	r2, [r7, #12]
  34:	687b      	ldr	r3, [r7, #4]
  36:	429a      	cmp	r2, r3
  38:	d3f0      	bcc.n	1c <Reset_Handler+0x1c>
  3a:	4a10      	ldr	r2, [pc, #64]	; (7c <Reset_Handler+0x7c>)
  3c:	4b10      	ldr	r3, [pc, #64]	; (80 <Reset_Handler+0x80>)
  3e:	1ad3      	subs	r3, r2, r3
  40:	607b      	str	r3, [r7, #4]
  42:	4b0f      	ldr	r3, [pc, #60]	; (80 <Reset_Handler+0x80>)
  44:	617b      	str	r3, [r7, #20]
  46:	2300      	movs	r3, #0
  48:	60bb      	str	r3, [r7, #8]
  4a:	e007      	b.n	5c <Reset_Handler+0x5c>
  4c:	697b      	ldr	r3, [r7, #20]
  4e:	1c5a      	adds	r2, r3, #1
  50:	617a      	str	r2, [r7, #20]
  52:	2200      	movs	r2, #0
  54:	701a      	strb	r2, [r3, #0]
  56:	68bb      	ldr	r3, [r7, #8]
  58:	3301      	adds	r3, #1
  5a:	60bb      	str	r3, [r7, #8]
  5c:	68ba      	ldr	r2, [r7, #8]
  5e:	687b      	ldr	r3, [r7, #4]
  60:	429a      	cmp	r2, r3
  62:	d3f3      	bcc.n	4c <Reset_Handler+0x4c>
  64:	f7ff fffe 	bl	0 <main>
			64: R_ARM_THM_CALL	main
  68:	bf00      	nop
  6a:	3718      	adds	r7, #24
  6c:	46bd      	mov	sp, r7
  6e:	bd80      	pop	{r7, pc}
	...
			70: R_ARM_ABS32	_edata
			74: R_ARM_ABS32	_sdata
			78: R_ARM_ABS32	_la_data
			7c: R_ARM_ABS32	_ebss
			80: R_ARM_ABS32	_sbss

Disassembly of section .isr_vector:

00000000 <vectors>:
   0:	20020000 	andcs	r0, r2, r0
   4:	00000000 	andeq	r0, r0, r0
			4: R_ARM_ABS32	Reset_Handler

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000176 	andeq	r0, r0, r6, ror r1
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000116 	andeq	r0, r0, r6, lsl r1
			c: R_ARM_ABS32	.debug_str
  10:	0000540c 	andeq	r5, r0, ip, lsl #8
			11: R_ARM_ABS32	.debug_str
  14:	00002200 	andeq	r2, r0, r0, lsl #4
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00008400 	andeq	r8, r0, r0, lsl #8
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000199 	muleq	r0, r9, r1
			28: R_ARM_ABS32	.debug_str
  2c:	00000703 	andeq	r0, r0, r3, lsl #14
			2d: R_ARM_ABS32	.debug_str
  30:	182b0200 	stmdane	fp!, {r9}
  34:	00000038 	andeq	r0, r0, r8, lsr r0
  38:	76080102 	strvc	r0, [r8], -r2, lsl #2
			3b: R_ARM_ABS32	.debug_str
  3c:	02000000 	andeq	r0, r0, #0
  40:	01780502 	cmneq	r8, r2, lsl #10
			42: R_ARM_ABS32	.debug_str
  44:	02020000 	andeq	r0, r2, #0
  48:	00009d07 	andeq	r9, r0, r7, lsl #26
			49: R_ARM_ABS32	.debug_str
  4c:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  50:	0000018b 	andeq	r0, r0, fp, lsl #3
			50: R_ARM_ABS32	.debug_str
  54:	0000b803 	andeq	fp, r0, r3, lsl #16
			55: R_ARM_ABS32	.debug_str
  58:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  5c:	00000060 	andeq	r0, r0, r0, rrx
  60:	8b070402 	blhi	1c1070 <Reset_Handler+0x1c1070>
			63: R_ARM_ABS32	.debug_str
  64:	02000000 	andeq	r0, r0, #0
  68:	00fa0508 	rscseq	r0, sl, r8, lsl #10
			6a: R_ARM_ABS32	.debug_str
  6c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  70:	0000d607 	andeq	sp, r0, r7, lsl #12
			71: R_ARM_ABS32	.debug_str
  74:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  78:	00746e69 	rsbseq	r6, r4, r9, ror #28
  7c:	c3070402 	movwgt	r0, #29698	; 0x7402
			7f: R_ARM_ABS32	.debug_str
  80:	03000000 	movweq	r0, #0
  84:	000000ed 	andeq	r0, r0, sp, ror #1
			84: R_ARM_ABS32	.debug_str
  88:	2c131803 	ldccs	8, cr1, [r3], {3}
  8c:	03000000 	movweq	r0, #0
  90:	00000182 	andeq	r0, r0, r2, lsl #3
			90: R_ARM_ABS32	.debug_str
  94:	54143003 	ldrpl	r3, [r4], #-3
  98:	05000000 	streq	r0, [r0, #-0]
  9c:	00000000 	andeq	r0, r0, r0
			9c: R_ARM_ABS32	.debug_str
  a0:	8f111501 	svchi	0x00111501
  a4:	05000000 	streq	r0, [r0, #-0]
  a8:	00000084 	andeq	r0, r0, r4, lsl #1
			a8: R_ARM_ABS32	.debug_str
  ac:	8f111601 	svchi	0x00111601
  b0:	05000000 	streq	r0, [r0, #-0]
  b4:	0000010d 	andeq	r0, r0, sp, lsl #2
			b4: R_ARM_ABS32	.debug_str
  b8:	8f111701 	svchi	0x00111701
  bc:	05000000 	streq	r0, [r0, #-0]
  c0:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
			c0: R_ARM_ABS32	.debug_str
  c4:	8f111901 	svchi	0x00111901
  c8:	05000000 	streq	r0, [r0, #-0]
  cc:	00000011 	andeq	r0, r0, r1, lsl r0
			cc: R_ARM_ABS32	.debug_str
  d0:	8f111a01 	svchi	0x00111a01
  d4:	06000000 	streq	r0, [r0], -r0
  d8:	0000008f 	andeq	r0, r0, pc, lsl #1
  dc:	000000e7 	andeq	r0, r0, r7, ror #1
  e0:	00007c07 	andeq	r7, r0, r7, lsl #24
  e4:	08000100 	stmdaeq	r0, {r8}
  e8:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
			e8: R_ARM_ABS32	.debug_str
  ec:	d70a2b01 	strle	r2, [sl, -r1, lsl #22]
  f0:	05000000 	streq	r0, [r0, #-0]
  f4:	00000003 	andeq	r0, r0, r3
			f5: R_ARM_ABS32	vectors
  f8:	00680900 	rsbeq	r0, r8, r0, lsl #18
			fa: R_ARM_ABS32	.debug_str
  fc:	31010000 	mrscc	r0, (UNDEF: 1)
 100:	00000006 	andeq	r0, r0, r6
			101: R_ARM_ABS32	.text
 104:	00008400 	andeq	r8, r0, r0, lsl #8
 108:	739c0100 	orrsvc	r0, ip, #0, 2
 10c:	0a000001 	beq	118 <.debug_info+0x118>
 110:	00000017 	andeq	r0, r0, r7, lsl r0
			110: R_ARM_ABS32	.debug_str
 114:	8f0b3401 	svchi	0x000b3401
 118:	02000000 	andeq	r0, r0, #0
 11c:	080a6491 	stmdaeq	sl, {r0, r4, r7, sl, sp, lr}
			11f: R_ARM_ABS32	.debug_str
 120:	01000001 	tsteq	r0, r1
 124:	01730b39 	cmneq	r3, r9, lsr fp
 128:	91020000 	mrsls	r0, (UNDEF: 2)
 12c:	00f50a74 	rscseq	r0, r5, r4, ror sl
			12e: R_ARM_ABS32	.debug_str
 130:	3a010000 	bcc	40138 <Reset_Handler+0x40138>
 134:	0001730b 	andeq	r7, r1, fp, lsl #6
 138:	70910200 	addsvc	r0, r1, r0, lsl #4
 13c:	0000160b 	andeq	r1, r0, fp, lsl #12
			13d: R_ARM_ABS32	.text
 140:	00002400 	andeq	r2, r0, r0, lsl #8
 144:	00015900 	andeq	r5, r1, r0, lsl #18
 148:	01940a00 	orrseq	r0, r4, r0, lsl #20
			14a: R_ARM_ABS32	.debug_str
 14c:	3d010000 	stccc	0, cr0, [r1, #-0]
 150:	00008f10 	andeq	r8, r0, r0, lsl pc
 154:	6c910200 	lfmvs	f0, 4, [r1], {0}
 158:	00460c00 	subeq	r0, r6, r0, lsl #24
			15a: R_ARM_ABS32	.text
 15c:	001e0000 	andseq	r0, lr, r0
 160:	940a0000 	strls	r0, [sl], #-0
			163: R_ARM_ABS32	.debug_str
 164:	01000001 	tsteq	r0, r1
 168:	008f1048 	addeq	r1, pc, r8, asr #32
 16c:	91020000 	mrsls	r0, (UNDEF: 2)
 170:	0d000068 	stceq	0, cr0, [r0, #-416]	; 0xfffffe60
 174:	00008304 	andeq	r8, r0, r4, lsl #6
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <Reset_Handler+0x2c00ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <Reset_Handler+0x380c28>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <Reset_Handler+0xf82c64>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	03003405 	movweq	r3, #1029	; 0x405
  3c:	3b0b3a0e 	blcc	2ce87c <Reset_Handler+0x2ce87c>
  40:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  44:	3c193f13 	ldccc	15, cr3, [r9], {19}
  48:	06000019 			; <UNDEFINED> instruction: 0x06000019
  4c:	13490101 	movtne	r0, #37121	; 0x9101
  50:	00001301 	andeq	r1, r0, r1, lsl #6
  54:	49002107 	stmdbmi	r0, {r0, r1, r2, r8, sp}
  58:	000b2f13 	andeq	r2, fp, r3, lsl pc
  5c:	00340800 	eorseq	r0, r4, r0, lsl #16
  60:	0b3a0e03 	bleq	e83874 <Reset_Handler+0xe83874>
  64:	0b390b3b 	bleq	e42d58 <Reset_Handler+0xe42d58>
  68:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
  6c:	00001802 	andeq	r1, r0, r2, lsl #16
  70:	3f012e09 	svccc	0x00012e09
  74:	3a0e0319 	bcc	380ce0 <Reset_Handler+0x380ce0>
  78:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  7c:	1119270b 	tstne	r9, fp, lsl #14
  80:	40061201 	andmi	r1, r6, r1, lsl #4
  84:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
  88:	00001301 	andeq	r1, r0, r1, lsl #6
  8c:	0300340a 	movweq	r3, #1034	; 0x40a
  90:	3b0b3a0e 	blcc	2ce8d0 <Reset_Handler+0x2ce8d0>
  94:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  98:	00180213 	andseq	r0, r8, r3, lsl r2
  9c:	010b0b00 	tsteq	fp, r0, lsl #22
  a0:	06120111 			; <UNDEFINED> instruction: 0x06120111
  a4:	00001301 	andeq	r1, r0, r1, lsl #6
  a8:	11010b0c 	tstne	r1, ip, lsl #22
  ac:	00061201 	andeq	r1, r6, r1, lsl #4
  b0:	000f0d00 	andeq	r0, pc, r0, lsl #26
  b4:	13490b0b 	movtne	r0, #39691	; 0x9b0b
  b8:	Address 0x000000b8 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
			6: R_ARM_ABS32	.debug_info
   8:	00040000 	andeq	r0, r4, r0
	...
			10: R_ARM_ABS32	.text
  14:	00000084 	andeq	r0, r0, r4, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000149 	andeq	r0, r0, r9, asr #2
   4:	00c30003 	sbceq	r0, r3, r3
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
  98:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  9c:	74735f32 	ldrbtvc	r5, [r3], #-3890	; 0xfffff0ce
  a0:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0xfffffd9f
  a4:	00632e70 	rsbeq	r2, r3, r0, ror lr
  a8:	5f000001 	svcpl	0x00000001
  ac:	61666564 	cmnvs	r6, r4, ror #10
  b0:	5f746c75 	svcpl	0x00746c75
  b4:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
  b8:	00682e73 	rsbeq	r2, r8, r3, ror lr
  bc:	5f000002 	svcpl	0x00000002
  c0:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
  c4:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
  c8:	00000300 	andeq	r0, r0, r0, lsl #6
  cc:	001d0500 	andseq	r0, sp, r0, lsl #10
  d0:	00000205 	andeq	r0, r0, r5, lsl #4
			d2: R_ARM_ABS32	.text
  d4:	30030000 	andcc	r0, r3, r0
  d8:	3f180501 	svccc	0x00180501
  dc:	05202c05 	streq	r2, [r0, #-3077]!	; 0xfffff3fb
  e0:	2f33200b 	svccs	0x0033200b
  e4:	05311005 	ldreq	r1, [r1, #-5]!
  e8:	12052e02 	andne	r2, r5, #2, 28
  ec:	03040200 	movweq	r0, #16896	; 0x4200
  f0:	00080521 	andeq	r0, r8, r1, lsr #10
  f4:	3c030402 	cfstrscc	mvf0, [r3], {2}
  f8:	02000d05 	andeq	r0, r0, #320	; 0x140
  fc:	053c0304 	ldreq	r0, [ip, #-772]!	; 0xfffffcfc
 100:	0402000b 	streq	r0, [r2], #-11
 104:	31052003 	tstcc	r5, r3
 108:	03040200 	movweq	r0, #16896	; 0x4200
 10c:	0002051f 	andeq	r0, r2, pc, lsl r5
 110:	3c010402 	cfstrscc	mvf0, [r1], {2}
 114:	054f0f05 	strbeq	r0, [pc, #-3845]	; fffff217 <Reset_Handler+0xfffff217>
 118:	0d052022 	stceq	0, cr2, [r5, #-136]	; 0xffffff78
 11c:	31070520 	tstcc	r7, r0, lsr #10
 120:	05311005 	ldreq	r1, [r1, #-5]!
 124:	08052e02 	stmdaeq	r5, {r1, r9, sl, fp, sp}
 128:	03040200 	movweq	r0, #16896	; 0x4200
 12c:	000b0521 	andeq	r0, fp, r1, lsr #10
 130:	3c030402 	cfstrscc	mvf0, [r3], {2}
 134:	02003105 	andeq	r3, r0, #1073741825	; 0x40000001
 138:	052d0304 	streq	r0, [sp, #-772]!	; 0xfffffcfc
 13c:	04020002 	streq	r0, [r2], #-2
 140:	09033c01 	stmdbeq	r3, {r0, sl, fp, ip, sp}
 144:	3001054a 	andcc	r0, r1, sl, asr #10
 148:	01000e02 	tsteq	r0, r2, lsl #28
 14c:	Address 0x0000014c is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6164735f 	cmnvs	r4, pc, asr r3
   4:	5f006174 	svcpl	0x00006174
   8:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
   c:	745f3874 	ldrbvc	r3, [pc], #-2164	; 14 <.debug_str+0x14>
  10:	62655f00 	rsbvs	r5, r5, #0, 30
  14:	73007373 	movwvc	r7, #883	; 0x373
  18:	5f657a69 	svcpl	0x00657a69
  1c:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0xfffff69e
  20:	3a450073 	bcc	11401f4 <Reset_Handler+0x11401f4>
  24:	73736f5c 	cmnvc	r3, #92, 30	; 0x170
  28:	6d74735c 	ldclvs	3, cr7, [r4, #-368]!	; 0xfffffe90
  2c:	622d3233 	eorvs	r3, sp, #805306371	; 0x30000003
  30:	6f747475 	svcvs	0x00747475
  34:	6c622d6e 	stclvs	13, cr2, [r2], #-440	; 0xfffffe48
  38:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  3c:	2d6f6e2d 	stclcs	14, cr6, [pc, #-180]!	; ffffff90 <Reset_Handler+0xffffff90>
  40:	5c6d6172 	stfple	f6, [sp], #-456	; 0xfffffe38
  44:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
  48:	6c625f72 	stclvs	15, cr5, [r2], #-456	; 0xfffffe38
  4c:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  50:	0037315f 	eorseq	r3, r7, pc, asr r1
  54:	2f637273 	svccs	0x00637273
  58:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  5c:	74735f32 	ldrbtvc	r5, [r3], #-3890	; 0xfffff0ce
  60:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0xfffffd9f
  64:	00632e70 	rsbeq	r2, r3, r0, ror lr
  68:	65736552 	ldrbvs	r6, [r3, #-1362]!	; 0xfffffaae
  6c:	61485f74 	hvcvs	34292	; 0x85f4
  70:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
  74:	6e750072 	mrcvs	0, 3, r0, cr5, cr2, {3}
  78:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  7c:	63206465 			; <UNDEFINED> instruction: 0x63206465
  80:	00726168 	rsbseq	r6, r2, r8, ror #2
  84:	6164655f 	cmnvs	r4, pc, asr r5
  88:	6c006174 	stfvss	f6, [r0], {116}	; 0x74
  8c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  90:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  94:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  98:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	74636576 	strbtvc	r6, [r3], #-1398	; 0xfffffa8a
  b4:	0073726f 	rsbseq	r7, r3, pc, ror #4
  b8:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
  bc:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  c0:	7500745f 	strvc	r7, [r0, #-1119]	; 0xfffffba1
  c4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  c8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  cc:	00746e69 	rsbseq	r6, r4, r9, ror #28
  d0:	7362735f 	cmnvc	r2, #2080374785	; 0x7c000001
  d4:	6f6c0073 	svcvs	0x006c0073
  d8:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  dc:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  e0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  e4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  e8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  ec:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
  f0:	745f3874 	ldrbvc	r3, [pc], #-2164	; f8 <.debug_str+0xf8>
  f4:	52537000 	subspl	r7, r3, #0
  f8:	6f6c0043 	svcvs	0x006c0043
  fc:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
 100:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 104:	00746e69 	rsbseq	r6, r4, r9, ror #28
 108:	74734470 	ldrbtvc	r4, [r3], #-1136	; 0xfffffb90
 10c:	616c5f00 	cmnvs	ip, r0, lsl #30
 110:	7461645f 	strbtvc	r6, [r1], #-1119	; 0xfffffba1
 114:	4e470061 	cdpmi	0, 4, cr0, cr7, cr1, {3}
 118:	31432055 	qdaddcc	r2, r5, r3
 11c:	30312037 	eorscc	r2, r1, r7, lsr r0
 120:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
 124:	32303220 	eorscc	r3, r0, #32, 4
 128:	32383031 	eorscc	r3, r8, #49	; 0x31
 12c:	72282034 	eorvc	r2, r8, #52	; 0x34
 130:	61656c65 	cmnvs	r5, r5, ror #24
 134:	20296573 	eorcs	r6, r9, r3, ror r5
 138:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
 13c:	6f633d75 	svcvs	0x00633d75
 140:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
 144:	20346d2d 	eorscs	r6, r4, sp, lsr #26
 148:	68746d2d 	ldmdavs	r4!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
 14c:	20626d75 	rsbcs	r6, r2, r5, ror sp
 150:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
 154:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
 158:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
 15c:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
 160:	616d2d20 	cmnvs	sp, r0, lsr #26
 164:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
 168:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
 16c:	6d2d6537 	cfstr32vs	mvfx6, [sp, #-220]!	; 0xffffff24
 170:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 174:	00304f2d 	eorseq	r4, r0, sp, lsr #30
 178:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 17c:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
 180:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
 184:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
 188:	6c00745f 	cfstrsvs	mvf7, [r0], {95}	; 0x5f
 18c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 190:	00746e69 	rsbseq	r6, r4, r9, ror #28
 194:	72746e43 	rsbsvc	r6, r4, #1072	; 0x430
 198:	67697300 	strbvs	r7, [r9, -r0, lsl #6]!
 19c:	2064656e 	rsbcs	r6, r4, lr, ror #10
 1a0:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
   c:	45206d72 	strmi	r6, [r0, #-3442]!	; 0xfffff28e
  10:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  14:	20646564 	rsbcs	r6, r4, r4, ror #10
  18:	6c6f6f54 	stclvs	15, cr6, [pc], #-336	; fffffed0 <Reset_Handler+0xfffffed0>
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
  10:	00000020 	andeq	r0, r0, r0, lsr #32
	...
			14: R_ARM_ABS32	.debug_frame
			18: R_ARM_ABS32	.text
  1c:	00000084 	andeq	r0, r0, r4, lsl #1
  20:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  24:	41018e02 	tstmi	r1, r2, lsl #28
  28:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  2c:	080e7307 	stmdaeq	lr, {r0, r1, r2, r8, r9, ip, sp, lr}
  30:	000d0d41 	andeq	r0, sp, r1, asr #26

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

