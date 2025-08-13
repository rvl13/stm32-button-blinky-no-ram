
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <setup>:
   0:	b580      	push	{r7, lr}
   2:	af00      	add	r7, sp, #0
   4:	2101      	movs	r1, #1
   6:	200e      	movs	r0, #14
   8:	f7ff fffe 	bl	0 <pinMode>
			8: R_ARM_THM_CALL	pinMode
   c:	bf00      	nop
   e:	bd80      	pop	{r7, pc}

00000010 <loop>:
  10:	b580      	push	{r7, lr}
  12:	af00      	add	r7, sp, #0
  14:	2101      	movs	r1, #1
  16:	200e      	movs	r0, #14
  18:	f7ff fffe 	bl	0 <digitalWrite>
			18: R_ARM_THM_CALL	digitalWrite
  1c:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
  20:	f7ff fffe 	bl	0 <delay>
			20: R_ARM_THM_CALL	delay
  24:	2100      	movs	r1, #0
  26:	200e      	movs	r0, #14
  28:	f7ff fffe 	bl	0 <digitalWrite>
			28: R_ARM_THM_CALL	digitalWrite
  2c:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
  30:	f7ff fffe 	bl	0 <delay>
			30: R_ARM_THM_CALL	delay
  34:	bf00      	nop
  36:	bd80      	pop	{r7, pc}

00000038 <main>:
  38:	b580      	push	{r7, lr}
  3a:	af00      	add	r7, sp, #0
  3c:	f7ff fffe 	bl	0 <initGpio>
			3c: R_ARM_THM_CALL	initGpio
  40:	f7ff fffe 	bl	0 <setup>
			40: R_ARM_THM_CALL	setup
  44:	f7ff fffe 	bl	10 <loop>
			44: R_ARM_THM_CALL	loop
  48:	e7fc      	b.n	44 <main+0xc>

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000d8 	ldrdeq	r0, [r0], -r8
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000c5 	andeq	r0, r0, r5, asr #1
			c: R_ARM_ABS32	.debug_str
  10:	0000ba0c 	andeq	fp, r0, ip, lsl #20
			11: R_ARM_ABS32	.debug_str
  14:	00000b00 	andeq	r0, r0, r0, lsl #22
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00004a00 	andeq	r4, r0, r0, lsl #20
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000141 	andeq	r0, r0, r1, asr #2
			28: R_ARM_ABS32	.debug_str
  2c:	4a080102 	bmi	20043c <main+0x200404>
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	00006a07 	andeq	r6, r0, r7, lsl #20
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000131 	andeq	r0, r0, r1, lsr r1
			44: R_ARM_ABS32	.debug_str
  48:	58070402 	stmdapl	r7, {r1, sl}
			4b: R_ARM_ABS32	.debug_str
  4c:	02000000 	andeq	r0, r0, #0
  50:	00ac0508 	adceq	r0, ip, r8, lsl #10
			52: R_ARM_ABS32	.debug_str
  54:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  58:	00009507 	andeq	r9, r0, r7, lsl #10
			59: R_ARM_ABS32	.debug_str
  5c:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
  60:	00746e69 	rsbseq	r6, r4, r9, ror #28
  64:	88070402 	stmdahi	r7, {r1, sl}
			67: R_ARM_ABS32	.debug_str
  68:	04000000 	streq	r0, [r0], #-0
  6c:	002c0107 	eoreq	r0, ip, r7, lsl #2
  70:	0d020000 	stceq	0, cr0, [r2, #-0]
  74:	00008601 	andeq	r8, r0, r1, lsl #12
  78:	4f4c0500 	svcmi	0x004c0500
  7c:	06000057 			; <UNDEFINED> instruction: 0x06000057
  80:	00000000 	andeq	r0, r0, r0
			80: R_ARM_ABS32	.debug_str
  84:	07040001 	streq	r0, [r4, -r1]
  88:	00002c01 	andeq	r2, r0, r1, lsl #24
  8c:	01140200 	tsteq	r4, r0, lsl #4
  90:	000000a1 	andeq	r0, r0, r1, lsr #1
  94:	00007d06 	andeq	r7, r0, r6, lsl #26
			95: R_ARM_ABS32	.debug_str
  98:	3a060000 	bcc	1800a0 <main+0x180068>
			9b: R_ARM_ABS32	.debug_str
  9c:	01000001 	tsteq	r0, r1
  a0:	00830700 	addeq	r0, r3, r0, lsl #14
			a2: R_ARM_ABS32	.debug_str
  a4:	16010000 	strne	r0, [r1], -r0
  a8:	00005d05 	andeq	r5, r0, r5, lsl #26
  ac:	00003800 	andeq	r3, r0, r0, lsl #16
			ad: R_ARM_ABS32	.text
  b0:	00001200 	andeq	r1, r0, r0, lsl #4
  b4:	089c0100 	ldmeq	ip, {r8}
  b8:	00000045 	andeq	r0, r0, r5, asr #32
			b8: R_ARM_ABS32	.debug_str
  bc:	10060b01 	andne	r0, r6, r1, lsl #22
			bf: R_ARM_ABS32	.text
  c0:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
  c4:	01000000 	mrseq	r0, (UNDEF: 0)
  c8:	0005089c 	muleq	r5, ip, r8
			ca: R_ARM_ABS32	.debug_str
  cc:	05010000 	streq	r0, [r1, #-0]
  d0:	00000006 	andeq	r0, r0, r6
			d1: R_ARM_ABS32	.text
  d4:	00001000 	andeq	r1, r0, r0
  d8:	009c0100 	addseq	r0, ip, r0, lsl #2

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <main+0x2c0074>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	01040400 	tsteq	r4, r0, lsl #8
  2c:	0b0b0b3e 	bleq	2c2d2c <main+0x2c2cf4>
  30:	0b3a1349 	bleq	e84d5c <main+0xe84d24>
  34:	0b390b3b 	bleq	e42d28 <main+0xe42cf0>
  38:	00001301 	andeq	r1, r0, r1, lsl #6
  3c:	03002805 	movweq	r2, #2053	; 0x805
  40:	000b1c08 	andeq	r1, fp, r8, lsl #24
  44:	00280600 	eoreq	r0, r8, r0, lsl #12
  48:	0b1c0e03 	bleq	70385c <main+0x703824>
  4c:	2e070000 	cdpcs	0, 0, cr0, cr7, cr0, {0}
  50:	03193f00 	tsteq	r9, #0, 30
  54:	3b0b3a0e 	blcc	2ce894 <main+0x2ce85c>
  58:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
  5c:	11134919 	tstne	r3, r9, lsl r9
  60:	40061201 	andmi	r1, r6, r1, lsl #4
  64:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
  68:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
  6c:	03193f00 	tsteq	r9, #0, 30
  70:	3b0b3a0e 	blcc	2ce8b0 <main+0x2ce878>
  74:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
  78:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
  7c:	96184006 	ldrls	r4, [r8], -r6
  80:	00001942 	andeq	r1, r0, r2, asr #18
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
			6: R_ARM_ABS32	.debug_info
   8:	00040000 	andeq	r0, r4, r0
	...
			10: R_ARM_ABS32	.text
  14:	0000004a 	andeq	r0, r0, sl, asr #32
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000067 	andeq	r0, r0, r7, rrx
   4:	00360003 	eorseq	r0, r6, r3
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	73010000 	movwvc	r0, #4096	; 0x1000
  1c:	00006372 	andeq	r6, r0, r2, ror r3
  20:	6e69616d 	powvsez	f6, f1, #5.0
  24:	0100632e 	tsteq	r0, lr, lsr #6
  28:	696d0000 	stmdbvs	sp!, {}^	; <UNPREDICTABLE>
  2c:	616d696e 	cmnvs	sp, lr, ror #18
  30:	72615f6c 	rsbvc	r5, r1, #108, 30	; 0x1b0
  34:	6e697564 	cdpvs	5, 6, cr7, cr9, cr4, {3}
  38:	00682e6f 	rsbeq	r2, r8, pc, ror #28
  3c:	00000001 	andeq	r0, r0, r1
  40:	05000105 	streq	r0, [r0, #-261]	; 0xfffffefb
  44:	00000002 	andeq	r0, r0, r2
			45: R_ARM_ABS32	.text
  48:	05051700 	streq	r1, [r5, #-1792]	; 0xfffff900
  4c:	4b01052f 	blmi	41510 <main+0x414d8>
  50:	2f050532 	svccs	0x00050532
  54:	054b4b4b 	strbeq	r4, [fp, #-2891]	; 0xfffff4b5
  58:	05344b01 	ldreq	r4, [r4, #-2817]!	; 0xfffff4ff
  5c:	05313005 	ldreq	r3, [r1, #-5]!
  60:	04020009 	streq	r0, [r2], #-9
  64:	03023301 	movweq	r3, #8961	; 0x2301
  68:	Address 0x00000068 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	48474948 	stmdami	r7, {r3, r6, r8, fp, lr}^
   4:	74657300 	strbtvc	r7, [r5], #-768	; 0xfffffd00
   8:	45007075 	strmi	r7, [r0, #-117]	; 0xffffff8b
   c:	736f5c3a 	cmnvc	pc, #14848	; 0x3a00
  10:	74735c73 	ldrbtvc	r5, [r3], #-3187	; 0xfffff38d
  14:	2d32336d 	ldccs	3, cr3, [r2, #-436]!	; 0xfffffe4c
  18:	74747562 	ldrbtvc	r7, [r4], #-1378	; 0xfffffa9e
  1c:	622d6e6f 	eorvs	r6, sp, #1776	; 0x6f0
  20:	6b6e696c 	blvs	1b9a5d8 <main+0x1b9a5a0>
  24:	6f6e2d79 	svcvs	0x006e2d79
  28:	6d61722d 	sfmvs	f7, 2, [r1, #-180]!	; 0xffffff4c
  2c:	6472615c 	ldrbtvs	r6, [r2], #-348	; 0xfffffea4
  30:	6f6e6975 	svcvs	0x006e6975
  34:	6c65645f 	cfstrdvs	mvd6, [r5], #-380	; 0xfffffe84
  38:	625f7961 	subsvs	r7, pc, #1589248	; 0x184000
  3c:	6b6e696c 	blvs	1b9a5f4 <main+0x1b9a5bc>
  40:	30305f79 	eorscc	r5, r0, r9, ror pc
  44:	6f6f6c00 	svcvs	0x006f6c00
  48:	6e750070 	mrcvs	0, 3, r0, cr5, cr0, {3}
  4c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  50:	63206465 			; <UNDEFINED> instruction: 0x63206465
  54:	00726168 	rsbseq	r6, r2, r8, ror #2
  58:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  5c:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  60:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  64:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  68:	68730074 	ldmdavs	r3!, {r2, r4, r5, r6}^
  6c:	2074726f 	rsbscs	r7, r4, pc, ror #4
  70:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  74:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  78:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  7c:	504e4900 	subpl	r4, lr, r0, lsl #18
  80:	6d005455 	cfstrsvs	mvf5, [r0, #-340]	; 0xfffffeac
  84:	006e6961 	rsbeq	r6, lr, r1, ror #18
  88:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  8c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  90:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  94:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  98:	6f6c2067 	svcvs	0x006c2067
  9c:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
  a0:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a4:	2064656e 	rsbcs	r6, r4, lr, ror #10
  a8:	00746e69 	rsbseq	r6, r4, r9, ror #28
  ac:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  b0:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  b4:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
  b8:	72730074 	rsbsvc	r0, r3, #116	; 0x74
  bc:	616d2f63 	cmnvs	sp, r3, ror #30
  c0:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
  c4:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
  c8:	37314320 	ldrcc	r4, [r1, -r0, lsr #6]!
  cc:	2e303120 	rsfcssp	f3, f0, f0
  d0:	20312e33 	eorscs	r2, r1, r3, lsr lr
  d4:	31323032 	teqcc	r2, r2, lsr r0
  d8:	34323830 	ldrtcc	r3, [r2], #-2096	; 0xfffff7d0
  dc:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  e0:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  e4:	2d202965 			; <UNDEFINED> instruction: 0x2d202965
  e8:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
  ec:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
  f0:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  f4:	2d20346d 	cfstrscs	mvf3, [r0, #-436]!	; 0xfffffe4c
  f8:	7568746d 	strbvc	r7, [r8, #-1133]!	; 0xfffffb93
  fc:	2d20626d 	sfmcs	f6, 4, [r0, #-436]!	; 0xfffffe4c
 100:	6f6c666d 	svcvs	0x006c666d
 104:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
 108:	733d6962 	teqvc	sp, #1605632	; 0x188000
 10c:	2074666f 	rsbscs	r6, r4, pc, ror #12
 110:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
 114:	613d6863 	teqvs	sp, r3, ror #16
 118:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
 11c:	206d2d65 	rsbcs	r2, sp, r5, ror #26
 120:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 124:	7300304f 	movwvc	r3, #79	; 0x4f
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 134:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
 138:	554f0074 	strbpl	r0, [pc, #-116]	; cc <.debug_str+0xcc>
 13c:	54555054 	ldrbpl	r5, [r5], #-84	; 0xffffffac
 140:	67697300 	strbvs	r7, [r9, -r0, lsl #6]!
 144:	2064656e 	rsbcs	r6, r4, lr, ror #10
 148:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
   c:	45206d72 	strmi	r6, [r0, #-3442]!	; 0xfffff28e
  10:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  14:	20646564 	rsbcs	r6, r4, r4, ror #10
  18:	6c6f6f54 	stclvs	15, cr6, [pc], #-336	; fffffed0 <main+0xfffffe98>
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
  10:	00000018 	andeq	r0, r0, r8, lsl r0
	...
			14: R_ARM_ABS32	.debug_frame
			18: R_ARM_ABS32	.text
  1c:	00000010 	andeq	r0, r0, r0, lsl r0
  20:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  24:	41018e02 	tstmi	r1, r2, lsl #28
  28:	0000070d 	andeq	r0, r0, sp, lsl #14
  2c:	00000018 	andeq	r0, r0, r8, lsl r0
  30:	00000000 	andeq	r0, r0, r0
			30: R_ARM_ABS32	.debug_frame
  34:	00000010 	andeq	r0, r0, r0, lsl r0
			34: R_ARM_ABS32	.text
  38:	00000028 	andeq	r0, r0, r8, lsr #32
  3c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  40:	41018e02 	tstmi	r1, r2, lsl #28
  44:	0000070d 	andeq	r0, r0, sp, lsl #14
  48:	00000018 	andeq	r0, r0, r8, lsl r0
  4c:	00000000 	andeq	r0, r0, r0
			4c: R_ARM_ABS32	.debug_frame
  50:	00000038 	andeq	r0, r0, r8, lsr r0
			50: R_ARM_ABS32	.text
  54:	00000012 	andeq	r0, r0, r2, lsl r0
  58:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  5c:	41018e02 	tstmi	r1, r2, lsl #28
  60:	0000070d 	andeq	r0, r0, sp, lsl #14

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

