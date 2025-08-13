
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <setup>:
   0:	b580      	push	{r7, lr}
   2:	af00      	add	r7, sp, #0
   4:	2100      	movs	r1, #0
   6:	2000      	movs	r0, #0
   8:	f7ff fffe 	bl	0 <pinMode>
			8: R_ARM_THM_CALL	pinMode
   c:	2101      	movs	r1, #1
   e:	200e      	movs	r0, #14
  10:	f7ff fffe 	bl	0 <pinMode>
			10: R_ARM_THM_CALL	pinMode
  14:	bf00      	nop
  16:	bd80      	pop	{r7, pc}

00000018 <loop>:
  18:	b580      	push	{r7, lr}
  1a:	af00      	add	r7, sp, #0
  1c:	2000      	movs	r0, #0
  1e:	f7ff fffe 	bl	0 <digitalRead>
			1e: R_ARM_THM_CALL	digitalRead
  22:	4603      	mov	r3, r0
  24:	2b01      	cmp	r3, #1
  26:	d104      	bne.n	32 <loop+0x1a>
  28:	2101      	movs	r1, #1
  2a:	200e      	movs	r0, #14
  2c:	f7ff fffe 	bl	0 <digitalWrite>
			2c: R_ARM_THM_CALL	digitalWrite
  30:	e003      	b.n	3a <loop+0x22>
  32:	2100      	movs	r1, #0
  34:	200e      	movs	r0, #14
  36:	f7ff fffe 	bl	0 <digitalWrite>
			36: R_ARM_THM_CALL	digitalWrite
  3a:	bf00      	nop
  3c:	bd80      	pop	{r7, pc}

0000003e <main>:
  3e:	b580      	push	{r7, lr}
  40:	af00      	add	r7, sp, #0
  42:	f7ff fffe 	bl	0 <initGpio>
			42: R_ARM_THM_CALL	initGpio
  46:	f7ff fffe 	bl	0 <setup>
			46: R_ARM_THM_CALL	setup
  4a:	f7ff fffe 	bl	18 <loop>
			4a: R_ARM_THM_CALL	loop
  4e:	e7fc      	b.n	4a <main+0xc>

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000d8 	ldrdeq	r0, [r0], -r8
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000c6 	andeq	r0, r0, r6, asr #1
			c: R_ARM_ABS32	.debug_str
  10:	0000bb0c 	andeq	fp, r0, ip, lsl #22
			11: R_ARM_ABS32	.debug_str
  14:	00004900 	andeq	r4, r0, r0, lsl #18
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00005000 	andeq	r5, r0, r0
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000142 	andeq	r0, r0, r2, asr #2
			28: R_ARM_ABS32	.debug_str
  2c:	10080102 	andne	r0, r8, r2, lsl #2
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	01280502 			; <UNDEFINED> instruction: 0x01280502
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	00003007 	andeq	r3, r0, r7
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000132 	andeq	r0, r0, r2, lsr r1
			44: R_ARM_ABS32	.debug_str
  48:	1e070402 	cdpne	4, 0, cr0, cr7, cr2, {0}
			4b: R_ARM_ABS32	.debug_str
  4c:	02000000 	andeq	r0, r0, #0
  50:	00ad0508 	adceq	r0, sp, r8, lsl #10
			52: R_ARM_ABS32	.debug_str
  54:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  58:	00009107 	andeq	r9, r0, r7, lsl #2
			59: R_ARM_ABS32	.debug_str
  5c:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
  60:	00746e69 	rsbseq	r6, r4, r9, ror #28
  64:	84070402 	strhi	r0, [r7], #-1026	; 0xfffffbfe
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
  94:	00004306 	andeq	r4, r0, r6, lsl #6
			95: R_ARM_ABS32	.debug_str
  98:	3b060000 	blcc	1800a0 <main+0x180062>
			9b: R_ARM_ABS32	.debug_str
  9c:	01000001 	tsteq	r0, r1
  a0:	00a80700 	adceq	r0, r8, r0, lsl #14
			a2: R_ARM_ABS32	.debug_str
  a4:	1b010000 	blne	400ac <main+0x4006e>
  a8:	00005d05 	andeq	r5, r0, r5, lsl #26
  ac:	00003e00 	andeq	r3, r0, r0, lsl #28
			ad: R_ARM_ABS32	.text
  b0:	00001200 	andeq	r1, r0, r0, lsl #4
  b4:	089c0100 	ldmeq	ip, {r8}
  b8:	0000000b 	andeq	r0, r0, fp
			b8: R_ARM_ABS32	.debug_str
  bc:	18060c01 	stmdane	r6, {r0, sl, fp}
			bf: R_ARM_ABS32	.text
  c0:	26000000 	strcs	r0, [r0], -r0
  c4:	01000000 	mrseq	r0, (UNDEF: 0)
  c8:	0005089c 	muleq	r5, ip, r8
			ca: R_ARM_ABS32	.debug_str
  cc:	05010000 	streq	r0, [r1, #-0]
  d0:	00000006 	andeq	r0, r0, r6
			d1: R_ARM_ABS32	.text
  d4:	00001800 	andeq	r1, r0, r0, lsl #16
  d8:	009c0100 	addseq	r0, ip, r0, lsl #2

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <main+0x2c006e>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	01040400 	tsteq	r4, r0, lsl #8
  2c:	0b0b0b3e 	bleq	2c2d2c <main+0x2c2cee>
  30:	0b3a1349 	bleq	e84d5c <main+0xe84d1e>
  34:	0b390b3b 	bleq	e42d28 <main+0xe42cea>
  38:	00001301 	andeq	r1, r0, r1, lsl #6
  3c:	03002805 	movweq	r2, #2053	; 0x805
  40:	000b1c08 	andeq	r1, fp, r8, lsl #24
  44:	00280600 	eoreq	r0, r8, r0, lsl #12
  48:	0b1c0e03 	bleq	70385c <main+0x70381e>
  4c:	2e070000 	cdpcs	0, 0, cr0, cr7, cr0, {0}
  50:	03193f00 	tsteq	r9, #0, 30
  54:	3b0b3a0e 	blcc	2ce894 <main+0x2ce856>
  58:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
  5c:	11134919 	tstne	r3, r9, lsl r9
  60:	40061201 	andmi	r1, r6, r1, lsl #4
  64:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
  68:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
  6c:	03193f00 	tsteq	r9, #0, 30
  70:	3b0b3a0e 	blcc	2ce8b0 <main+0x2ce872>
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
  14:	00000050 	andeq	r0, r0, r0, asr r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000071 	andeq	r0, r0, r1, ror r0
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
  4c:	01054b2f 	tsteq	r5, pc, lsr #22
  50:	1105324b 	tstne	r5, fp, asr #4
  54:	4a08052f 	bmi	201518 <main+0x2014da>
  58:	05300905 	ldreq	r0, [r0, #-2309]!	; 0xfffff6fb
  5c:	09055001 	stmdbeq	r5, {r0, ip, lr}
  60:	4c01051e 	cfstr32mi	mvfx0, [r1], {30}
  64:	30050534 	andcc	r0, r5, r4, lsr r5
  68:	00090531 	andeq	r0, r9, r1, lsr r5
  6c:	33010402 	movwcc	r0, #5122	; 0x1402
  70:	01000302 	tsteq	r0, r2, lsl #6
  74:	Address 0x00000074 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	48474948 	stmdami	r7, {r3, r6, r8, fp, lr}^
   4:	74657300 	strbtvc	r7, [r5], #-768	; 0xfffffd00
   8:	6c007075 	stcvs	0, cr7, [r0], {117}	; 0x75
   c:	00706f6f 	rsbseq	r6, r0, pc, ror #30
  10:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  14:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  18:	61686320 	cmnvs	r8, r0, lsr #6
  1c:	6f6c0072 	svcvs	0x006c0072
  20:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
  24:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  28:	2064656e 	rsbcs	r6, r4, lr, ror #10
  2c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  30:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
  34:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
  38:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  3c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  40:	4900746e 	stmdbmi	r0, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
  44:	5455504e 	ldrbpl	r5, [r5], #-78	; 0xffffffb2
  48:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  4c:	5c73736f 	ldclpl	3, cr7, [r3], #-444	; 0xfffffe44
  50:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  54:	75622d32 	strbvc	r2, [r2, #-3378]!	; 0xfffff2ce
  58:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  5c:	696c622d 	stmdbvs	ip!, {r0, r2, r3, r5, r9, sp, lr}^
  60:	2d796b6e 	vldmdbcs	r9!, {d22-<overflow reg d76>}
  64:	722d6f6e 	eorvc	r6, sp, #440	; 0x1b8
  68:	615c6d61 	cmpvs	ip, r1, ror #26
  6c:	69756472 	ldmdbvs	r5!, {r1, r4, r5, r6, sl, sp, lr}^
  70:	625f6f6e 	subsvs	r6, pc, #440	; 0x1b8
  74:	6f747475 	svcvs	0x00747475
  78:	6c625f6e 	stclvs	15, cr5, [r2], #-440	; 0xfffffe48
  7c:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  80:	0030305f 	eorseq	r3, r0, pc, asr r0
  84:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  88:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  8c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  90:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  94:	6f6c2067 	svcvs	0x006c2067
  98:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
  9c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a0:	2064656e 	rsbcs	r6, r4, lr, ror #10
  a4:	00746e69 	rsbseq	r6, r4, r9, ror #28
  a8:	6e69616d 	powvsez	f6, f1, #5.0
  ac:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  b0:	6f6c2067 	svcvs	0x006c2067
  b4:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
  b8:	7300746e 	movwvc	r7, #1134	; 0x46e
  bc:	6d2f6372 	stcvs	3, cr6, [pc, #-456]!	; fffffefc <main+0xfffffebe>
  c0:	2e6e6961 	vnmulcs.f16	s13, s28, s3	; <UNPREDICTABLE>
  c4:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
  c8:	31432055 	qdaddcc	r2, r5, r3
  cc:	30312037 	eorscc	r2, r1, r7, lsr r0
  d0:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
  d4:	32303220 	eorscc	r3, r0, #32, 4
  d8:	32383031 	eorscc	r3, r8, #49	; 0x31
  dc:	72282034 	eorvc	r2, r8, #52	; 0x34
  e0:	61656c65 	cmnvs	r5, r5, ror #24
  e4:	20296573 	eorcs	r6, r9, r3, ror r5
  e8:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
  ec:	6f633d75 	svcvs	0x00633d75
  f0:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
  f4:	20346d2d 	eorscs	r6, r4, sp, lsr #26
  f8:	68746d2d 	ldmdavs	r4!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
  fc:	20626d75 	rsbcs	r6, r2, r5, ror sp
 100:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
 104:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
 108:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
 10c:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
 110:	616d2d20 	cmnvs	sp, r0, lsr #26
 114:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
 118:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
 11c:	6d2d6537 	cfstr32vs	mvfx6, [sp, #-220]!	; 0xffffff24
 120:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 124:	00304f2d 	eorseq	r4, r0, sp, lsr #30
 128:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 12c:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
 130:	6f6c0074 	svcvs	0x006c0074
 134:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
 138:	4f00746e 	svcmi	0x0000746e
 13c:	55505455 	ldrbpl	r5, [r0, #-1109]	; 0xfffffbab
 140:	69730054 	ldmdbvs	r3!, {r2, r4, r6}^
 144:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 148:	61686320 	cmnvs	r8, r0, lsr #6
 14c:	Address 0x0000014c is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
   c:	45206d72 	strmi	r6, [r0, #-3442]!	; 0xfffff28e
  10:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  14:	20646564 	rsbcs	r6, r4, r4, ror #10
  18:	6c6f6f54 	stclvs	15, cr6, [pc], #-336	; fffffed0 <main+0xfffffe92>
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
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  24:	41018e02 	tstmi	r1, r2, lsl #28
  28:	0000070d 	andeq	r0, r0, sp, lsl #14
  2c:	00000018 	andeq	r0, r0, r8, lsl r0
  30:	00000000 	andeq	r0, r0, r0
			30: R_ARM_ABS32	.debug_frame
  34:	00000018 	andeq	r0, r0, r8, lsl r0
			34: R_ARM_ABS32	.text
  38:	00000026 	andeq	r0, r0, r6, lsr #32
  3c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  40:	41018e02 	tstmi	r1, r2, lsl #28
  44:	0000070d 	andeq	r0, r0, sp, lsl #14
  48:	00000018 	andeq	r0, r0, r8, lsl r0
  4c:	00000000 	andeq	r0, r0, r0
			4c: R_ARM_ABS32	.debug_frame
  50:	0000003e 	andeq	r0, r0, lr, lsr r0
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

