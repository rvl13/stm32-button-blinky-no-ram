
obj/timer_blinky_18.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	08000009 	stmdaeq	r0, {r0, r3}

08000008 <Reset_Handler>:
 8000008:	4c17      	ldr	r4, [pc, #92]	; (8000068 <Reset_Handler+0x60>)
 800000a:	6823      	ldr	r3, [r4, #0]
 800000c:	f043 0308 	orr.w	r3, r3, #8
 8000010:	6023      	str	r3, [r4, #0]
 8000012:	f104 0310 	add.w	r3, r4, #16
 8000016:	681a      	ldr	r2, [r3, #0]
 8000018:	f104 0310 	add.w	r3, r4, #16
 800001c:	f042 0204 	orr.w	r2, r2, #4
 8000020:	601a      	str	r2, [r3, #0]
 8000022:	4c12      	ldr	r4, [pc, #72]	; (800006c <Reset_Handler+0x64>)
 8000024:	f04f 5300 	mov.w	r3, #536870912	; 0x20000000
 8000028:	6023      	str	r3, [r4, #0]
 800002a:	f104 0324 	add.w	r3, r4, #36	; 0x24
 800002e:	f04f 7200 	mov.w	r2, #33554432	; 0x2000000
 8000032:	601a      	str	r2, [r3, #0]
 8000034:	4c0e      	ldr	r4, [pc, #56]	; (8000070 <Reset_Handler+0x68>)
 8000036:	f44f 657a 	mov.w	r5, #4000	; 0xfa0
 800003a:	f104 031c 	add.w	r3, r4, #28
 800003e:	2260      	movs	r2, #96	; 0x60
 8000040:	601a      	str	r2, [r3, #0]
 8000042:	f104 0328 	add.w	r3, r4, #40	; 0x28
 8000046:	601d      	str	r5, [r3, #0]
 8000048:	f104 032c 	add.w	r3, r4, #44	; 0x2c
 800004c:	601d      	str	r5, [r3, #0]
 800004e:	086b      	lsrs	r3, r5, #1
 8000050:	461d      	mov	r5, r3
 8000052:	f104 033c 	add.w	r3, r4, #60	; 0x3c
 8000056:	601d      	str	r5, [r3, #0]
 8000058:	f104 0320 	add.w	r3, r4, #32
 800005c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000060:	601a      	str	r2, [r3, #0]
 8000062:	2301      	movs	r3, #1
 8000064:	6023      	str	r3, [r4, #0]
 8000066:	e7fe      	b.n	8000066 <Reset_Handler+0x5e>
 8000068:	40023830 	andmi	r3, r2, r0, lsr r8
 800006c:	40020c00 	andmi	r0, r2, r0, lsl #24
 8000070:	40000800 	andmi	r0, r0, r0, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000001ad 	andeq	r0, r0, sp, lsr #3
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000001ac 	andeq	r0, r0, ip, lsr #3
  10:	0001a10c 	andeq	sl, r1, ip, lsl #2
  14:	00001b00 	andeq	r1, r0, r0, lsl #22
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00006c08 	andeq	r6, r0, r8, lsl #24
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000085 	andeq	r0, r0, r5, lsl #1
  2c:	83080102 	movwhi	r0, #33026	; 0x8102
  30:	02000000 	andeq	r0, r0, #0
  34:	020e0502 	andeq	r0, lr, #8388608	; 0x800000
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009107 	andeq	r9, r0, r7, lsl #2
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000198 	muleq	r0, r8, r1
  48:	00010003 	andeq	r0, r1, r3
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	38070402 	stmdacc	r7, {r1, sl}
  58:	02000001 	andeq	r0, r0, #1
  5c:	01930508 	orrseq	r0, r3, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00013307 	andeq	r3, r1, r7, lsl #6
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	3d070402 	cfstrscc	mvf0, [r7, #-8]
  74:	03000001 	movweq	r0, #1
  78:	00000102 	andeq	r0, r0, r2, lsl #2
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	002c0107 	eoreq	r0, ip, r7, lsl #2
  88:	12010000 	andne	r0, r1, #0
  8c:	00010a01 	andeq	r0, r1, r1, lsl #20
  90:	02230600 	eoreq	r0, r3, #0, 12
  94:	06000000 	streq	r0, [r0], -r0
  98:	0000022c 	andeq	r0, r0, ip, lsr #4
  9c:	017d0601 	cmneq	sp, r1, lsl #12
  a0:	06020000 	streq	r0, [r2], -r0
  a4:	00000071 	andeq	r0, r0, r1, ror r0
  a8:	00090603 	andeq	r0, r9, r3, lsl #12
  ac:	06040000 	streq	r0, [r4], -r0
  b0:	00000258 	andeq	r0, r0, r8, asr r2
  b4:	004d0605 	subeq	r0, sp, r5, lsl #12
  b8:	06060000 	streq	r0, [r6], -r0
  bc:	00000058 	andeq	r0, r0, r8, asr r0
  c0:	02400607 	subeq	r0, r0, #7340032	; 0x700000
  c4:	06080000 	streq	r0, [r8], -r0
  c8:	00000000 	andeq	r0, r0, r0
  cc:	00f70609 	rscseq	r0, r7, r9, lsl #12
  d0:	060a0000 	streq	r0, [sl], -r0
  d4:	000000bd 	strheq	r0, [r0], -sp
  d8:	00df060b 	sbcseq	r0, pc, fp, lsl #12
  dc:	060c0000 	streq	r0, [ip], -r0
  e0:	0000015f 	andeq	r0, r0, pc, asr r1
  e4:	0173060d 	cmneq	r3, sp, lsl #12
  e8:	060e0000 	streq	r0, [lr], -r0
  ec:	0000010b 	andeq	r0, r0, fp, lsl #2
  f0:	0115060f 	tsteq	r5, pc, lsl #12
  f4:	06100000 	ldreq	r0, [r0], -r0
  f8:	000000eb 	andeq	r0, r0, fp, ror #1
  fc:	012a0611 			; <UNDEFINED> instruction: 0x012a0611
 100:	06120000 	ldreq	r0, [r2], -r0
 104:	000000d5 	ldrdeq	r0, [r0], -r5
 108:	07050013 	smladeq	r5, r3, r0, r0
 10c:	00002c01 	andeq	r2, r0, r1, lsl #24
 110:	012b0100 			; <UNDEFINED> instruction: 0x012b0100
 114:	00000155 	andeq	r0, r0, r5, asr r1
 118:	0000a406 	andeq	sl, r0, r6, lsl #8
 11c:	b0060000 	andlt	r0, r6, r0
 120:	01000000 	mrseq	r0, (UNDEF: 0)
 124:	00024a06 	andeq	r4, r2, r6, lsl #20
 128:	87060200 	strhi	r0, [r6, -r0, lsl #4]
 12c:	03000001 	movweq	r0, #1
 130:	00016906 	andeq	r6, r1, r6, lsl #18
 134:	11060400 	tstne	r6, r0, lsl #8
 138:	05000000 	streq	r0, [r0, #-0]
 13c:	00014a06 	andeq	r4, r1, r6, lsl #20
 140:	1f060600 	svcne	0x00060600
 144:	07000001 	streq	r0, [r0, -r1]
 148:	00023506 	andeq	r3, r2, r6, lsl #10
 14c:	18060800 	stmdane	r6, {fp}
 150:	09000002 	stmdbeq	r0, {r1}
 154:	00770700 	rsbseq	r0, r7, r0, lsl #14
 158:	01650000 	cmneq	r5, r0
 15c:	70080000 	andvc	r0, r8, r0
 160:	00000000 	andeq	r0, r0, r0
 164:	007b0900 	rsbseq	r0, fp, r0, lsl #18
 168:	40010000 	andmi	r0, r1, r0
 16c:	0001550a 	andeq	r5, r1, sl, lsl #10
 170:	04030500 	streq	r0, [r3], #-1280	; 0xfffffb00
 174:	0a080000 	beq	20017c <vectors-0x7dffe88>
 178:	00000063 	andeq	r0, r0, r3, rrx
 17c:	081d4701 	ldmdaeq	sp, {r0, r8, r9, sl, lr}
 180:	6c080000 	stcvs	0, cr0, [r8], {-0}
 184:	01000000 	mrseq	r0, (UNDEF: 0)
 188:	0001aa9c 	muleq	r1, ip, sl
 18c:	00c60b00 	sbceq	r0, r6, r0, lsl #22
 190:	4a010000 	bmi	40198 <vectors-0x7fbfe6c>
 194:	0001aa18 	andeq	sl, r1, r8, lsl sl
 198:	0b540100 	bleq	15005a0 <vectors-0x6affa64>
 19c:	00000155 	andeq	r0, r0, r5, asr r1
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
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff58>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3dc>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <vectors-0x707d3a0>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	3e010405 	cdpcc	4, 0, cr0, cr1, cr5, {0}
  3c:	490b0b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp}
  40:	3b0b3a13 	blcc	2ce894 <vectors-0x7d31770>
  44:	010b390b 	tsteq	fp, fp, lsl #18
  48:	06000013 			; <UNDEFINED> instruction: 0x06000013
  4c:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
  50:	00000b1c 	andeq	r0, r0, ip, lsl fp
  54:	49010107 	stmdbmi	r1, {r0, r1, r2, r8}
  58:	00130113 	andseq	r0, r3, r3, lsl r1
  5c:	00210800 	eoreq	r0, r1, r0, lsl #16
  60:	0b2f1349 	bleq	bc4d8c <vectors-0x743b278>
  64:	34090000 	strcc	r0, [r9], #-0
  68:	3a0e0300 	bcc	380c70 <vectors-0x7c7f394>
  6c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  70:	3f13490b 	svccc	0x0013490b
  74:	00180219 	andseq	r0, r8, r9, lsl r2
  78:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
  7c:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  80:	0b3b0b3a 	bleq	ec2d70 <vectors-0x713d294>
  84:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  88:	06120111 			; <UNDEFINED> instruction: 0x06120111
  8c:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  90:	00130119 	andseq	r0, r3, r9, lsl r1
  94:	00340b00 	eorseq	r0, r4, r0, lsl #22
  98:	0b3a0e03 	bleq	e838ac <vectors-0x717c758>
  9c:	0b390b3b 	bleq	e42d90 <vectors-0x71bd274>
  a0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  a4:	0f0c0000 	svceq	0x000c0000
  a8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  ac:	00000013 	andeq	r0, r0, r3, lsl r0

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000008 	stmdaeq	r0, {r3}
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
  a0:	645f0000 	ldrbvs	r0, [pc], #-0	; a8 <vectors-0x7ffff5c>
  a4:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
  a8:	745f746c 	ldrbvc	r7, [pc], #-1132	; b0 <vectors-0x7ffff54>
  ac:	73657079 	cmnvc	r5, #121	; 0x79
  b0:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
  b4:	735f0000 	cmpvc	pc, #0
  b8:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
  bc:	00682e74 	rsbeq	r2, r8, r4, ror lr
  c0:	00000003 	andeq	r0, r0, r3
  c4:	05000105 	streq	r0, [r0, #-261]	; 0xfffffefb
  c8:	00000802 	andeq	r0, r0, r2, lsl #16
  cc:	00c70308 	sbceq	r0, r7, r8, lsl #6
  d0:	18140501 	ldmdane	r4, {r0, r8, sl}
  d4:	4b211705 	blmi	845cf0 <vectors-0x77ba314>
  d8:	05851405 	streq	r1, [r5, #1029]	; 0x405
  dc:	13052121 	movwne	r2, #20769	; 0x5121
  e0:	2e20053d 	mcrcs	5, 1, r0, cr0, cr13, {1}
  e4:	053f1405 	ldreq	r1, [pc, #-1029]!	; fffffce7 <_etext+0xf7fffc73>
  e8:	1305210f 	movwne	r2, #20751	; 0x510f
  ec:	2e20052f 	cfsh64cs	mvdx0, mvdx0, #31
  f0:	052f1305 	streq	r1, [pc, #-773]!	; fffffdf3 <_etext+0xf7fffd7f>
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
  30:	6b6e696c 	blvs	1b9a5e8 <vectors-0x6465a1c>
  34:	6f6e2d79 	svcvs	0x006e2d79
  38:	6d61722d 	sfmvs	f7, 2, [r1, #-180]!	; 0xffffff4c
  3c:	6d69745c 	cfstrdvs	mvd7, [r9, #-368]!	; 0xfffffe90
  40:	625f7265 	subsvs	r7, pc, #1342177286	; 0x50000006
  44:	6b6e696c 	blvs	1b9a5fc <vectors-0x6465a08>
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
  90:	6f687300 	svcvs	0x00687300
  94:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  98:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  9c:	2064656e 	rsbcs	r6, r4, lr, ror #10
  a0:	00746e69 	rsbseq	r6, r4, r9, ror #28
  a4:	4f495047 	svcmi	0x00495047
  a8:	4f4d5f78 	svcmi	0x004d5f78
  ac:	00524544 	subseq	r4, r2, r4, asr #10
  b0:	4f495047 	svcmi	0x00495047
  b4:	544f5f78 	strbpl	r5, [pc], #-3960	; bc <vectors-0x7ffff48>
  b8:	52455059 	subpl	r5, r5, #89	; 0x59
  bc:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  c0:	52415f78 	subpl	r5, r1, #120, 30	; 0x1e0
  c4:	65520052 	ldrbvs	r0, [r2, #-82]	; 0xffffffae
  c8:	526f5467 	rsbpl	r5, pc, #1728053248	; 0x67000000
  cc:	57646165 	strbpl	r6, [r4, -r5, ror #2]!
  d0:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
  d4:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  d8:	4d445f78 	stclmi	15, cr5, [r4, #-480]	; 0xfffffe20
  dc:	54005241 	strpl	r5, [r0], #-577	; 0xfffffdbf
  e0:	5f784d49 	svcpl	0x00784d49
  e4:	56525352 			; <UNDEFINED> instruction: 0x56525352
  e8:	54003144 	strpl	r3, [r0], #-324	; 0xfffffebc
  ec:	5f784d49 	svcpl	0x00784d49
  f0:	56525352 			; <UNDEFINED> instruction: 0x56525352
  f4:	54003244 	strpl	r3, [r0], #-580	; 0xfffffdbc
  f8:	5f784d49 	svcpl	0x00784d49
  fc:	00435350 	subeq	r5, r3, r0, asr r3
 100:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
 104:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
 108:	5400745f 	strpl	r7, [r0], #-1119	; 0xfffffba1
 10c:	5f784d49 	svcpl	0x00784d49
 110:	33524343 	cmpcc	r2, #201326593	; 0xc000001
 114:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 118:	43435f78 	movtmi	r5, #16248	; 0x3f78
 11c:	47003452 	smlsdmi	r0, r2, r4, r3
 120:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 124:	4b434c5f 	blmi	10d32a8 <vectors-0x6f2cd5c>
 128:	49540052 	ldmdbmi	r4, {r1, r4, r6}^
 12c:	445f784d 	ldrbmi	r7, [pc], #-2125	; 134 <vectors-0x7fffed0>
 130:	6c005243 	sfmvs	f5, 4, [r0], {67}	; 0x43
 134:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 138:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 13c:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 140:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 144:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 148:	50470074 	subpl	r0, r7, r4, ror r0
 14c:	5f784f49 	svcpl	0x00784f49
 150:	52525342 	subspl	r5, r2, #134217729	; 0x8000001
 154:	67655200 	strbvs	r5, [r5, -r0, lsl #4]!
 158:	65526f54 	ldrbvs	r6, [r2, #-3924]	; 0xfffff0ac
 15c:	54006461 	strpl	r6, [r0], #-1121	; 0xfffffb9f
 160:	5f784d49 	svcpl	0x00784d49
 164:	31524343 	cmpcc	r2, r3, asr #6
 168:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 16c:	495f784f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, fp, ip, sp, lr}^	; <UNPREDICTABLE>
 170:	54005244 	strpl	r5, [r0], #-580	; 0xfffffdbc
 174:	5f784d49 	svcpl	0x00784d49
 178:	32524343 	subscc	r4, r2, #201326593	; 0xc000001
 17c:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 180:	4d535f78 	ldclmi	15, cr5, [r3, #-480]	; 0xfffffe20
 184:	47005243 	strmi	r5, [r0, -r3, asr #4]
 188:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 18c:	5055505f 	subspl	r5, r5, pc, asr r0
 190:	6c005244 	sfmvs	f5, 4, [r0], {68}	; 0x44
 194:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 198:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 19c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 1a0:	63727300 	cmnvs	r2, #0, 6
 1a4:	69616d2f 	stmdbvs	r1!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
 1a8:	00632e6e 	rsbeq	r2, r3, lr, ror #28
 1ac:	20554e47 	subscs	r4, r5, r7, asr #28
 1b0:	20373143 	eorscs	r3, r7, r3, asr #2
 1b4:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
 1b8:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
 1bc:	30313230 	eorscc	r3, r1, r0, lsr r2
 1c0:	20343238 	eorscs	r3, r4, r8, lsr r2
 1c4:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
 1c8:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 1cc:	6d2d2029 	stcvs	0, cr2, [sp, #-164]!	; 0xffffff5c
 1d0:	3d757063 	ldclcc	0, cr7, [r5, #-396]!	; 0xfffffe74
 1d4:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
 1d8:	6d2d7865 	stcvs	8, cr7, [sp, #-404]!	; 0xfffffe6c
 1dc:	6d2d2034 	stcvs	0, cr2, [sp, #-208]!	; 0xffffff30
 1e0:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
 1e4:	6d2d2062 	stcvs	0, cr2, [sp, #-392]!	; 0xfffffe78
 1e8:	616f6c66 	cmnvs	pc, r6, ror #24
 1ec:	62612d74 	rsbvs	r2, r1, #116, 26	; 0x1d00
 1f0:	6f733d69 	svcvs	0x00733d69
 1f4:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	; 0xfffffe68
 1f8:	6372616d 	cmnvs	r2, #1073741851	; 0x4000001b
 1fc:	72613d68 	rsbvc	r3, r1, #104, 26	; 0x1a00
 200:	6537766d 	ldrvs	r7, [r7, #-1645]!	; 0xfffff993
 204:	2d206d2d 	stccs	13, cr6, [r0, #-180]!	; 0xffffff4c
 208:	4f2d2067 	svcmi	0x002d2067
 20c:	68730030 	ldmdavs	r3!, {r4, r5}^
 210:	2074726f 	rsbscs	r7, r4, pc, ror #4
 214:	00746e69 	rsbseq	r6, r4, r9, ror #28
 218:	4f495047 	svcmi	0x00495047
 21c:	46415f78 			; <UNDEFINED> instruction: 0x46415f78
 220:	54004852 	strpl	r4, [r0], #-2130	; 0xfffff7ae
 224:	5f784d49 	svcpl	0x00784d49
 228:	00315243 	eorseq	r5, r1, r3, asr #4
 22c:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 230:	3252435f 	subscc	r4, r2, #2080374785	; 0x7c000001
 234:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 238:	415f784f 	cmpmi	pc, pc, asr #16
 23c:	004c5246 	subeq	r5, ip, r6, asr #4
 240:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 244:	4543435f 	strbmi	r4, [r3, #-863]	; 0xfffffca1
 248:	50470052 	subpl	r0, r7, r2, asr r0
 24c:	5f784f49 	svcpl	0x00784f49
 250:	4550534f 	ldrbmi	r5, [r0, #-847]	; 0xfffffcb1
 254:	00524445 	subseq	r4, r2, r5, asr #8
 258:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 25c:	5247455f 	subpl	r4, r7, #398458880	; 0x17c00000
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2e0>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	72412055 	subvc	r2, r1, #85	; 0x55
   c:	6d45206d 	stclvs	0, cr2, [r5, #-436]	; 0xfffffe4c
  10:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  14:	54206465 	strtpl	r6, [r0], #-1125	; 0xfffffb9b
  18:	636c6f6f 	cmnvs	ip, #444	; 0x1bc
  1c:	6e696168 	powvsez	f6, f1, #0.0
  20:	2e303120 	rsfcssp	f3, f0, f0
  24:	30322d33 	eorscc	r2, r2, r3, lsr sp
  28:	312e3132 			; <UNDEFINED> instruction: 0x312e3132
  2c:	31202930 			; <UNDEFINED> instruction: 0x31202930
  30:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
  34:	30322031 	eorscc	r2, r2, r1, lsr r0
  38:	38303132 	ldmdacc	r0!, {r1, r4, r5, r8, ip, sp}
  3c:	28203432 	stmdacs	r0!, {r1, r4, r5, sl, ip, sp}
  40:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  44:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
	...

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


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000000c 	andeq	r0, r0, ip
  14:	00000000 	andeq	r0, r0, r0
  18:	08000008 	stmdaeq	r0, {r3}
  1c:	0000006c 	andeq	r0, r0, ip, rrx
