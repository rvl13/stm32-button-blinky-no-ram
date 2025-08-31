
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
   0:	4c13      	ldr	r4, [pc, #76]	; (50 <Reset_Handler+0x50>)
   2:	6825      	ldr	r5, [r4, #0]
   4:	f045 0308 	orr.w	r3, r5, #8
   8:	6023      	str	r3, [r4, #0]
   a:	3410      	adds	r4, #16
   c:	6825      	ldr	r5, [r4, #0]
   e:	f045 0304 	orr.w	r3, r5, #4
  12:	6023      	str	r3, [r4, #0]
  14:	4c0f      	ldr	r4, [pc, #60]	; (54 <Reset_Handler+0x54>)
  16:	f04f 5300 	mov.w	r3, #536870912	; 0x20000000
  1a:	6023      	str	r3, [r4, #0]
  1c:	3424      	adds	r4, #36	; 0x24
  1e:	f04f 7300 	mov.w	r3, #33554432	; 0x2000000
  22:	6023      	str	r3, [r4, #0]
  24:	4c0c      	ldr	r4, [pc, #48]	; (58 <Reset_Handler+0x58>)
  26:	2360      	movs	r3, #96	; 0x60
  28:	6023      	str	r3, [r4, #0]
  2a:	340c      	adds	r4, #12
  2c:	f44f 657a 	mov.w	r5, #4000	; 0xfa0
  30:	6025      	str	r5, [r4, #0]
  32:	3404      	adds	r4, #4
  34:	6025      	str	r5, [r4, #0]
  36:	086b      	lsrs	r3, r5, #1
  38:	461d      	mov	r5, r3
  3a:	3410      	adds	r4, #16
  3c:	6025      	str	r5, [r4, #0]
  3e:	3c1c      	subs	r4, #28
  40:	f44f 7380 	mov.w	r3, #256	; 0x100
  44:	6023      	str	r3, [r4, #0]
  46:	3c20      	subs	r4, #32
  48:	2301      	movs	r3, #1
  4a:	6023      	str	r3, [r4, #0]
  4c:	e7fe      	b.n	4c <Reset_Handler+0x4c>
  4e:	bf00      	nop
  50:	40023830 	andmi	r3, r2, r0, lsr r8
  54:	40020c00 	andmi	r0, r2, r0, lsl #24
  58:	4000081c 	andmi	r0, r0, ip, lsl r8

Disassembly of section .isr_vector:

00000000 <vectors>:
   0:	00000000 	andeq	r0, r0, r0
			0: R_ARM_ABS32	Reset_Handler

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000288 	andeq	r0, r0, r8, lsl #5
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000002d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
			c: R_ARM_ABS32	.debug_str
  10:	0003d80c 	andeq	sp, r3, ip, lsl #16
			11: R_ARM_ABS32	.debug_str
  14:	0003e300 	andeq	lr, r3, r0, lsl #6
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00005c00 	andeq	r5, r0, r0, lsl #24
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000022a 	andeq	r0, r0, sl, lsr #4
			28: R_ARM_ABS32	.debug_str
  2c:	fb080102 	blx	20043e <Reset_Handler+0x20043e>
			2f: R_ARM_ABS32	.debug_str
  30:	02000001 	andeq	r0, r0, #1
  34:	00580502 	subseq	r0, r8, r2, lsl #10
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	0002b307 	andeq	fp, r2, r7, lsl #6
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	000001a3 	andeq	r0, r0, r3, lsr #3
			44: R_ARM_ABS32	.debug_str
  48:	0000a503 	andeq	sl, r0, r3, lsl #10
			49: R_ARM_ABS32	.debug_str
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	60070402 	andvs	r0, r7, r2, lsl #8
			57: R_ARM_ABS32	.debug_str
  58:	02000003 	andeq	r0, r0, #3
  5c:	014c0508 	cmpeq	ip, r8, lsl #10
			5e: R_ARM_ABS32	.debug_str
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00024407 	andeq	r4, r2, r7, lsl #8
			65: R_ARM_ABS32	.debug_str
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	73070402 	movwvc	r0, #29698	; 0x7402
			73: R_ARM_ABS32	.debug_str
  74:	03000002 	movweq	r0, #2
  78:	0000025b 	andeq	r0, r0, fp, asr r2
			78: R_ARM_ABS32	.debug_str
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	002c0107 	eoreq	r0, ip, r7, lsl #2
  88:	12010000 	andne	r0, r1, #0
  8c:	00015e01 	andeq	r5, r1, r1, lsl #28
  90:	01700600 	cmneq	r0, r0, lsl #12
			92: R_ARM_ABS32	.debug_str
  94:	06000000 	streq	r0, [r0], -r0
  98:	00000129 	andeq	r0, r0, r9, lsr #2
			98: R_ARM_ABS32	.debug_str
  9c:	00620601 	rsbeq	r0, r2, r1, lsl #12
			9e: R_ARM_ABS32	.debug_str
  a0:	06020000 	streq	r0, [r2], -r0
  a4:	0000034d 	andeq	r0, r0, sp, asr #6
			a4: R_ARM_ABS32	.debug_str
  a8:	01ee0603 	mvneq	r0, r3, lsl #12
			aa: R_ARM_ABS32	.debug_str
  ac:	06040000 	streq	r0, [r4], -r0
  b0:	00000390 	muleq	r0, r0, r3
			b0: R_ARM_ABS32	.debug_str
  b4:	00c00605 	sbceq	r0, r0, r5, lsl #12
			b6: R_ARM_ABS32	.debug_str
  b8:	06060000 	streq	r0, [r6], -r0
  bc:	0000015a 	andeq	r0, r0, sl, asr r1
			bc: R_ARM_ABS32	.debug_str
  c0:	013f0607 	teqeq	pc, r7, lsl #12
			c2: R_ARM_ABS32	.debug_str
  c4:	06080000 	streq	r0, [r8], -r0
  c8:	00000332 	andeq	r0, r0, r2, lsr r3
			c8: R_ARM_ABS32	.debug_str
  cc:	01650609 	cmneq	r5, r9, lsl #12
			ce: R_ARM_ABS32	.debug_str
  d0:	060a0000 	streq	r0, [sl], -r0
  d4:	0000002a 	andeq	r0, r0, sl, lsr #32
			d4: R_ARM_ABS32	.debug_str
  d8:	041e060b 	ldreq	r0, [lr], #-1547	; 0xfffff9f5
			da: R_ARM_ABS32	.debug_str
  dc:	060c0000 	streq	r0, [ip], -r0
  e0:	0000010a 	andeq	r0, r0, sl, lsl #2
			e0: R_ARM_ABS32	.debug_str
  e4:	0215060d 	andseq	r0, r5, #13631488	; 0xd00000
			e6: R_ARM_ABS32	.debug_str
  e8:	060e0000 	streq	r0, [lr], -r0
  ec:	00000177 	andeq	r0, r0, r7, ror r1
			ec: R_ARM_ABS32	.debug_str
  f0:	03c2060f 	biceq	r0, r2, #15728640	; 0xf00000
			f2: R_ARM_ABS32	.debug_str
  f4:	06100000 	ldreq	r0, [r0], -r0
  f8:	000000cd 	andeq	r0, r0, sp, asr #1
			f8: R_ARM_ABS32	.debug_str
  fc:	01820611 	orreq	r0, r2, r1, lsl r6
			fe: R_ARM_ABS32	.debug_str
 100:	06120000 	ldreq	r0, [r2], -r0
 104:	0000018d 	andeq	r0, r0, sp, lsl #3
			104: R_ARM_ABS32	.debug_str
 108:	00770613 	rsbseq	r0, r7, r3, lsl r6
			10a: R_ARM_ABS32	.debug_str
 10c:	06140000 	ldreq	r0, [r4], -r0
 110:	000002a5 	andeq	r0, r0, r5, lsr #5
			110: R_ARM_ABS32	.debug_str
 114:	00850615 	addeq	r0, r5, r5, lsl r6
			116: R_ARM_ABS32	.debug_str
 118:	06160000 	ldreq	r0, [r6], -r0
 11c:	00000198 	muleq	r0, r8, r1
			11c: R_ARM_ABS32	.debug_str
 120:	02360617 	eorseq	r0, r6, #24117248	; 0x1700000
			122: R_ARM_ABS32	.debug_str
 124:	06180000 	ldreq	r0, [r8], -r0
 128:	0000039d 	muleq	r0, sp, r3
			128: R_ARM_ABS32	.debug_str
 12c:	004d0619 	subeq	r0, sp, r9, lsl r6
			12e: R_ARM_ABS32	.debug_str
 130:	061a0000 	ldreq	r0, [sl], -r0
 134:	000001ac 	andeq	r0, r0, ip, lsr #3
			134: R_ARM_ABS32	.debug_str
 138:	000b061b 	andeq	r0, fp, fp, lsl r6
			13a: R_ARM_ABS32	.debug_str
 13c:	061c0000 	ldreq	r0, [ip], -r0
 140:	000001b7 			; <UNDEFINED> instruction: 0x000001b7
			140: R_ARM_ABS32	.debug_str
 144:	0035061d 	eorseq	r0, r5, sp, lsl r6
			146: R_ARM_ABS32	.debug_str
 148:	061e0000 	ldreq	r0, [lr], -r0
 14c:	00000041 	andeq	r0, r0, r1, asr #32
			14c: R_ARM_ABS32	.debug_str
 150:	01c9061f 	biceq	r0, r9, pc, lsl r6
			152: R_ARM_ABS32	.debug_str
 154:	06200000 	strteq	r0, [r0], -r0
 158:	00000264 	andeq	r0, r0, r4, ror #4
			158: R_ARM_ABS32	.debug_str
 15c:	07050021 	streq	r0, [r5, -r1, lsr #32]
 160:	00002c01 	andeq	r2, r0, r1, lsl #24
 164:	01390100 	teqeq	r9, r0, lsl #2
 168:	000001e5 	andeq	r0, r0, r5, ror #3
 16c:	00009306 	andeq	r9, r0, r6, lsl #6
			16d: R_ARM_ABS32	.debug_str
 170:	9c060000 	stcls	0, cr0, [r6], {-0}
			173: R_ARM_ABS32	.debug_str
 174:	01000000 	mrseq	r0, (UNDEF: 0)
 178:	00013506 	andeq	r3, r1, r6, lsl #10
			179: R_ARM_ABS32	.debug_str
 17c:	bf060200 	svclt	0x00060200
			17f: R_ARM_ABS32	.debug_str
 180:	03000001 	movweq	r0, #1
 184:	0000b806 	andeq	fp, r0, r6, lsl #16
			185: R_ARM_ABS32	.debug_str
 188:	72060400 	andvc	r0, r6, #0, 8
			18b: R_ARM_ABS32	.debug_str
 18c:	05000003 	streq	r0, [r0, #-3]
 190:	00001406 	andeq	r1, r0, r6, lsl #8
			191: R_ARM_ABS32	.debug_str
 194:	1f060600 	svcne	0x00060600
			197: R_ARM_ABS32	.debug_str
 198:	07000000 	streq	r0, [r0, -r0]
 19c:	00038606 	andeq	r8, r3, r6, lsl #12
			19d: R_ARM_ABS32	.debug_str
 1a0:	01060800 	tsteq	r6, r0, lsl #16
			1a3: R_ARM_ABS32	.debug_str
 1a4:	09000001 	stmdbeq	r0, {r0}
 1a8:	00041506 	andeq	r1, r4, r6, lsl #10
			1a9: R_ARM_ABS32	.debug_str
 1ac:	21060a00 	tstcs	r6, r0, lsl #20
			1af: R_ARM_ABS32	.debug_str
 1b0:	0b000002 	bleq	1c0 <.debug_info+0x1c0>
 1b4:	00028006 	andeq	r8, r2, r6
			1b5: R_ARM_ABS32	.debug_str
 1b8:	d9060c00 	stmdble	r6, {sl, fp}
			1bb: R_ARM_ABS32	.debug_str
 1bc:	0d000000 	stceq	0, cr0, [r0, #-0]
 1c0:	0000e306 	andeq	lr, r0, r6, lsl #6
			1c1: R_ARM_ABS32	.debug_str
 1c4:	ed060e00 	stc	14, cr0, [r6, #-0]
			1c7: R_ARM_ABS32	.debug_str
 1c8:	0f000000 	svceq	0x00000000
 1cc:	0000f706 	andeq	pc, r0, r6, lsl #14
			1cd: R_ARM_ABS32	.debug_str
 1d0:	6b061000 	blvs	1841d8 <Reset_Handler+0x1841d8>
			1d3: R_ARM_ABS32	.debug_str
 1d4:	11000000 	mrsne	r0, (UNDEF: 0)
 1d8:	00012006 	andeq	r2, r1, r6
			1d9: R_ARM_ABS32	.debug_str
 1dc:	ab061200 	blge	1849e4 <Reset_Handler+0x1849e4>
			1df: R_ARM_ABS32	.debug_str
 1e0:	13000003 	movwne	r0, #3
 1e4:	01070500 	tsteq	r7, r0, lsl #10
 1e8:	0000002c 	andeq	r0, r0, ip, lsr #32
 1ec:	30015201 	andcc	r5, r1, r1, lsl #4
 1f0:	06000002 	streq	r0, [r0], -r2
 1f4:	00000209 	andeq	r0, r0, r9, lsl #4
			1f4: R_ARM_ABS32	.debug_str
 1f8:	03b50600 			; <UNDEFINED> instruction: 0x03b50600
			1fa: R_ARM_ABS32	.debug_str
 1fc:	06010000 	streq	r0, [r1], -r0
 200:	0000033f 	andeq	r0, r0, pc, lsr r3
			200: R_ARM_ABS32	.debug_str
 204:	01d30602 	bicseq	r0, r3, r2, lsl #12
			206: R_ARM_ABS32	.debug_str
 208:	06030000 	streq	r0, [r3], -r0
 20c:	000003ce 	andeq	r0, r0, lr, asr #7
			20c: R_ARM_ABS32	.debug_str
 210:	01160604 	tsteq	r6, r4, lsl #12
			212: R_ARM_ABS32	.debug_str
 214:	06050000 	streq	r0, [r5], -r0
 218:	0000037b 	andeq	r0, r0, fp, ror r3
			218: R_ARM_ABS32	.debug_str
 21c:	03550606 	cmpeq	r5, #6291456	; 0x600000
			21e: R_ARM_ABS32	.debug_str
 220:	06070000 	streq	r0, [r7], -r0
 224:	00000000 	andeq	r0, r0, r0
			224: R_ARM_ABS32	.debug_str
 228:	029a0608 	addseq	r0, sl, #8, 12	; 0x800000
			22a: R_ARM_ABS32	.debug_str
 22c:	00090000 	andeq	r0, r9, r0
 230:	00007707 	andeq	r7, r0, r7, lsl #14
 234:	00024000 	andeq	r4, r2, r0
 238:	00700800 	rsbseq	r0, r0, r0, lsl #16
 23c:	00000000 	andeq	r0, r0, r0
 240:	0000b009 	andeq	fp, r0, r9
			241: R_ARM_ABS32	.debug_str
 244:	0a670100 	beq	19c064c <Reset_Handler+0x19c064c>
 248:	00000230 	andeq	r0, r0, r0, lsr r2
 24c:	00000305 	andeq	r0, r0, r5, lsl #6
			24e: R_ARM_ABS32	vectors
 250:	8c0a0000 	stchi	0, cr0, [sl], {-0}
			253: R_ARM_ABS32	.debug_str
 254:	01000002 	tsteq	r0, r2
 258:	00001d6e 	andeq	r1, r0, lr, ror #26
			25a: R_ARM_ABS32	.text
 25c:	005c0000 	subseq	r0, ip, r0
 260:	9c010000 	stcls	0, cr0, [r1], {-0}
 264:	00000285 	andeq	r0, r0, r5, lsl #5
 268:	0001df0b 	andeq	sp, r1, fp, lsl #30
			269: R_ARM_ABS32	.debug_str
 26c:	18710100 	ldmdane	r1!, {r8}^
 270:	00000285 	andeq	r0, r0, r5, lsl #5
 274:	c60b5401 	strgt	r5, [fp], -r1, lsl #8
			277: R_ARM_ABS32	.debug_str
 278:	01000002 	tsteq	r0, r2
 27c:	00771772 	rsbseq	r1, r7, r2, ror r7
 280:	55010000 	strpl	r0, [r1, #-0]
 284:	77040c00 	strvc	r0, [r4, -r0, lsl #24]
 288:	00000000 	andeq	r0, r0, r0

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
  14:	0000005c 	andeq	r0, r0, ip, asr r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000127 	andeq	r0, r0, r7, lsr #2
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
  cc:	00ee0300 	rsceq	r0, lr, r0, lsl #6
  d0:	18140501 	ldmdane	r4, {r0, r8, sl}
  d4:	05210f05 	streq	r0, [r1, #-3845]!	; 0xfffff0fb
  d8:	15052121 	strne	r2, [r5, #-289]	; 0xfffffedf
  dc:	2314052e 	tstcs	r4, #192937984	; 0xb800000
  e0:	05220f05 	streq	r0, [r2, #-3845]!	; 0xfffff0fb
  e4:	15052121 	strne	r2, [r5, #-289]	; 0xfffffedf
  e8:	2514052e 	ldrcs	r0, [r4, #-1326]	; 0xfffffad2
  ec:	05211505 	streq	r1, [r1, #-1285]!	; 0xfffffafb
  f0:	15053d14 	strne	r3, [r5, #-3348]	; 0xfffff2ec
  f4:	40140521 	andsmi	r0, r4, r1, lsr #10
  f8:	05211505 	streq	r1, [r1, #-1285]!	; 0xfffffafb
  fc:	0f053114 	svceq	0x00053114
 100:	2f150521 	svccs	0x00150521
 104:	05231405 	streq	r1, [r3, #-1029]!	; 0xfffffbfb
 108:	0f052115 	svceq	0x00052115
 10c:	2f140523 	svccs	0x00140523
 110:	05211505 	streq	r1, [r1, #-1285]!	; 0xfffffafb
 114:	15052314 	strne	r2, [r5, #-788]	; 0xfffffcec
 118:	3f140521 	svccc	0x00140521
 11c:	05211505 	streq	r1, [r1, #-1285]!	; 0xfffffafb
 120:	0402000b 	streq	r0, [r2], #-11
 124:	08023101 	stmdaeq	r2, {r0, r8, ip, sp}
 128:	Address 0x00000128 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	4f495047 	svcmi	0x00495047
   4:	46415f78 			; <UNDEFINED> instruction: 0x46415f78
   8:	52004c52 	andpl	r4, r0, #20992	; 0x5200
   c:	425f4343 	subsmi	r4, pc, #201326593	; 0xc000001
  10:	00524344 	subseq	r4, r2, r4, asr #6
  14:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
  18:	4d43435f 	stclmi	3, cr4, [r3, #-380]	; 0xfffffe84
  1c:	54003152 	strpl	r3, [r0], #-338	; 0xfffffeae
  20:	5f784d49 	svcpl	0x00784d49
  24:	524d4343 	subpl	r4, sp, #201326593	; 0xc000001
  28:	43520032 	cmpmi	r2, #50	; 0x32
  2c:	53525f43 	cmppl	r2, #268	; 0x10c
  30:	33445652 	movtcc	r5, #18002	; 0x4652
  34:	43435200 	movtmi	r5, #12800	; 0x3200
  38:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
  3c:	30314456 	eorscc	r4, r1, r6, asr r4
  40:	43435200 	movtmi	r5, #12800	; 0x3200
  44:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
  48:	31314456 	teqcc	r1, r6, asr r4
  4c:	43435200 	movtmi	r5, #12800	; 0x3200
  50:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
  54:	00384456 	eorseq	r4, r8, r6, asr r4
  58:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
  5c:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
  60:	43520074 	cmpmi	r2, #116	; 0x74
  64:	46435f43 	strbmi	r5, [r3], -r3, asr #30
  68:	54005247 	strpl	r5, [r0], #-583	; 0xfffffdb9
  6c:	5f784d49 	svcpl	0x00784d49
  70:	56525352 			; <UNDEFINED> instruction: 0x56525352
  74:	52003244 	andpl	r3, r0, #68, 4	; 0x40000004
  78:	415f4343 	cmpmi	pc, r3, asr #6
  7c:	4c314248 	lfmmi	f4, 4, [r1], #-288	; 0xfffffee0
  80:	524e4550 	subpl	r4, lr, #80, 10	; 0x14000000
  84:	43435200 	movtmi	r5, #12800	; 0x3200
  88:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
  8c:	45504c33 	ldrbmi	r4, [r0, #-3123]	; 0xfffff3cd
  90:	5400524e 	strpl	r5, [r0], #-590	; 0xfffffdb2
  94:	5f784d49 	svcpl	0x00784d49
  98:	00315243 	eorseq	r5, r1, r3, asr #4
  9c:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
  a0:	3252435f 	subscc	r4, r2, #2080374785	; 0x7c000001
  a4:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff1ac <Reset_Handler+0xfffff1ac>
  a8:	33746e69 	cmncc	r4, #1680	; 0x690
  ac:	00745f32 	rsbseq	r5, r4, r2, lsr pc
  b0:	74636576 	strbtvc	r6, [r3], #-1398	; 0xfffffa8a
  b4:	0073726f 	rsbseq	r7, r3, pc, ror #4
  b8:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
  bc:	0052535f 	subseq	r5, r2, pc, asr r3
  c0:	5f434352 	svcpl	0x00434352
  c4:	33424841 	movtcc	r4, #10305	; 0x2841
  c8:	52545352 	subspl	r5, r4, #1207959553	; 0x48000001
  cc:	43435200 	movtmi	r5, #12800	; 0x3200
  d0:	4250415f 	subsmi	r4, r0, #-1073741801	; 0xc0000017
  d4:	524e4532 	subpl	r4, lr, #209715200	; 0xc800000
  d8:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  dc:	43435f78 	movtmi	r5, #16248	; 0x3f78
  e0:	54003152 	strpl	r3, [r0], #-338	; 0xfffffeae
  e4:	5f784d49 	svcpl	0x00784d49
  e8:	32524343 	subscc	r4, r2, #201326593	; 0xc000001
  ec:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  f0:	43435f78 	movtmi	r5, #16248	; 0x3f78
  f4:	54003352 	strpl	r3, [r0], #-850	; 0xfffffcae
  f8:	5f784d49 	svcpl	0x00784d49
  fc:	34524343 	ldrbcc	r4, [r2], #-835	; 0xfffffcbd
 100:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 104:	4e435f78 	mcrmi	15, 2, r5, cr3, cr8, {3}
 108:	43520054 	cmpmi	r2, #84	; 0x54
 10c:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
 110:	4e453242 	cdpmi	2, 4, cr3, cr5, cr2, {2}
 114:	50470052 	subpl	r0, r7, r2, asr r0
 118:	5f784f49 	svcpl	0x00784f49
 11c:	0052444f 	subseq	r4, r2, pc, asr #8
 120:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 124:	5243445f 	subpl	r4, r3, #1593835520	; 0x5f000000
 128:	43435200 	movtmi	r5, #12800	; 0x3200
 12c:	4c4c505f 	mcrrmi	0, 5, r5, ip, cr15
 130:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
 134:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 138:	4d535f78 	ldclmi	15, cr5, [r3, #-480]	; 0xfffffe20
 13c:	52005243 	andpl	r5, r0, #805306372	; 0x30000004
 140:	415f4343 	cmpmi	pc, r3, asr #6
 144:	52314250 	eorspl	r4, r1, #80, 4
 148:	00525453 	subseq	r5, r2, r3, asr r4
 14c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 150:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
 154:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
 158:	43520074 	cmpmi	r2, #116	; 0x74
 15c:	53525f43 	cmppl	r2, #268	; 0x10c
 160:	31445652 	cmpcc	r4, r2, asr r6
 164:	43435200 	movtmi	r5, #12800	; 0x3200
 168:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
 16c:	00324456 	eorseq	r4, r2, r6, asr r4
 170:	5f434352 	svcpl	0x00434352
 174:	52005243 	andpl	r5, r0, #805306372	; 0x30000004
 178:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 17c:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 180:	43520034 	cmpmi	r2, #52	; 0x34
 184:	53525f43 	cmppl	r2, #268	; 0x10c
 188:	35445652 	strbcc	r5, [r4, #-1618]	; 0xfffff9ae
 18c:	43435200 	movtmi	r5, #12800	; 0x3200
 190:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
 194:	00364456 	eorseq	r4, r6, r6, asr r4
 198:	5f434352 	svcpl	0x00434352
 19c:	56525352 			; <UNDEFINED> instruction: 0x56525352
 1a0:	6c003744 	stcvs	7, cr3, [r0], {68}	; 0x44
 1a4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 1a8:	00746e69 	rsbseq	r6, r4, r9, ror #28
 1ac:	5f434352 	svcpl	0x00434352
 1b0:	56525352 			; <UNDEFINED> instruction: 0x56525352
 1b4:	52003944 	andpl	r3, r0, #68, 18	; 0x110000
 1b8:	435f4343 	cmpmi	pc, #201326593	; 0xc000001
 1bc:	54005253 	strpl	r5, [r0], #-595	; 0xfffffdad
 1c0:	5f784d49 	svcpl	0x00784d49
 1c4:	52454944 	subpl	r4, r5, #68, 18	; 0x110000
 1c8:	43435200 	movtmi	r5, #12800	; 0x3200
 1cc:	4353535f 	cmpmi	r3, #2080374785	; 0x7c000001
 1d0:	47005247 	strmi	r5, [r0, -r7, asr #4]
 1d4:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 1d8:	5055505f 	subspl	r5, r5, pc, asr r0
 1dc:	52005244 	andpl	r5, r0, #68, 4	; 0x40000004
 1e0:	6f546765 	svcvs	0x00546765
 1e4:	64616552 	strbtvs	r6, [r1], #-1362	; 0xfffffaae
 1e8:	74697257 	strbtvc	r7, [r9], #-599	; 0xfffffda9
 1ec:	43520065 	cmpmi	r2, #101	; 0x65
 1f0:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
 1f4:	53523142 	cmppl	r2, #-2147483632	; 0x80000010
 1f8:	75005254 	strvc	r5, [r0, #-596]	; 0xfffffdac
 1fc:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
 200:	2064656e 	rsbcs	r6, r4, lr, ror #10
 204:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
 208:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 20c:	4d5f784f 	ldclmi	8, cr7, [pc, #-316]	; d8 <.debug_str+0xd8>
 210:	5245444f 	subpl	r4, r5, #1325400064	; 0x4f000000
 214:	43435200 	movtmi	r5, #12800	; 0x3200
 218:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 21c:	524e4533 	subpl	r4, lr, #213909504	; 0xcc00000
 220:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 224:	52415f78 	subpl	r5, r1, #120, 30	; 0x1e0
 228:	69730052 	ldmdbvs	r3!, {r1, r4, r6}^
 22c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 230:	61686320 	cmnvs	r8, r0, lsr #6
 234:	43520072 	cmpmi	r2, #114	; 0x72
 238:	50415f43 	subpl	r5, r1, r3, asr #30
 23c:	504c3142 	subpl	r3, ip, r2, asr #2
 240:	00524e45 	subseq	r4, r2, r5, asr #28
 244:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 248:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
 24c:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
 250:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 254:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
 258:	7500746e 	strvc	r7, [r0, #-1134]	; 0xfffffb92
 25c:	33746e69 	cmncc	r4, #1680	; 0x690
 260:	00745f32 	rsbseq	r5, r4, r2, lsr pc
 264:	5f434352 	svcpl	0x00434352
 268:	494c4c50 	stmdbmi	ip, {r4, r6, sl, fp, lr}^
 26c:	46435332 			; <UNDEFINED> instruction: 0x46435332
 270:	75005247 	strvc	r5, [r0, #-583]	; 0xfffffdb9
 274:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
 278:	2064656e 	rsbcs	r6, r4, lr, ror #10
 27c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 280:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 284:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
 288:	00314456 	eorseq	r4, r1, r6, asr r4
 28c:	65736552 	ldrbvs	r6, [r3, #-1362]!	; 0xfffffaae
 290:	61485f74 	hvcvs	34292	; 0x85f4
 294:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 298:	50470072 	subpl	r0, r7, r2, ror r0
 29c:	5f784f49 	svcpl	0x00784f49
 2a0:	48524641 	ldmdami	r2, {r0, r6, r9, sl, lr}^
 2a4:	43435200 	movtmi	r5, #12800	; 0x3200
 2a8:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 2ac:	45504c32 	ldrbmi	r4, [r0, #-3122]	; 0xfffff3ce
 2b0:	7300524e 	movwvc	r5, #590	; 0x24e
 2b4:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 2b8:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 2bc:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 2c0:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 2c4:	65520074 	ldrbvs	r0, [r2, #-116]	; 0xffffff8c
 2c8:	526f5467 	rsbpl	r5, pc, #1728053248	; 0x67000000
 2cc:	00646165 	rsbeq	r6, r4, r5, ror #2
 2d0:	20554e47 	subscs	r4, r5, r7, asr #28
 2d4:	20373143 	eorscs	r3, r7, r3, asr #2
 2d8:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
 2dc:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
 2e0:	30313230 	eorscc	r3, r1, r0, lsr r2
 2e4:	20343238 	eorscs	r3, r4, r8, lsr r2
 2e8:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
 2ec:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 2f0:	6d2d2029 	stcvs	0, cr2, [sp, #-164]!	; 0xffffff5c
 2f4:	3d757063 	ldclcc	0, cr7, [r5, #-396]!	; 0xfffffe74
 2f8:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
 2fc:	6d2d7865 	stcvs	8, cr7, [sp, #-404]!	; 0xfffffe6c
 300:	6d2d2034 	stcvs	0, cr2, [sp, #-208]!	; 0xffffff30
 304:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
 308:	6d2d2062 	stcvs	0, cr2, [sp, #-392]!	; 0xfffffe78
 30c:	616f6c66 	cmnvs	pc, r6, ror #24
 310:	62612d74 	rsbvs	r2, r1, #116, 26	; 0x1d00
 314:	6f733d69 	svcvs	0x00733d69
 318:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	; 0xfffffe68
 31c:	6372616d 	cmnvs	r2, #1073741851	; 0x4000001b
 320:	72613d68 	rsbvc	r3, r1, #104, 26	; 0x1a00
 324:	6537766d 	ldrvs	r7, [r7, #-1645]!	; 0xfffff993
 328:	2d206d2d 	stccs	13, cr6, [r0, #-180]!	; 0xffffff4c
 32c:	4f2d2067 	svcmi	0x002d2067
 330:	43520030 	cmpmi	r2, #48	; 0x30
 334:	50415f43 	subpl	r5, r1, r3, asr #30
 338:	53523242 	cmppl	r2, #536870916	; 0x20000004
 33c:	47005254 	smlsdmi	r0, r4, r2, r5
 340:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 344:	50534f5f 	subspl	r4, r3, pc, asr pc
 348:	52444545 	subpl	r4, r4, #289406976	; 0x11400000
 34c:	43435200 	movtmi	r5, #12800	; 0x3200
 350:	5249435f 	subpl	r4, r9, #2080374785	; 0x7c000001
 354:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 358:	4c5f784f 	mrrcmi	8, 4, r7, pc, cr15	; <UNPREDICTABLE>
 35c:	00524b43 	subseq	r4, r2, r3, asr #22
 360:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 364:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 368:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 36c:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 370:	49540074 	ldmdbmi	r4, {r2, r4, r5, r6}^
 374:	455f784d 	ldrbmi	r7, [pc, #-2125]	; fffffb2f <Reset_Handler+0xfffffb2f>
 378:	47005247 	strmi	r5, [r0, -r7, asr #4]
 37c:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 380:	5253425f 	subspl	r4, r3, #-268435451	; 0xf0000005
 384:	49540052 	ldmdbmi	r4, {r1, r4, r6}^
 388:	435f784d 	cmpmi	pc, #5046272	; 0x4d0000
 38c:	00524543 	subseq	r4, r2, r3, asr #10
 390:	5f434352 	svcpl	0x00434352
 394:	32424841 	subcc	r4, r2, #4259840	; 0x410000
 398:	52545352 	subspl	r5, r4, #1207959553	; 0x48000001
 39c:	43435200 	movtmi	r5, #12800	; 0x3200
 3a0:	4250415f 	subsmi	r4, r0, #-1073741801	; 0xc0000017
 3a4:	45504c32 	ldrbmi	r4, [r0, #-3122]	; 0xfffff3ce
 3a8:	5400524e 	strpl	r5, [r0], #-590	; 0xfffffdb2
 3ac:	5f784d49 	svcpl	0x00784d49
 3b0:	52414d44 	subpl	r4, r1, #68, 26	; 0x1100
 3b4:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 3b8:	4f5f784f 	svcmi	0x005f784f
 3bc:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
 3c0:	43520052 	cmpmi	r2, #82	; 0x52
 3c4:	50415f43 	subpl	r5, r1, r3, asr #30
 3c8:	4e453142 	dvfmism	f3, f5, f2
 3cc:	50470052 	subpl	r0, r7, r2, asr r0
 3d0:	5f784f49 	svcpl	0x00784f49
 3d4:	00524449 	subseq	r4, r2, r9, asr #8
 3d8:	2f637273 	svccs	0x00637273
 3dc:	6e69616d 	powvsez	f6, f1, #5.0
 3e0:	4500632e 	strmi	r6, [r0, #-814]	; 0xfffffcd2
 3e4:	736f5c3a 	cmnvc	pc, #14848	; 0x3a00
 3e8:	74735c73 	ldrbtvc	r5, [r3], #-3187	; 0xfffff38d
 3ec:	2d32336d 	ldccs	3, cr3, [r2, #-436]!	; 0xfffffe4c
 3f0:	74747562 	ldrbtvc	r7, [r4], #-1378	; 0xfffffa9e
 3f4:	622d6e6f 	eorvs	r6, sp, #1776	; 0x6f0
 3f8:	6b6e696c 	blvs	1b9a9b0 <Reset_Handler+0x1b9a9b0>
 3fc:	6f6e2d79 	svcvs	0x006e2d79
 400:	6d61722d 	sfmvs	f7, 2, [r1, #-180]!	; 0xffffff4c
 404:	6d69745c 	cfstrdvs	mvd7, [r9, #-368]!	; 0xfffffe90
 408:	625f7265 	subsvs	r7, pc, #1342177286	; 0x50000006
 40c:	6b6e696c 	blvs	1b9a9c4 <Reset_Handler+0x1b9a9c4>
 410:	39315f79 	ldmdbcc	r1!, {r0, r3, r4, r5, r6, r8, r9, sl, fp, ip, lr}
 414:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 418:	53505f78 	cmppl	r0, #120, 30	; 0x1e0
 41c:	43520043 	cmpmi	r2, #67	; 0x43
 420:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
 424:	4e453142 	dvfmism	f3, f5, f2
 428:	Address 0x00000428 is out of bounds.


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
  1c:	0000005c 	andeq	r0, r0, ip, asr r0

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

