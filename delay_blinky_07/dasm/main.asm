
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	b480      	push	{r7}
   2:	b085      	sub	sp, #20
   4:	af00      	add	r7, sp, #0
   6:	4b13      	ldr	r3, [pc, #76]	; (54 <main+0x54>)
   8:	60bb      	str	r3, [r7, #8]
   a:	4b13      	ldr	r3, [pc, #76]	; (58 <main+0x58>)
   c:	607b      	str	r3, [r7, #4]
   e:	4b13      	ldr	r3, [pc, #76]	; (5c <main+0x5c>)
  10:	603b      	str	r3, [r7, #0]
  12:	2300      	movs	r3, #0
  14:	60fb      	str	r3, [r7, #12]
  16:	68bb      	ldr	r3, [r7, #8]
  18:	681b      	ldr	r3, [r3, #0]
  1a:	f043 0208 	orr.w	r2, r3, #8
  1e:	68bb      	ldr	r3, [r7, #8]
  20:	601a      	str	r2, [r3, #0]
  22:	687b      	ldr	r3, [r7, #4]
  24:	681b      	ldr	r3, [r3, #0]
  26:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
  2a:	f043 5280 	orr.w	r2, r3, #268435456	; 0x10000000
  2e:	687b      	ldr	r3, [r7, #4]
  30:	601a      	str	r2, [r3, #0]
  32:	bf00      	nop
  34:	68fb      	ldr	r3, [r7, #12]
  36:	1c5a      	adds	r2, r3, #1
  38:	60fa      	str	r2, [r7, #12]
  3a:	4a09      	ldr	r2, [pc, #36]	; (60 <main+0x60>)
  3c:	4293      	cmp	r3, r2
  3e:	d9f9      	bls.n	34 <main+0x34>
  40:	2300      	movs	r3, #0
  42:	60fb      	str	r3, [r7, #12]
  44:	683b      	ldr	r3, [r7, #0]
  46:	681b      	ldr	r3, [r3, #0]
  48:	f483 4280 	eor.w	r2, r3, #16384	; 0x4000
  4c:	683b      	ldr	r3, [r7, #0]
  4e:	601a      	str	r2, [r3, #0]
  50:	e7ef      	b.n	32 <main+0x32>
  52:	bf00      	nop
  54:	40023830 	andmi	r3, r2, r0, lsr r8
  58:	40020c00 	andmi	r0, r2, r0, lsl #24
  5c:	40020c14 	andmi	r0, r2, r4, lsl ip
  60:	000aae5f 	andeq	sl, sl, pc, asr lr

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000e2 	andeq	r0, r0, r2, ror #1
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000e2 	andeq	r0, r0, r2, ror #1
			c: R_ARM_ABS32	.debug_str
  10:	0000d70c 	andeq	sp, r0, ip, lsl #14
			11: R_ARM_ABS32	.debug_str
  14:	0000a500 	andeq	sl, r0, r0, lsl #10
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00006400 	andeq	r6, r0, r0, lsl #8
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000160 	andeq	r0, r0, r0, ror #2
			28: R_ARM_ABS32	.debug_str
  2c:	28080102 	stmdacs	r8, {r1, r8}
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	01440502 	cmpeq	r4, r2, lsl #10
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	00004807 	andeq	r4, r0, r7, lsl #16
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000157 	andeq	r0, r0, r7, asr r1
			44: R_ARM_ABS32	.debug_str
  48:	00005b03 	andeq	r5, r0, r3, lsl #22
			49: R_ARM_ABS32	.debug_str
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	36070402 	strcc	r0, [r7], -r2, lsl #8
			57: R_ARM_ABS32	.debug_str
  58:	02000000 	andeq	r0, r0, #0
  5c:	00970508 	addseq	r0, r7, r8, lsl #10
			5e: R_ARM_ABS32	.debug_str
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00008007 	andeq	r8, r0, r7
			65: R_ARM_ABS32	.debug_str
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	73070402 	movwvc	r0, #29698	; 0x7402
			73: R_ARM_ABS32	.debug_str
  74:	03000000 	movweq	r0, #0
  78:	0000014e 	andeq	r0, r0, lr, asr #2
			78: R_ARM_ABS32	.debug_str
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00006e06 	andeq	r6, r0, r6, lsl #28
			89: R_ARM_ABS32	.debug_str
  8c:	05060100 	streq	r0, [r6, #-256]	; 0xffffff00
  90:	00000069 	andeq	r0, r0, r9, rrx
  94:	00000000 	andeq	r0, r0, r0
			94: R_ARM_ABS32	.text
  98:	00000064 	andeq	r0, r0, r4, rrx
  9c:	00df9c01 	sbcseq	r9, pc, r1, lsl #24
  a0:	1a070000 	bne	1c00a8 <main+0x1c00a8>
			a3: R_ARM_ABS32	.debug_str
  a4:	01000000 	mrseq	r0, (UNDEF: 0)
  a8:	00df1809 	sbcseq	r1, pc, r9, lsl #16
  ac:	91020000 	mrsls	r0, (UNDEF: 2)
  b0:	000c0770 	andeq	r0, ip, r0, ror r7
			b2: R_ARM_ABS32	.debug_str
  b4:	0a010000 	beq	400bc <main+0x400bc>
  b8:	0000df18 	andeq	sp, r0, r8, lsl pc
  bc:	6c910200 	lfmvs	f0, 4, [r1], {0}
  c0:	00000007 	andeq	r0, r0, r7
			c1: R_ARM_ABS32	.debug_str
  c4:	180b0100 	stmdane	fp, {r8}
  c8:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
  cc:	07689102 	strbeq	r9, [r8, -r2, lsl #2]!
  d0:	00000066 	andeq	r0, r0, r6, rrx
			d0: R_ARM_ABS32	.debug_str
  d4:	770e0c01 	strvc	r0, [lr, -r1, lsl #24]
  d8:	02000000 	andeq	r0, r0, #0
  dc:	08007491 	stmdaeq	r0, {r0, r4, r7, sl, ip, sp, lr}
  e0:	00008304 	andeq	r8, r0, r4, lsl #6
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <main+0x2c00ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <main+0x380c28>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <main+0xf82c64>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	49003505 	stmdbmi	r0, {r0, r2, r8, sl, ip, sp}
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  44:	0b3a0e03 	bleq	e83858 <main+0xe83858>
  48:	0b390b3b 	bleq	e42d3c <main+0xe42d3c>
  4c:	13491927 	movtne	r1, #39207	; 0x9927
  50:	06120111 			; <UNDEFINED> instruction: 0x06120111
  54:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  58:	00130119 	andseq	r0, r3, r9, lsl r1
  5c:	00340700 	eorseq	r0, r4, r0, lsl #14
  60:	0b3a0e03 	bleq	e83874 <main+0xe83874>
  64:	0b390b3b 	bleq	e42d58 <main+0xe42d58>
  68:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  6c:	0f080000 	svceq	0x00080000
  70:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  74:	00000013 	andeq	r0, r0, r3, lsl r0

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
			6: R_ARM_ABS32	.debug_info
   8:	00040000 	andeq	r0, r4, r0
	...
			10: R_ARM_ABS32	.text
  14:	00000064 	andeq	r0, r0, r4, rrx
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000fd 	strdeq	r0, [r0], -sp
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
  c4:	05001105 	streq	r1, [r0, #-261]	; 0xfffffefb
  c8:	00000002 	andeq	r0, r0, r2
			c9: R_ARM_ABS32	.text
  cc:	18051700 	stmdane	r5, {r8, r9, sl, ip}
  d0:	052f2f3f 	streq	r2, [pc, #-3903]!	; fffff199 <main+0xfffff199>
  d4:	14052f0e 	strne	r2, [r5], #-3854	; 0xfffff0f2
  d8:	69170531 	ldmdbvs	r7, {r0, r4, r5, r8, sl}
  dc:	052e4005 	streq	r4, [lr, #-5]!
  e0:	0e054a14 			; <UNDEFINED> instruction: 0x0e054a14
  e4:	00170533 	andseq	r0, r7, r3, lsr r5
  e8:	20010402 	andcs	r0, r1, r2, lsl #8
  ec:	02000e05 	andeq	r0, r0, #5, 28	; 0x50
  f0:	053c0104 	ldreq	r0, [ip, #-260]!	; 0xfffffefc
  f4:	16053d11 			; <UNDEFINED> instruction: 0x16053d11
  f8:	620e0531 	andvs	r0, lr, #205520896	; 0xc400000
  fc:	01000a02 	tsteq	r0, r2, lsl #20
 100:	Address 0x00000100 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	50475f70 	subpl	r5, r7, r0, ror pc
   4:	5f444f49 	svcpl	0x00444f49
   8:	0052444f 	subseq	r4, r2, pc, asr #8
   c:	50475f70 	subpl	r5, r7, r0, ror pc
  10:	5f444f49 	svcpl	0x00444f49
  14:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
  18:	5f700052 	svcpl	0x00700052
  1c:	5f434352 	svcpl	0x00434352
  20:	31424841 	cmpcc	r2, r1, asr #16
  24:	00524e45 	subseq	r4, r2, r5, asr #28
  28:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  2c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  30:	61686320 	cmnvs	r8, r0, lsr #6
  34:	6f6c0072 	svcvs	0x006c0072
  38:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
  3c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  40:	2064656e 	rsbcs	r6, r4, lr, ror #10
  44:	00746e69 	rsbseq	r6, r4, r9, ror #28
  48:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
  4c:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
  50:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  54:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  58:	5f00746e 	svcpl	0x0000746e
  5c:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
  60:	5f323374 	svcpl	0x00323374
  64:	6f430074 	svcvs	0x00430074
  68:	65746e75 	ldrbvs	r6, [r4, #-3701]!	; 0xfffff18b
  6c:	616d0072 	smcvs	53250	; 0xd002
  70:	75006e69 	strvc	r6, [r0, #-3689]	; 0xfffff197
  74:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  78:	2064656e 	rsbcs	r6, r4, lr, ror #10
  7c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  80:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  84:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  88:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  8c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  90:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  94:	6c00746e 	cfstrsvs	mvf7, [r0], {110}	; 0x6e
  98:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  9c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  a0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  a4:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  a8:	5c73736f 	ldclpl	3, cr7, [r3], #-444	; 0xfffffe44
  ac:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  b0:	75622d32 	strbvc	r2, [r2, #-3378]!	; 0xfffff2ce
  b4:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  b8:	696c622d 	stmdbvs	ip!, {r0, r2, r3, r5, r9, sp, lr}^
  bc:	2d796b6e 	vldmdbcs	r9!, {d22-<overflow reg d76>}
  c0:	722d6f6e 	eorvc	r6, sp, #440	; 0x1b8
  c4:	645c6d61 	ldrbvs	r6, [ip], #-3425	; 0xfffff29f
  c8:	79616c65 	stmdbvc	r1!, {r0, r2, r5, r6, sl, fp, sp, lr}^
  cc:	696c625f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
  d0:	5f796b6e 	svcpl	0x00796b6e
  d4:	73003730 	movwvc	r3, #1840	; 0x730
  d8:	6d2f6372 	stcvs	3, cr6, [pc, #-456]!	; ffffff18 <main+0xffffff18>
  dc:	2e6e6961 	vnmulcs.f16	s13, s28, s3	; <UNPREDICTABLE>
  e0:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
  e4:	31432055 	qdaddcc	r2, r5, r3
  e8:	30312037 	eorscc	r2, r1, r7, lsr r0
  ec:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
  f0:	32303220 	eorscc	r3, r0, #32, 4
  f4:	32383031 	eorscc	r3, r8, #49	; 0x31
  f8:	72282034 	eorvc	r2, r8, #52	; 0x34
  fc:	61656c65 	cmnvs	r5, r5, ror #24
 100:	20296573 	eorcs	r6, r9, r3, ror r5
 104:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
 108:	6f633d75 	svcvs	0x00633d75
 10c:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
 110:	20346d2d 	eorscs	r6, r4, sp, lsr #26
 114:	68746d2d 	ldmdavs	r4!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
 118:	20626d75 	rsbcs	r6, r2, r5, ror sp
 11c:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
 120:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
 124:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
 128:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
 12c:	616d2d20 	cmnvs	sp, r0, lsr #26
 130:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
 134:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
 138:	6d2d6537 	cfstr32vs	mvfx6, [sp, #-220]!	; 0xffffff24
 13c:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 140:	00304f2d 	eorseq	r4, r0, sp, lsr #30
 144:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 148:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
 14c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
 150:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
 154:	6c00745f 	cfstrsvs	mvf7, [r0], {95}	; 0x5f
 158:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 15c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 160:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 164:	63206465 			; <UNDEFINED> instruction: 0x63206465
 168:	00726168 	rsbseq	r6, r2, r8, ror #2

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
   c:	45206d72 	strmi	r6, [r0, #-3442]!	; 0xfffff28e
  10:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  14:	20646564 	rsbcs	r6, r4, r4, ror #10
  18:	6c6f6f54 	stclvs	15, cr6, [pc], #-336	; fffffed0 <main+0xfffffed0>
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
  1c:	00000064 	andeq	r0, r0, r4, rrx
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	180e4101 	stmdane	lr, {r0, r8, lr}
  28:	00070d41 	andeq	r0, r7, r1, asr #26

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

