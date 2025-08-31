
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
   0:	4c17      	ldr	r4, [pc, #92]	; (60 <Reset_Handler+0x60>)
   2:	6823      	ldr	r3, [r4, #0]
   4:	f043 0308 	orr.w	r3, r3, #8
   8:	6023      	str	r3, [r4, #0]
   a:	f104 0310 	add.w	r3, r4, #16
   e:	681a      	ldr	r2, [r3, #0]
  10:	f104 0310 	add.w	r3, r4, #16
  14:	f042 0204 	orr.w	r2, r2, #4
  18:	601a      	str	r2, [r3, #0]
  1a:	4c12      	ldr	r4, [pc, #72]	; (64 <Reset_Handler+0x64>)
  1c:	f04f 5300 	mov.w	r3, #536870912	; 0x20000000
  20:	6023      	str	r3, [r4, #0]
  22:	f104 0324 	add.w	r3, r4, #36	; 0x24
  26:	f04f 7200 	mov.w	r2, #33554432	; 0x2000000
  2a:	601a      	str	r2, [r3, #0]
  2c:	4c0e      	ldr	r4, [pc, #56]	; (68 <Reset_Handler+0x68>)
  2e:	f44f 657a 	mov.w	r5, #4000	; 0xfa0
  32:	f104 031c 	add.w	r3, r4, #28
  36:	2260      	movs	r2, #96	; 0x60
  38:	601a      	str	r2, [r3, #0]
  3a:	f104 0328 	add.w	r3, r4, #40	; 0x28
  3e:	601d      	str	r5, [r3, #0]
  40:	f104 032c 	add.w	r3, r4, #44	; 0x2c
  44:	601d      	str	r5, [r3, #0]
  46:	086b      	lsrs	r3, r5, #1
  48:	461d      	mov	r5, r3
  4a:	f104 033c 	add.w	r3, r4, #60	; 0x3c
  4e:	601d      	str	r5, [r3, #0]
  50:	f104 0320 	add.w	r3, r4, #32
  54:	f44f 7280 	mov.w	r2, #256	; 0x100
  58:	601a      	str	r2, [r3, #0]
  5a:	2301      	movs	r3, #1
  5c:	6023      	str	r3, [r4, #0]
  5e:	e7fe      	b.n	5e <Reset_Handler+0x5e>
  60:	40023830 	andmi	r3, r2, r0, lsr r8
  64:	40020c00 	andmi	r0, r2, r0, lsl #24
  68:	40000800 	andmi	r0, r0, r0, lsl #16

Disassembly of section .isr_vector:

00000000 <vectors>:
   0:	00000000 	andeq	r0, r0, r0
			0: R_ARM_ABS32	Reset_Handler

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000001ad 	andeq	r0, r0, sp, lsr #3
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000001cb 	andeq	r0, r0, fp, asr #3
			c: R_ARM_ABS32	.debug_str
  10:	0001c00c 	andeq	ip, r1, ip
			11: R_ARM_ABS32	.debug_str
  14:	00001b00 	andeq	r1, r0, r0, lsl #22
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00006c00 	andeq	r6, r0, r0, lsl #24
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000027b 	andeq	r0, r0, fp, ror r2
			28: R_ARM_ABS32	.debug_str
  2c:	83080102 	movwhi	r0, #33026	; 0x8102
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	022d0502 	eoreq	r0, sp, #8388608	; 0x800000
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	0000a307 	andeq	sl, r0, r7, lsl #6
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000268 	andeq	r0, r0, r8, ror #4
			44: R_ARM_ABS32	.debug_str
  48:	00011203 	andeq	r1, r1, r3, lsl #4
			49: R_ARM_ABS32	.debug_str
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	91070402 	tstls	r7, r2, lsl #8
			57: R_ARM_ABS32	.debug_str
  58:	02000000 	andeq	r0, r0, #0
  5c:	01b20508 			; <UNDEFINED> instruction: 0x01b20508
			5e: R_ARM_ABS32	.debug_str
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00015207 	andeq	r5, r1, r7, lsl #4
			65: R_ARM_ABS32	.debug_str
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	45070402 	strmi	r0, [r7, #-1026]	; 0xfffffbfe
			73: R_ARM_ABS32	.debug_str
  74:	03000001 	movweq	r0, #1
  78:	0000025f 	andeq	r0, r0, pc, asr r2
			78: R_ARM_ABS32	.debug_str
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	002c0107 	eoreq	r0, ip, r7, lsl #2
  88:	12010000 	andne	r0, r1, #0
  8c:	00010a01 	andeq	r0, r1, r1, lsl #20
  90:	02420600 	subeq	r0, r2, #0, 12
			92: R_ARM_ABS32	.debug_str
  94:	06000000 	streq	r0, [r0], -r0
  98:	0000024b 	andeq	r0, r0, fp, asr #4
			98: R_ARM_ABS32	.debug_str
  9c:	019c0601 	orrseq	r0, ip, r1, lsl #12
			9e: R_ARM_ABS32	.debug_str
  a0:	06020000 	streq	r0, [r2], -r0
  a4:	00000071 	andeq	r0, r0, r1, ror r0
			a4: R_ARM_ABS32	.debug_str
  a8:	00090603 	andeq	r0, r9, r3, lsl #12
			aa: R_ARM_ABS32	.debug_str
  ac:	06040000 	streq	r0, [r4], -r0
  b0:	00000295 	muleq	r0, r5, r2
			b0: R_ARM_ABS32	.debug_str
  b4:	004d0605 	subeq	r0, sp, r5, lsl #12
			b6: R_ARM_ABS32	.debug_str
  b8:	06060000 	streq	r0, [r6], -r0
  bc:	00000058 	andeq	r0, r0, r8, asr r0
			bc: R_ARM_ABS32	.debug_str
  c0:	02710607 	rsbseq	r0, r1, #7340032	; 0x700000
			c2: R_ARM_ABS32	.debug_str
  c4:	06080000 	streq	r0, [r8], -r0
  c8:	00000000 	andeq	r0, r0, r0
			c8: R_ARM_ABS32	.debug_str
  cc:	01090609 	tsteq	r9, r9, lsl #12
			ce: R_ARM_ABS32	.debug_str
  d0:	060a0000 	streq	r0, [sl], -r0
  d4:	000000cf 	andeq	r0, r0, pc, asr #1
			d4: R_ARM_ABS32	.debug_str
  d8:	00f1060b 	rscseq	r0, r1, fp, lsl #12
			da: R_ARM_ABS32	.debug_str
  dc:	060c0000 	streq	r0, [ip], -r0
  e0:	0000017e 	andeq	r0, r0, lr, ror r1
			e0: R_ARM_ABS32	.debug_str
  e4:	0192060d 	orrseq	r0, r2, sp, lsl #12
			e6: R_ARM_ABS32	.debug_str
  e8:	060e0000 	streq	r0, [lr], -r0
  ec:	0000011d 	andeq	r0, r0, sp, lsl r1
			ec: R_ARM_ABS32	.debug_str
  f0:	0127060f 			; <UNDEFINED> instruction: 0x0127060f
			f2: R_ARM_ABS32	.debug_str
  f4:	06100000 	ldreq	r0, [r0], -r0
  f8:	000000fd 	strdeq	r0, [r0], -sp
			f8: R_ARM_ABS32	.debug_str
  fc:	013c0611 	teqeq	ip, r1, lsl r6
			fe: R_ARM_ABS32	.debug_str
 100:	06120000 	ldreq	r0, [r2], -r0
 104:	000000e7 	andeq	r0, r0, r7, ror #1
			104: R_ARM_ABS32	.debug_str
 108:	07050013 	smladeq	r5, r3, r0, r0
 10c:	00002c01 	andeq	r2, r0, r1, lsl #24
 110:	012b0100 			; <UNDEFINED> instruction: 0x012b0100
 114:	00000155 	andeq	r0, r0, r5, asr r1
 118:	0000b606 	andeq	fp, r0, r6, lsl #12
			119: R_ARM_ABS32	.debug_str
 11c:	c2060000 	andgt	r0, r6, #0
			11f: R_ARM_ABS32	.debug_str
 120:	01000000 	mrseq	r0, (UNDEF: 0)
 124:	00028706 	andeq	r8, r2, r6, lsl #14
			125: R_ARM_ABS32	.debug_str
 128:	a6060200 	strge	r0, [r6], -r0, lsl #4
			12b: R_ARM_ABS32	.debug_str
 12c:	03000001 	movweq	r0, #1
 130:	00018806 	andeq	r8, r1, r6, lsl #16
			131: R_ARM_ABS32	.debug_str
 134:	11060400 	tstne	r6, r0, lsl #8
			137: R_ARM_ABS32	.debug_str
 138:	05000000 	streq	r0, [r0, #-0]
 13c:	00016906 	andeq	r6, r1, r6, lsl #18
			13d: R_ARM_ABS32	.debug_str
 140:	31060600 	tstcc	r6, r0, lsl #12
			143: R_ARM_ABS32	.debug_str
 144:	07000001 	streq	r0, [r0, -r1]
 148:	00025406 	andeq	r5, r2, r6, lsl #8
			149: R_ARM_ABS32	.debug_str
 14c:	37060800 	strcc	r0, [r6, -r0, lsl #16]
			14f: R_ARM_ABS32	.debug_str
 150:	09000002 	stmdbeq	r0, {r1}
 154:	00770700 	rsbseq	r0, r7, r0, lsl #14
 158:	01650000 	cmneq	r5, r0
 15c:	70080000 	andvc	r0, r8, r0
 160:	00000000 	andeq	r0, r0, r0
 164:	007b0900 	rsbseq	r0, fp, r0, lsl #18
			166: R_ARM_ABS32	.debug_str
 168:	40010000 	andmi	r0, r1, r0
 16c:	0001550a 	andeq	r5, r1, sl, lsl #10
 170:	00030500 	andeq	r0, r3, r0, lsl #10
			173: R_ARM_ABS32	vectors
 174:	0a000000 	beq	17c <.debug_info+0x17c>
 178:	00000063 	andeq	r0, r0, r3, rrx
			178: R_ARM_ABS32	.debug_str
 17c:	001d4701 	andseq	r4, sp, r1, lsl #14
			17f: R_ARM_ABS32	.text
 180:	6c000000 	stcvs	0, cr0, [r0], {-0}
 184:	01000000 	mrseq	r0, (UNDEF: 0)
 188:	0001aa9c 	muleq	r1, ip, sl
 18c:	00d80b00 	sbcseq	r0, r8, r0, lsl #22
			18e: R_ARM_ABS32	.debug_str
 190:	4a010000 	bmi	40198 <Reset_Handler+0x40198>
 194:	0001aa18 	andeq	sl, r1, r8, lsl sl
 198:	0b540100 	bleq	15005a0 <Reset_Handler+0x15005a0>
 19c:	00000174 	andeq	r0, r0, r4, ror r1
			19c: R_ARM_ABS32	.debug_str
 1a0:	77174b01 	ldrvc	r4, [r7, -r1, lsl #22]
 1a4:	01000000 	mrseq	r0, (UNDEF: 0)
 1a8:	040c0055 	streq	r0, [ip], #-85	; 0xffffffab
 1ac:	00000077 	andeq	r0, r0, r7, ror r0
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
  38:	3e010405 	cdpcc	4, 0, cr0, cr1, cr5, {0}
  3c:	490b0b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp}
  40:	3b0b3a13 	blcc	2ce894 <Reset_Handler+0x2ce894>
  44:	010b390b 	tsteq	fp, fp, lsl #18
  48:	06000013 			; <UNDEFINED> instruction: 0x06000013
  4c:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
  50:	00000b1c 	andeq	r0, r0, ip, lsl fp
  54:	49010107 	stmdbmi	r1, {r0, r1, r2, r8}
  58:	00130113 	andseq	r0, r3, r3, lsl r1
  5c:	00210800 	eoreq	r0, r1, r0, lsl #16
  60:	0b2f1349 	bleq	bc4d8c <Reset_Handler+0xbc4d8c>
  64:	34090000 	strcc	r0, [r9], #-0
  68:	3a0e0300 	bcc	380c70 <Reset_Handler+0x380c70>
  6c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  70:	3f13490b 	svccc	0x0013490b
  74:	00180219 	andseq	r0, r8, r9, lsl r2
  78:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
  7c:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  80:	0b3b0b3a 	bleq	ec2d70 <Reset_Handler+0xec2d70>
  84:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  88:	06120111 			; <UNDEFINED> instruction: 0x06120111
  8c:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  90:	00130119 	andseq	r0, r3, r9, lsl r1
  94:	00340b00 	eorseq	r0, r4, r0, lsl #22
  98:	0b3a0e03 	bleq	e838ac <Reset_Handler+0xe838ac>
  9c:	0b390b3b 	bleq	e42d90 <Reset_Handler+0xe42d90>
  a0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  a4:	0f0c0000 	svceq	0x000c0000
  a8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  ac:	00000013 	andeq	r0, r0, r3, lsl r0

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
			6: R_ARM_ABS32	.debug_info
   8:	00040000 	andeq	r0, r4, r0
	...
			10: R_ARM_ABS32	.text
  14:	0000006c 	andeq	r0, r0, ip, rrx
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000114 	andeq	r0, r0, r4, lsl r1
   4:	00ba0003 	adcseq	r0, sl, r3
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
  98:	6e69616d 	powvsez	f6, f1, #5.0
  9c:	0100632e 	tsteq	r0, lr, lsr #6
  a0:	645f0000 	ldrbvs	r0, [pc], #-0	; a8 <.debug_line+0xa8>
  a4:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
  a8:	745f746c 	ldrbvc	r7, [pc], #-1132	; b0 <.debug_line+0xb0>
  ac:	73657079 	cmnvc	r5, #121	; 0x79
  b0:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
  b4:	735f0000 	cmpvc	pc, #0
  b8:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
  bc:	00682e74 	rsbeq	r2, r8, r4, ror lr
  c0:	00000003 	andeq	r0, r0, r3
  c4:	05000105 	streq	r0, [r0, #-261]	; 0xfffffefb
  c8:	00000002 	andeq	r0, r0, r2
			c9: R_ARM_ABS32	.text
  cc:	00c70300 	sbceq	r0, r7, r0, lsl #6
  d0:	18140501 	ldmdane	r4, {r0, r8, sl}
  d4:	4b211705 	blmi	845cf0 <Reset_Handler+0x845cf0>
  d8:	05851405 	streq	r1, [r5, #1029]	; 0x405
  dc:	13052121 	movwne	r2, #20769	; 0x5121
  e0:	2e20053d 	mcrcs	5, 1, r0, cr0, cr13, {1}
  e4:	053f1405 	ldreq	r1, [pc, #-1029]!	; fffffce7 <Reset_Handler+0xfffffce7>
  e8:	1305210f 	movwne	r2, #20751	; 0x510f
  ec:	2e20052f 	cfsh64cs	mvdx0, mvdx0, #31
  f0:	052f1305 	streq	r1, [pc, #-773]!	; fffffdf3 <Reset_Handler+0xfffffdf3>
  f4:	13052e20 	movwne	r2, #24096	; 0x5e20
  f8:	2e200521 	cfsh64cs	mvdx0, mvdx0, #17
  fc:	05210f05 	streq	r0, [r1, #-3845]!	; 0xfffff0fb
 100:	20052f13 	andcs	r2, r5, r3, lsl pc
 104:	2113052e 	tstcs	r3, lr, lsr #10
 108:	3d2e2005 	stccc	0, cr2, [lr, #-20]!	; 0xffffffec
 10c:	02000b05 	andeq	r0, r0, #5120	; 0x1400
 110:	02310104 	eorseq	r0, r1, #4, 2
 114:	01010007 	tsteq	r1, r7

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
   4:	544e435f 	strbpl	r4, [lr], #-863	; 0xfffffca1
   8:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
   c:	52535f78 	subspl	r5, r3, #120, 30	; 0x1e0
  10:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
  14:	4f5f784f 	svcmi	0x005f784f
  18:	45005244 	strmi	r5, [r0, #-580]	; 0xfffffdbc
  1c:	736f5c3a 	cmnvc	pc, #14848	; 0x3a00
  20:	74735c73 	ldrbtvc	r5, [r3], #-3187	; 0xfffff38d
  24:	2d32336d 	ldccs	3, cr3, [r2, #-436]!	; 0xfffffe4c
  28:	74747562 	ldrbtvc	r7, [r4], #-1378	; 0xfffffa9e
  2c:	622d6e6f 	eorvs	r6, sp, #1776	; 0x6f0
  30:	6b6e696c 	blvs	1b9a5e8 <Reset_Handler+0x1b9a5e8>
  34:	6f6e2d79 	svcvs	0x006e2d79
  38:	6d61722d 	sfmvs	f7, 2, [r1, #-180]!	; 0xffffff4c
  3c:	6d69745c 	cfstrdvs	mvd7, [r9, #-368]!	; 0xfffffe90
  40:	625f7265 	subsvs	r7, pc, #1342177286	; 0x50000006
  44:	6b6e696c 	blvs	1b9a5fc <Reset_Handler+0x1b9a5fc>
  48:	38315f79 	ldmdacc	r1!, {r0, r3, r4, r5, r6, r8, r9, sl, fp, ip, lr}
  4c:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  50:	43435f78 	movtmi	r5, #16248	; 0x3f78
  54:	0031524d 	eorseq	r5, r1, sp, asr #4
  58:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
  5c:	4d43435f 	stclmi	3, cr4, [r3, #-380]	; 0xfffffe84
  60:	52003252 	andpl	r3, r0, #536870917	; 0x20000005
  64:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
  68:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
  6c:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
  70:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  74:	49445f78 	stmdbmi	r4, {r3, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
  78:	76005245 	strvc	r5, [r0], -r5, asr #4
  7c:	6f746365 	svcvs	0x00746365
  80:	75007372 	strvc	r7, [r0, #-882]	; 0xfffffc8e
  84:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  88:	2064656e 	rsbcs	r6, r4, lr, ror #10
  8c:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
  90:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  94:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  98:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  9c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  a0:	7300746e 	movwvc	r7, #1134	; 0x46e
  a4:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
  a8:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  ac:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  b0:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  b4:	50470074 	subpl	r0, r7, r4, ror r0
  b8:	5f784f49 	svcpl	0x00784f49
  bc:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
  c0:	50470052 	subpl	r0, r7, r2, asr r0
  c4:	5f784f49 	svcpl	0x00784f49
  c8:	5059544f 	subspl	r5, r9, pc, asr #8
  cc:	54005245 	strpl	r5, [r0], #-581	; 0xfffffdbb
  d0:	5f784d49 	svcpl	0x00784d49
  d4:	00525241 	subseq	r5, r2, r1, asr #4
  d8:	54676552 	strbtpl	r6, [r7], #-1362	; 0xfffffaae
  dc:	6165526f 	cmnvs	r5, pc, ror #4
  e0:	69725764 	ldmdbvs	r2!, {r2, r5, r6, r8, r9, sl, ip, lr}^
  e4:	54006574 	strpl	r6, [r0], #-1396	; 0xfffffa8c
  e8:	5f784d49 	svcpl	0x00784d49
  ec:	52414d44 	subpl	r4, r1, #68, 26	; 0x1100
  f0:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  f4:	53525f78 	cmppl	r2, #120, 30	; 0x1e0
  f8:	31445652 	cmpcc	r4, r2, asr r6
  fc:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 100:	53525f78 	cmppl	r2, #120, 30	; 0x1e0
 104:	32445652 	subcc	r5, r4, #85983232	; 0x5200000
 108:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 10c:	53505f78 	cmppl	r0, #120, 30	; 0x1e0
 110:	5f5f0043 	svcpl	0x005f0043
 114:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
 118:	745f3233 	ldrbvc	r3, [pc], #-563	; 120 <.debug_str+0x120>
 11c:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 120:	43435f78 	movtmi	r5, #16248	; 0x3f78
 124:	54003352 	strpl	r3, [r0], #-850	; 0xfffffcae
 128:	5f784d49 	svcpl	0x00784d49
 12c:	34524343 	ldrbcc	r4, [r2], #-835	; 0xfffffcbd
 130:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 134:	4c5f784f 	mrrcmi	8, 4, r7, pc, cr15	; <UNPREDICTABLE>
 138:	00524b43 	subseq	r4, r2, r3, asr #22
 13c:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 140:	5243445f 	subpl	r4, r3, #1593835520	; 0x5f000000
 144:	736e7500 	cmnvc	lr, #0, 10
 148:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 14c:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 150:	6f6c0074 	svcvs	0x006c0074
 154:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
 158:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 15c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 160:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 164:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 168:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 16c:	425f784f 	subsmi	r7, pc, #5177344	; 0x4f0000
 170:	00525253 	subseq	r5, r2, r3, asr r2
 174:	54676552 	strbtpl	r6, [r7], #-1362	; 0xfffffaae
 178:	6165526f 	cmnvs	r5, pc, ror #4
 17c:	49540064 	ldmdbmi	r4, {r2, r5, r6}^
 180:	435f784d 	cmpmi	pc, #5046272	; 0x4d0000
 184:	00315243 	eorseq	r5, r1, r3, asr #4
 188:	4f495047 	svcmi	0x00495047
 18c:	44495f78 	strbmi	r5, [r9], #-3960	; 0xfffff088
 190:	49540052 	ldmdbmi	r4, {r1, r4, r6}^
 194:	435f784d 	cmpmi	pc, #5046272	; 0x4d0000
 198:	00325243 	eorseq	r5, r2, r3, asr #4
 19c:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 1a0:	434d535f 	movtmi	r5, #54111	; 0xd35f
 1a4:	50470052 	subpl	r0, r7, r2, asr r0
 1a8:	5f784f49 	svcpl	0x00784f49
 1ac:	44505550 	ldrbmi	r5, [r0], #-1360	; 0xfffffab0
 1b0:	6f6c0052 	svcvs	0x006c0052
 1b4:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
 1b8:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 1bc:	00746e69 	rsbseq	r6, r4, r9, ror #28
 1c0:	2f637273 	svccs	0x00637273
 1c4:	6e69616d 	powvsez	f6, f1, #5.0
 1c8:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
 1cc:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
 1d0:	31203731 			; <UNDEFINED> instruction: 0x31203731
 1d4:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
 1d8:	30322031 	eorscc	r2, r2, r1, lsr r0
 1dc:	38303132 	ldmdacc	r0!, {r1, r4, r5, r8, ip, sp}
 1e0:	28203432 	stmdacs	r0!, {r1, r4, r5, sl, ip, sp}
 1e4:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
 1e8:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 1ec:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
 1f0:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 1f4:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 1f8:	346d2d78 	strbtcc	r2, [sp], #-3448	; 0xfffff288
 1fc:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 200:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 204:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
 208:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 20c:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
 210:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
 214:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
 218:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
 21c:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 220:	2d653776 	stclcs	7, cr3, [r5, #-472]!	; 0xfffffe28
 224:	672d206d 	strvs	r2, [sp, -sp, rrx]!
 228:	304f2d20 	subcc	r2, pc, r0, lsr #26
 22c:	6f687300 	svcvs	0x00687300
 230:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
 234:	4700746e 	strmi	r7, [r0, -lr, ror #8]
 238:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 23c:	5246415f 	subpl	r4, r6, #-1073741801	; 0xc0000017
 240:	49540048 	ldmdbmi	r4, {r3, r6}^
 244:	435f784d 	cmpmi	pc, #5046272	; 0x4d0000
 248:	54003152 	strpl	r3, [r0], #-338	; 0xfffffeae
 24c:	5f784d49 	svcpl	0x00784d49
 250:	00325243 	eorseq	r5, r2, r3, asr #4
 254:	4f495047 	svcmi	0x00495047
 258:	46415f78 			; <UNDEFINED> instruction: 0x46415f78
 25c:	75004c52 	strvc	r4, [r0, #-3154]	; 0xfffff3ae
 260:	33746e69 	cmncc	r4, #1680	; 0x690
 264:	00745f32 	rsbseq	r5, r4, r2, lsr pc
 268:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 26c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 270:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 274:	43435f78 	movtmi	r5, #16248	; 0x3f78
 278:	73005245 	movwvc	r5, #581	; 0x245
 27c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 280:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
 284:	47007261 	strmi	r7, [r0, -r1, ror #4]
 288:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 28c:	50534f5f 	subspl	r4, r3, pc, asr pc
 290:	52444545 	subpl	r4, r4, #289406976	; 0x11400000
 294:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 298:	47455f78 	smlsldxmi	r5, r5, r8, pc	; <UNPREDICTABLE>
 29c:	Address 0x0000029c is out of bounds.


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
  10:	0000000c 	andeq	r0, r0, ip
	...
			14: R_ARM_ABS32	.debug_frame
			18: R_ARM_ABS32	.text
  1c:	0000006c 	andeq	r0, r0, ip, rrx

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

