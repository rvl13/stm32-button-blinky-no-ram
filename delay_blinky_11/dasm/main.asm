
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
   0:	2401      	movs	r4, #1
   2:	4b04      	ldr	r3, [pc, #16]	; (14 <Reset_Handler+0x14>)
   4:	601c      	str	r4, [r3, #0]
   6:	4b04      	ldr	r3, [pc, #16]	; (18 <Reset_Handler+0x18>)
   8:	601c      	str	r4, [r3, #0]
   a:	4d04      	ldr	r5, [pc, #16]	; (1c <Reset_Handler+0x1c>)
   c:	0d63      	lsrs	r3, r4, #21
   e:	602b      	str	r3, [r5, #0]
  10:	3401      	adds	r4, #1
  12:	e7fb      	b.n	c <Reset_Handler+0xc>
  14:	4247060c 	submi	r0, r7, #12, 12	; 0xc00000
  18:	42418070 	submi	r8, r1, #112	; 0x70
  1c:	424182b8 	submi	r8, r1, #184, 4	; 0x8000000b

Disassembly of section .isr_vector:

00000000 <vectors>:
   0:	00000000 	andeq	r0, r0, r0
			0: R_ARM_ABS32	Reset_Handler

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000da 	ldrdeq	r0, [r0], -sl
			c: R_ARM_ABS32	.debug_str
  10:	0000cf0c 	andeq	ip, r0, ip, lsl #30
			11: R_ARM_ABS32	.debug_str
  14:	00000e00 	andeq	r0, r0, r0, lsl #28
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00002000 	andeq	r2, r0, r0
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000158 	andeq	r0, r0, r8, asr r1
			28: R_ARM_ABS32	.debug_str
  2c:	40080102 	andmi	r0, r8, r2, lsl #2
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	013c0502 	teqeq	ip, r2, lsl #10
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	00006007 	andeq	r6, r0, r7
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	0000014f 	andeq	r0, r0, pc, asr #2
			44: R_ARM_ABS32	.debug_str
  48:	00008a03 	andeq	r8, r0, r3, lsl #20
			49: R_ARM_ABS32	.debug_str
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	4e070402 	cdpmi	4, 0, cr0, cr7, cr2, {0}
			57: R_ARM_ABS32	.debug_str
  58:	02000000 	andeq	r0, r0, #0
  5c:	00c10508 	sbceq	r0, r1, r8, lsl #10
			5e: R_ARM_ABS32	.debug_str
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	0000aa07 	andeq	sl, r0, r7, lsl #20
			65: R_ARM_ABS32	.debug_str
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	9d070402 	cfstrsls	mvf0, [r7, #-8]
			73: R_ARM_ABS32	.debug_str
  74:	03000000 	movweq	r0, #0
  78:	00000146 	andeq	r0, r0, r6, asr #2
			78: R_ARM_ABS32	.debug_str
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00000093 	muleq	r0, r3, r0
  8c:	00007006 	andeq	r7, r0, r6
  90:	07000000 	streq	r0, [r0, -r0]
  94:	00000073 	andeq	r0, r0, r3, ror r0
			94: R_ARM_ABS32	.debug_str
  98:	830a1401 	movwhi	r1, #41985	; 0xa401
  9c:	05000000 	streq	r0, [r0, #-0]
  a0:	00000003 	andeq	r0, r0, r3
			a1: R_ARM_ABS32	vectors
  a4:	00000800 	andeq	r0, r0, r0, lsl #16
			a6: R_ARM_ABS32	.debug_str
  a8:	1b010000 	blne	400b0 <Reset_Handler+0x400b0>
  ac:	0000691c 	andeq	r6, r0, ip, lsl r9
  b0:	00000000 	andeq	r0, r0, r0
			b1: R_ARM_ABS32	.text
  b4:	00002000 	andeq	r2, r0, r0
  b8:	dc9c0100 	ldfles	f0, [ip], {0}
  bc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
			c0: R_ARM_ABS32	.debug_str
  c4:	dc181e01 	ldcle	14, cr1, [r8], {1}
  c8:	01000000 	mrseq	r0, (UNDEF: 0)
  cc:	00950955 	addseq	r0, r5, r5, asr r9
			ce: R_ARM_ABS32	.debug_str
  d0:	1f010000 	svcne	0x00010000
  d4:	00007717 	andeq	r7, r0, r7, lsl r7
  d8:	00540100 	subseq	r0, r4, r0, lsl #2
  dc:	0077040a 	rsbseq	r0, r7, sl, lsl #8
  e0:	Address 0x000000e0 is out of bounds.


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
  38:	49010105 	stmdbmi	r1, {r0, r2, r8}
  3c:	00130113 	andseq	r0, r3, r3, lsl r1
  40:	00210600 	eoreq	r0, r1, r0, lsl #12
  44:	0b2f1349 	bleq	bc4d70 <Reset_Handler+0xbc4d70>
  48:	34070000 	strcc	r0, [r7], #-0
  4c:	3a0e0300 	bcc	380c54 <Reset_Handler+0x380c54>
  50:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  54:	3f13490b 	svccc	0x0013490b
  58:	00180219 	andseq	r0, r8, r9, lsl r2
  5c:	012e0800 			; <UNDEFINED> instruction: 0x012e0800
  60:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  64:	0b3b0b3a 	bleq	ec2d54 <Reset_Handler+0xec2d54>
  68:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  6c:	01111349 	tsteq	r1, r9, asr #6
  70:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
  74:	01194297 			; <UNDEFINED> instruction: 0x01194297
  78:	09000013 	stmdbeq	r0, {r0, r1, r4}
  7c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  80:	0b3b0b3a 	bleq	ec2d70 <Reset_Handler+0xec2d70>
  84:	13490b39 	movtne	r0, #39737	; 0x9b39
  88:	00001802 	andeq	r1, r0, r2, lsl #16
  8c:	0b000f0a 	bleq	3cbc <Reset_Handler+0x3cbc>
  90:	0013490b 	andseq	r4, r3, fp, lsl #18
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
			6: R_ARM_ABS32	.debug_info
   8:	00040000 	andeq	r0, r4, r0
	...
			10: R_ARM_ABS32	.text
  14:	00000020 	andeq	r0, r0, r0, lsr #32
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000101 	andeq	r0, r0, r1, lsl #2
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
  c4:	05003105 	streq	r3, [r0, #-261]	; 0xfffffefb
  c8:	00000002 	andeq	r0, r0, r2
			c9: R_ARM_ABS32	.text
  cc:	011a0300 	tsteq	sl, r0, lsl #6
  d0:	05161705 	ldreq	r1, [r6, #-1797]	; 0xfffff8fb
  d4:	29052505 	stmdbcs	r5, {r0, r2, r8, sl, sp}
  d8:	25050520 	strcs	r0, [r5, #-1312]	; 0xfffffae0
  dc:	05203705 	streq	r3, [r0, #-1797]!	; 0xfffff8fb
  e0:	24052314 	strcs	r2, [r5], #-788	; 0xfffffcec
  e4:	01040200 	mrseq	r0, R12_usr
  e8:	05200b03 	streq	r0, [r0, #-2819]!	; 0xfffff4fd
  ec:	04020019 	streq	r0, [r2], #-25	; 0xffffffe7
  f0:	10052001 	andne	r2, r5, r1
  f4:	01040200 	mrseq	r0, R12_usr
  f8:	00190523 	andseq	r0, r9, r3, lsr #10
  fc:	1d010402 	cfstrsne	mvf0, [r1, #-8]
 100:	01000702 	tsteq	r0, r2, lsl #14
 104:	Address 0x00000104 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	65736552 	ldrbvs	r6, [r3, #-1362]!	; 0xfffffaae
   4:	61485f74 	hvcvs	34292	; 0x85f4
   8:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
   c:	3a450072 	bcc	11401dc <Reset_Handler+0x11401dc>
  10:	73736f5c 	cmnvc	r3, #92, 30	; 0x170
  14:	6d74735c 	ldclvs	3, cr7, [r4, #-368]!	; 0xfffffe90
  18:	622d3233 	eorvs	r3, sp, #805306371	; 0x30000003
  1c:	6f747475 	svcvs	0x00747475
  20:	6c622d6e 	stclvs	13, cr2, [r2], #-440	; 0xfffffe48
  24:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  28:	2d6f6e2d 	stclcs	14, cr6, [pc, #-180]!	; ffffff7c <Reset_Handler+0xffffff7c>
  2c:	5c6d6172 	stfple	f6, [sp], #-456	; 0xfffffe38
  30:	616c6564 	cmnvs	ip, r4, ror #10
  34:	6c625f79 	stclvs	15, cr5, [r2], #-484	; 0xfffffe1c
  38:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  3c:	0031315f 	eorseq	r3, r1, pc, asr r1
  40:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  44:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  48:	61686320 	cmnvs	r8, r0, lsr #6
  4c:	6f6c0072 	svcvs	0x006c0072
  50:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
  54:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  58:	2064656e 	rsbcs	r6, r4, lr, ror #10
  5c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  60:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
  64:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
  68:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  6c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  70:	7600746e 	strvc	r7, [r0], -lr, ror #8
  74:	6f746365 	svcvs	0x00746365
  78:	52007372 	andpl	r7, r0, #-939524095	; 0xc8000001
  7c:	6f546765 	svcvs	0x00546765
  80:	64616552 	strbtvs	r6, [r1], #-1362	; 0xfffffaae
  84:	74697257 	strbtvc	r7, [r9], #-599	; 0xfffffda9
  88:	5f5f0065 	svcpl	0x005f0065
  8c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
  90:	745f3233 	ldrbvc	r3, [pc], #-563	; 98 <.debug_str+0x98>
  94:	756f4300 	strbvc	r4, [pc, #-768]!	; fffffd9c <Reset_Handler+0xfffffd9c>
  98:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
  9c:	736e7500 	cmnvc	lr, #0, 10
  a0:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  a4:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  a8:	6f6c0074 	svcvs	0x006c0074
  ac:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  b0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  b4:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  b8:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  bc:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  c0:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  c4:	6f6c2067 	svcvs	0x006c2067
  c8:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
  cc:	7300746e 	movwvc	r7, #1134	; 0x46e
  d0:	6d2f6372 	stcvs	3, cr6, [pc, #-456]!	; ffffff10 <Reset_Handler+0xffffff10>
  d4:	2e6e6961 	vnmulcs.f16	s13, s28, s3	; <UNPREDICTABLE>
  d8:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
  dc:	31432055 	qdaddcc	r2, r5, r3
  e0:	30312037 	eorscc	r2, r1, r7, lsr r0
  e4:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
  e8:	32303220 	eorscc	r3, r0, #32, 4
  ec:	32383031 	eorscc	r3, r8, #49	; 0x31
  f0:	72282034 	eorvc	r2, r8, #52	; 0x34
  f4:	61656c65 	cmnvs	r5, r5, ror #24
  f8:	20296573 	eorcs	r6, r9, r3, ror r5
  fc:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
 100:	6f633d75 	svcvs	0x00633d75
 104:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
 108:	20346d2d 	eorscs	r6, r4, sp, lsr #26
 10c:	68746d2d 	ldmdavs	r4!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
 110:	20626d75 	rsbcs	r6, r2, r5, ror sp
 114:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
 118:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
 11c:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
 120:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
 124:	616d2d20 	cmnvs	sp, r0, lsr #26
 128:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
 12c:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
 130:	6d2d6537 	cfstr32vs	mvfx6, [sp, #-220]!	; 0xffffff24
 134:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 138:	00304f2d 	eorseq	r4, r0, sp, lsr #30
 13c:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 140:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
 144:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
 148:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
 14c:	6c00745f 	cfstrsvs	mvf7, [r0], {95}	; 0x5f
 150:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 154:	00746e69 	rsbseq	r6, r4, r9, ror #28
 158:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 15c:	63206465 			; <UNDEFINED> instruction: 0x63206465
 160:	00726168 	rsbseq	r6, r2, r8, ror #2

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
  1c:	00000020 	andeq	r0, r0, r0, lsr #32

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

