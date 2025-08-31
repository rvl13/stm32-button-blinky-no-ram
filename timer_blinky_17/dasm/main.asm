
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	b480      	push	{r7}
   2:	b085      	sub	sp, #20
   4:	af00      	add	r7, sp, #0
   6:	4b1c      	ldr	r3, [pc, #112]	; (78 <main+0x78>)
   8:	60fb      	str	r3, [r7, #12]
   a:	4b1c      	ldr	r3, [pc, #112]	; (7c <main+0x7c>)
   c:	60bb      	str	r3, [r7, #8]
   e:	4b1c      	ldr	r3, [pc, #112]	; (80 <main+0x80>)
  10:	607b      	str	r3, [r7, #4]
  12:	68fb      	ldr	r3, [r7, #12]
  14:	681b      	ldr	r3, [r3, #0]
  16:	f043 0208 	orr.w	r2, r3, #8
  1a:	68fb      	ldr	r3, [r7, #12]
  1c:	601a      	str	r2, [r3, #0]
  1e:	68fb      	ldr	r3, [r7, #12]
  20:	3310      	adds	r3, #16
  22:	681a      	ldr	r2, [r3, #0]
  24:	68fb      	ldr	r3, [r7, #12]
  26:	3310      	adds	r3, #16
  28:	f042 0204 	orr.w	r2, r2, #4
  2c:	601a      	str	r2, [r3, #0]
  2e:	68bb      	ldr	r3, [r7, #8]
  30:	f04f 5200 	mov.w	r2, #536870912	; 0x20000000
  34:	601a      	str	r2, [r3, #0]
  36:	68bb      	ldr	r3, [r7, #8]
  38:	3324      	adds	r3, #36	; 0x24
  3a:	f04f 7200 	mov.w	r2, #33554432	; 0x2000000
  3e:	601a      	str	r2, [r3, #0]
  40:	687b      	ldr	r3, [r7, #4]
  42:	331c      	adds	r3, #28
  44:	2260      	movs	r2, #96	; 0x60
  46:	601a      	str	r2, [r3, #0]
  48:	687b      	ldr	r3, [r7, #4]
  4a:	3328      	adds	r3, #40	; 0x28
  4c:	f240 623f 	movw	r2, #1599	; 0x63f
  50:	601a      	str	r2, [r3, #0]
  52:	687b      	ldr	r3, [r7, #4]
  54:	332c      	adds	r3, #44	; 0x2c
  56:	f242 720f 	movw	r2, #9999	; 0x270f
  5a:	601a      	str	r2, [r3, #0]
  5c:	687b      	ldr	r3, [r7, #4]
  5e:	333c      	adds	r3, #60	; 0x3c
  60:	f241 3287 	movw	r2, #4999	; 0x1387
  64:	601a      	str	r2, [r3, #0]
  66:	687b      	ldr	r3, [r7, #4]
  68:	3320      	adds	r3, #32
  6a:	f44f 7280 	mov.w	r2, #256	; 0x100
  6e:	601a      	str	r2, [r3, #0]
  70:	687b      	ldr	r3, [r7, #4]
  72:	2201      	movs	r2, #1
  74:	601a      	str	r2, [r3, #0]
  76:	e7fe      	b.n	76 <main+0x76>
  78:	40023830 	andmi	r3, r2, r0, lsr r8
  7c:	40020c00 	andmi	r0, r2, r0, lsl #24
  80:	40000800 	andmi	r0, r0, r0, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000001a5 	andeq	r0, r0, r5, lsr #3
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000001c8 	andeq	r0, r0, r8, asr #3
			c: R_ARM_ABS32	.debug_str
  10:	0001bd0c 	andeq	fp, r1, ip, lsl #26
			11: R_ARM_ABS32	.debug_str
  14:	00001100 	andeq	r1, r0, r0, lsl #2
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00008400 	andeq	r8, r0, r0, lsl #8
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000278 	andeq	r0, r0, r8, ror r2
			28: R_ARM_ABS32	.debug_str
  2c:	7b080102 	blvc	20043c <main+0x20043c>
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	022a0502 	eoreq	r0, sl, #8388608	; 0x800000
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009b07 	andeq	r9, r0, r7, lsl #22
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000265 	andeq	r0, r0, r5, ror #4
			44: R_ARM_ABS32	.debug_str
  48:	00010803 	andeq	r0, r1, r3, lsl #16
			49: R_ARM_ABS32	.debug_str
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	89070402 	stmdbhi	r7, {r1, sl}
			57: R_ARM_ABS32	.debug_str
  58:	02000000 	andeq	r0, r0, #0
  5c:	01af0508 			; <UNDEFINED> instruction: 0x01af0508
			5e: R_ARM_ABS32	.debug_str
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00014d07 	andeq	r4, r1, r7, lsl #26
			65: R_ARM_ABS32	.debug_str
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	40070402 	andmi	r0, r7, r2, lsl #8
			73: R_ARM_ABS32	.debug_str
  74:	03000001 	movweq	r0, #1
  78:	0000025c 	andeq	r0, r0, ip, asr r2
			78: R_ARM_ABS32	.debug_str
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	2c010706 	stccs	7, cr0, [r1], {6}
  8c:	01000000 	mrseq	r0, (UNDEF: 0)
  90:	010f0107 	tsteq	pc, r7, lsl #2
  94:	3f070000 	svccc	0x00070000
			97: R_ARM_ABS32	.debug_str
  98:	00000002 	andeq	r0, r0, r2
  9c:	00024807 	andeq	r4, r2, r7, lsl #16
			9d: R_ARM_ABS32	.debug_str
  a0:	99070100 	stmdbls	r7, {r8}
			a3: R_ARM_ABS32	.debug_str
  a4:	02000001 	andeq	r0, r0, #1
  a8:	00005907 	andeq	r5, r0, r7, lsl #18
			a9: R_ARM_ABS32	.debug_str
  ac:	09070300 	stmdbeq	r7, {r8, r9}
			af: R_ARM_ABS32	.debug_str
  b0:	04000000 	streq	r0, [r0], #-0
  b4:	00029207 	andeq	r9, r2, r7, lsl #4
			b5: R_ARM_ABS32	.debug_str
  b8:	43070500 	movwmi	r0, #29952	; 0x7500
			bb: R_ARM_ABS32	.debug_str
  bc:	06000000 	streq	r0, [r0], -r0
  c0:	00004e07 	andeq	r4, r0, r7, lsl #28
			c1: R_ARM_ABS32	.debug_str
  c4:	6e070700 	cdpvs	7, 0, cr0, cr7, cr0, {0}
			c7: R_ARM_ABS32	.debug_str
  c8:	08000002 	stmdaeq	r0, {r1}
  cc:	00000007 	andeq	r0, r0, r7
			cd: R_ARM_ABS32	.debug_str
  d0:	ff070900 			; <UNDEFINED> instruction: 0xff070900
			d3: R_ARM_ABS32	.debug_str
  d4:	0a000000 	beq	dc <.debug_info+0xdc>
  d8:	0000c707 	andeq	ip, r0, r7, lsl #14
			d9: R_ARM_ABS32	.debug_str
  dc:	e7070b00 	str	r0, [r7, -r0, lsl #22]
			df: R_ARM_ABS32	.debug_str
  e0:	0c000000 	stceq	0, cr0, [r0], {-0}
  e4:	00017b07 	andeq	r7, r1, r7, lsl #22
			e5: R_ARM_ABS32	.debug_str
  e8:	8f070d00 	svchi	0x00070d00
			eb: R_ARM_ABS32	.debug_str
  ec:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
  f0:	00011307 	andeq	r1, r1, r7, lsl #6
			f1: R_ARM_ABS32	.debug_str
  f4:	1d070f00 	stcne	15, cr0, [r7, #-0]
			f7: R_ARM_ABS32	.debug_str
  f8:	10000001 	andne	r0, r0, r1
  fc:	0000f307 	andeq	pc, r0, r7, lsl #6
			fd: R_ARM_ABS32	.debug_str
 100:	32071100 	andcc	r1, r7, #0, 2
			103: R_ARM_ABS32	.debug_str
 104:	12000001 	andne	r0, r0, #1
 108:	0000dd07 	andeq	sp, r0, r7, lsl #26
			109: R_ARM_ABS32	.debug_str
 10c:	06001300 	streq	r1, [r0], -r0, lsl #6
 110:	002c0107 	eoreq	r0, ip, r7, lsl #2
 114:	20010000 	andcs	r0, r1, r0
 118:	00015a01 	andeq	r5, r1, r1, lsl #20
 11c:	00ae0700 	adceq	r0, lr, r0, lsl #14
			11e: R_ARM_ABS32	.debug_str
 120:	07000000 	streq	r0, [r0, -r0]
 124:	000000ba 	strheq	r0, [r0], -sl
			124: R_ARM_ABS32	.debug_str
 128:	02840701 	addeq	r0, r4, #262144	; 0x40000
			12a: R_ARM_ABS32	.debug_str
 12c:	07020000 	streq	r0, [r2, -r0]
 130:	000001a3 	andeq	r0, r0, r3, lsr #3
			130: R_ARM_ABS32	.debug_str
 134:	01850703 	orreq	r0, r5, r3, lsl #14
			136: R_ARM_ABS32	.debug_str
 138:	07040000 	streq	r0, [r4, -r0]
 13c:	00000063 	andeq	r0, r0, r3, rrx
			13c: R_ARM_ABS32	.debug_str
 140:	01640705 	cmneq	r4, r5, lsl #14
			142: R_ARM_ABS32	.debug_str
 144:	07060000 	streq	r0, [r6, -r0]
 148:	00000127 	andeq	r0, r0, r7, lsr #2
			148: R_ARM_ABS32	.debug_str
 14c:	02510707 	subseq	r0, r1, #1835008	; 0x1c0000
			14e: R_ARM_ABS32	.debug_str
 150:	07080000 	streq	r0, [r8, -r0]
 154:	00000234 	andeq	r0, r0, r4, lsr r2
			154: R_ARM_ABS32	.debug_str
 158:	3b080009 	blcc	200184 <main+0x200184>
			15b: R_ARM_ABS32	.debug_str
 15c:	01000001 	tsteq	r0, r1
 160:	0069052d 	rsbeq	r0, r9, sp, lsr #10
 164:	00000000 	andeq	r0, r0, r0
			166: R_ARM_ABS32	.text
 168:	00840000 	addeq	r0, r4, r0
 16c:	9c010000 	stcls	0, cr0, [r1], {-0}
 170:	000001a2 	andeq	r0, r0, r2, lsr #3
 174:	00006d09 	andeq	r6, r0, r9, lsl #26
			175: R_ARM_ABS32	.debug_str
 178:	18300100 	ldmdane	r0!, {r8}
 17c:	000001a2 	andeq	r0, r0, r2, lsr #3
 180:	09749102 	ldmdbeq	r4!, {r1, r8, ip, pc}^
 184:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
			184: R_ARM_ABS32	.debug_str
 188:	a2183101 	andsge	r3, r8, #1073741824	; 0x40000000
 18c:	02000001 	andeq	r0, r0, #1
 190:	6f097091 	svcvs	0x00097091
			193: R_ARM_ABS32	.debug_str
 194:	01000001 	tsteq	r0, r1
 198:	01a21832 			; <UNDEFINED> instruction: 0x01a21832
 19c:	91020000 	mrsls	r0, (UNDEF: 2)
 1a0:	040a006c 	streq	r0, [sl], #-108	; 0xffffff94
 1a4:	00000083 	andeq	r0, r0, r3, lsl #1
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
  40:	0b3e0104 	bleq	f80458 <main+0xf80458>
  44:	13490b0b 	movtne	r0, #39691	; 0x9b0b
  48:	0b3b0b3a 	bleq	ec2d38 <main+0xec2d38>
  4c:	13010b39 	movwne	r0, #6969	; 0x1b39
  50:	28070000 	stmdacs	r7, {}	; <UNPREDICTABLE>
  54:	1c0e0300 	stcne	3, cr0, [lr], {-0}
  58:	0800000b 	stmdaeq	r0, {r0, r1, r3}
  5c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  60:	0b3a0e03 	bleq	e83874 <main+0xe83874>
  64:	0b390b3b 	bleq	e42d58 <main+0xe42d58>
  68:	13491927 	movtne	r1, #39207	; 0x9927
  6c:	06120111 			; <UNDEFINED> instruction: 0x06120111
  70:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  74:	00130119 	andseq	r0, r3, r9, lsl r1
  78:	00340900 	eorseq	r0, r4, r0, lsl #18
  7c:	0b3a0e03 	bleq	e83890 <main+0xe83890>
  80:	0b390b3b 	bleq	e42d74 <main+0xe42d74>
  84:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  88:	0f0a0000 	svceq	0x000a0000
  8c:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  90:	00000013 	andeq	r0, r0, r3, lsl r0

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
   0:	0000010b 	andeq	r0, r0, fp, lsl #2
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
  cc:	012c0300 			; <UNDEFINED> instruction: 0x012c0300
  d0:	2f3f1805 	svccs	0x003f1805
  d4:	3214052f 	andscc	r0, r4, #197132288	; 0xbc00000
  d8:	05681a05 	strbeq	r1, [r8, #-2565]!	; 0xfffff5fb
  dc:	1105851f 	tstne	r5, pc, lsl r5
  e0:	2e1e054b 	cfmac32cs	mvfx0, mvfx14, mvfx11
  e4:	053f1005 	ldreq	r1, [pc, #-5]!	; e7 <.debug_line+0xe7>
  e8:	10052e1d 	andne	r2, r5, sp, lsl lr
  ec:	2e1d052f 	cfmul64cs	mvdx0, mvdx13, mvdx15
  f0:	053d1005 	ldreq	r1, [sp, #-5]!
  f4:	10052e1d 	andne	r2, r5, sp, lsl lr
  f8:	2e1d053d 	mrccs	5, 0, r0, cr13, cr13, {1}
  fc:	053d1005 	ldreq	r1, [sp, #-5]!
 100:	053d2e1d 	ldreq	r2, [sp, #-3613]!	; 0xfffff1e3
 104:	0402000b 	streq	r0, [r2], #-11
 108:	07023f01 	streq	r3, [r2, -r1, lsl #30]
 10c:	Address 0x0000010c is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
   4:	544e435f 	strbpl	r4, [lr], #-863	; 0xfffffca1
   8:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
   c:	52535f78 	subspl	r5, r3, #120, 30	; 0x1e0
  10:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  14:	5c73736f 	ldclpl	3, cr7, [r3], #-444	; 0xfffffe44
  18:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  1c:	75622d32 	strbvc	r2, [r2, #-3378]!	; 0xfffff2ce
  20:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  24:	696c622d 	stmdbvs	ip!, {r0, r2, r3, r5, r9, sp, lr}^
  28:	2d796b6e 	vldmdbcs	r9!, {d22-<overflow reg d76>}
  2c:	722d6f6e 	eorvc	r6, sp, #440	; 0x1b8
  30:	745c6d61 	ldrbvc	r6, [ip], #-3425	; 0xfffff29f
  34:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
  38:	696c625f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
  3c:	5f796b6e 	svcpl	0x00796b6e
  40:	54003731 	strpl	r3, [r0], #-1841	; 0xfffff8cf
  44:	5f784d49 	svcpl	0x00784d49
  48:	524d4343 	subpl	r4, sp, #201326593	; 0xc000001
  4c:	49540031 	ldmdbmi	r4, {r0, r4, r5}^
  50:	435f784d 	cmpmi	pc, #5046272	; 0x4d0000
  54:	32524d43 	subscc	r4, r2, #4288	; 0x10c0
  58:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  5c:	49445f78 	stmdbmi	r4, {r3, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
  60:	47005245 	strmi	r5, [r0, -r5, asr #4]
  64:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
  68:	52444f5f 	subpl	r4, r4, #380	; 0x17c
  6c:	525f7000 	subspl	r7, pc, #0
  70:	415f4343 	cmpmi	pc, r3, asr #6
  74:	45314248 	ldrmi	r4, [r1, #-584]!	; 0xfffffdb8
  78:	7500524e 	strvc	r5, [r0, #-590]	; 0xfffffdb2
  7c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  80:	2064656e 	rsbcs	r6, r4, lr, ror #10
  84:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
  88:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  8c:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  90:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  94:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  98:	7300746e 	movwvc	r7, #1134	; 0x46e
  9c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
  a0:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  a4:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  a8:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  ac:	50470074 	subpl	r0, r7, r4, ror r0
  b0:	5f784f49 	svcpl	0x00784f49
  b4:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
  b8:	50470052 	subpl	r0, r7, r2, asr r0
  bc:	5f784f49 	svcpl	0x00784f49
  c0:	5059544f 	subspl	r5, r9, pc, asr #8
  c4:	54005245 	strpl	r5, [r0], #-581	; 0xfffffdbb
  c8:	5f784d49 	svcpl	0x00784d49
  cc:	00525241 	subseq	r5, r2, r1, asr #4
  d0:	50475f70 	subpl	r5, r7, r0, ror pc
  d4:	5f444f49 	svcpl	0x00444f49
  d8:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
  dc:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  e0:	4d445f78 	stclmi	15, cr5, [r4, #-480]	; 0xfffffe20
  e4:	54005241 	strpl	r5, [r0], #-577	; 0xfffffdbf
  e8:	5f784d49 	svcpl	0x00784d49
  ec:	56525352 			; <UNDEFINED> instruction: 0x56525352
  f0:	54003144 	strpl	r3, [r0], #-324	; 0xfffffebc
  f4:	5f784d49 	svcpl	0x00784d49
  f8:	56525352 			; <UNDEFINED> instruction: 0x56525352
  fc:	54003244 	strpl	r3, [r0], #-580	; 0xfffffdbc
 100:	5f784d49 	svcpl	0x00784d49
 104:	00435350 	subeq	r5, r3, r0, asr r3
 108:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
 10c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
 110:	5400745f 	strpl	r7, [r0], #-1119	; 0xfffffba1
 114:	5f784d49 	svcpl	0x00784d49
 118:	33524343 	cmpcc	r2, #201326593	; 0xc000001
 11c:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 120:	43435f78 	movtmi	r5, #16248	; 0x3f78
 124:	47003452 	smlsdmi	r0, r2, r4, r3
 128:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 12c:	4b434c5f 	blmi	10d32b0 <main+0x10d32b0>
 130:	49540052 	ldmdbmi	r4, {r1, r4, r6}^
 134:	445f784d 	ldrbmi	r7, [pc], #-2125	; 13c <.debug_str+0x13c>
 138:	6d005243 	sfmvs	f5, 4, [r0, #-268]	; 0xfffffef4
 13c:	006e6961 	rsbeq	r6, lr, r1, ror #18
 140:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 144:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 148:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 14c:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 150:	6f6c2067 	svcvs	0x006c2067
 154:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
 158:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
 15c:	2064656e 	rsbcs	r6, r4, lr, ror #10
 160:	00746e69 	rsbseq	r6, r4, r9, ror #28
 164:	4f495047 	svcmi	0x00495047
 168:	53425f78 	movtpl	r5, #12152	; 0x2f78
 16c:	70005252 	andvc	r5, r0, r2, asr r2
 170:	4d49545f 	cfstrdmi	mvd5, [r9, #-380]	; 0xfffffe84
 174:	41425f34 	cmpmi	r2, r4, lsr pc
 178:	54004553 	strpl	r4, [r0], #-1363	; 0xfffffaad
 17c:	5f784d49 	svcpl	0x00784d49
 180:	31524343 	cmpcc	r2, r3, asr #6
 184:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 188:	495f784f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, fp, ip, sp, lr}^	; <UNPREDICTABLE>
 18c:	54005244 	strpl	r5, [r0], #-580	; 0xfffffdbc
 190:	5f784d49 	svcpl	0x00784d49
 194:	32524343 	subscc	r4, r2, #201326593	; 0xc000001
 198:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 19c:	4d535f78 	ldclmi	15, cr5, [r3, #-480]	; 0xfffffe20
 1a0:	47005243 	strmi	r5, [r0, -r3, asr #4]
 1a4:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 1a8:	5055505f 	subspl	r5, r5, pc, asr r0
 1ac:	6c005244 	sfmvs	f5, 4, [r0], {68}	; 0x44
 1b0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 1b4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 1b8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 1bc:	63727300 	cmnvs	r2, #0, 6
 1c0:	69616d2f 	stmdbvs	r1!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
 1c4:	00632e6e 	rsbeq	r2, r3, lr, ror #28
 1c8:	20554e47 	subscs	r4, r5, r7, asr #28
 1cc:	20373143 	eorscs	r3, r7, r3, asr #2
 1d0:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
 1d4:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
 1d8:	30313230 	eorscc	r3, r1, r0, lsr r2
 1dc:	20343238 	eorscs	r3, r4, r8, lsr r2
 1e0:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
 1e4:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 1e8:	6d2d2029 	stcvs	0, cr2, [sp, #-164]!	; 0xffffff5c
 1ec:	3d757063 	ldclcc	0, cr7, [r5, #-396]!	; 0xfffffe74
 1f0:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
 1f4:	6d2d7865 	stcvs	8, cr7, [sp, #-404]!	; 0xfffffe6c
 1f8:	6d2d2034 	stcvs	0, cr2, [sp, #-208]!	; 0xffffff30
 1fc:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
 200:	6d2d2062 	stcvs	0, cr2, [sp, #-392]!	; 0xfffffe78
 204:	616f6c66 	cmnvs	pc, r6, ror #24
 208:	62612d74 	rsbvs	r2, r1, #116, 26	; 0x1d00
 20c:	6f733d69 	svcvs	0x00733d69
 210:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	; 0xfffffe68
 214:	6372616d 	cmnvs	r2, #1073741851	; 0x4000001b
 218:	72613d68 	rsbvc	r3, r1, #104, 26	; 0x1a00
 21c:	6537766d 	ldrvs	r7, [r7, #-1645]!	; 0xfffff993
 220:	2d206d2d 	stccs	13, cr6, [r0, #-180]!	; 0xffffff4c
 224:	4f2d2067 	svcmi	0x002d2067
 228:	68730030 	ldmdavs	r3!, {r4, r5}^
 22c:	2074726f 	rsbscs	r7, r4, pc, ror #4
 230:	00746e69 	rsbseq	r6, r4, r9, ror #28
 234:	4f495047 	svcmi	0x00495047
 238:	46415f78 			; <UNDEFINED> instruction: 0x46415f78
 23c:	54004852 	strpl	r4, [r0], #-2130	; 0xfffff7ae
 240:	5f784d49 	svcpl	0x00784d49
 244:	00315243 	eorseq	r5, r1, r3, asr #4
 248:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 24c:	3252435f 	subscc	r4, r2, #2080374785	; 0x7c000001
 250:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 254:	415f784f 	cmpmi	pc, pc, asr #16
 258:	004c5246 	subeq	r5, ip, r6, asr #4
 25c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
 260:	745f3233 	ldrbvc	r3, [pc], #-563	; 268 <.debug_str+0x268>
 264:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 268:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
 26c:	49540074 	ldmdbmi	r4, {r2, r4, r5, r6}^
 270:	435f784d 	cmpmi	pc, #5046272	; 0x4d0000
 274:	00524543 	subseq	r4, r2, r3, asr #10
 278:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 27c:	63206465 			; <UNDEFINED> instruction: 0x63206465
 280:	00726168 	rsbseq	r6, r2, r8, ror #2
 284:	4f495047 	svcmi	0x00495047
 288:	534f5f78 	movtpl	r5, #65400	; 0xff78
 28c:	44454550 	strbmi	r4, [r5], #-1360	; 0xfffffab0
 290:	49540052 	ldmdbmi	r4, {r1, r4, r6}^
 294:	455f784d 	ldrbmi	r7, [pc, #-2125]	; fffffa4f <main+0xfffffa4f>
 298:	Address 0x00000298 is out of bounds.


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
  1c:	00000084 	andeq	r0, r0, r4, lsl #1
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

