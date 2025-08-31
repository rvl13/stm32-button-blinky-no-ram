
obj/timer_blinky_19.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	08000009 	stmdaeq	r0, {r0, r3}

08000008 <Reset_Handler>:
 8000008:	4c13      	ldr	r4, [pc, #76]	; (8000058 <Reset_Handler+0x50>)
 800000a:	6825      	ldr	r5, [r4, #0]
 800000c:	f045 0308 	orr.w	r3, r5, #8
 8000010:	6023      	str	r3, [r4, #0]
 8000012:	3410      	adds	r4, #16
 8000014:	6825      	ldr	r5, [r4, #0]
 8000016:	f045 0304 	orr.w	r3, r5, #4
 800001a:	6023      	str	r3, [r4, #0]
 800001c:	4c0f      	ldr	r4, [pc, #60]	; (800005c <Reset_Handler+0x54>)
 800001e:	f04f 5300 	mov.w	r3, #536870912	; 0x20000000
 8000022:	6023      	str	r3, [r4, #0]
 8000024:	3424      	adds	r4, #36	; 0x24
 8000026:	f04f 7300 	mov.w	r3, #33554432	; 0x2000000
 800002a:	6023      	str	r3, [r4, #0]
 800002c:	4c0c      	ldr	r4, [pc, #48]	; (8000060 <Reset_Handler+0x58>)
 800002e:	2360      	movs	r3, #96	; 0x60
 8000030:	6023      	str	r3, [r4, #0]
 8000032:	340c      	adds	r4, #12
 8000034:	f44f 657a 	mov.w	r5, #4000	; 0xfa0
 8000038:	6025      	str	r5, [r4, #0]
 800003a:	3404      	adds	r4, #4
 800003c:	6025      	str	r5, [r4, #0]
 800003e:	086b      	lsrs	r3, r5, #1
 8000040:	461d      	mov	r5, r3
 8000042:	3410      	adds	r4, #16
 8000044:	6025      	str	r5, [r4, #0]
 8000046:	3c1c      	subs	r4, #28
 8000048:	f44f 7380 	mov.w	r3, #256	; 0x100
 800004c:	6023      	str	r3, [r4, #0]
 800004e:	3c20      	subs	r4, #32
 8000050:	2301      	movs	r3, #1
 8000052:	6023      	str	r3, [r4, #0]
 8000054:	e7fe      	b.n	8000054 <Reset_Handler+0x4c>
 8000056:	bf00      	nop
 8000058:	40023830 	andmi	r3, r2, r0, lsr r8
 800005c:	40020c00 	andmi	r0, r2, r0, lsl #24
 8000060:	4000081c 	andmi	r0, r0, ip, lsl r8

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000288 	andeq	r0, r0, r8, lsl #5
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000002a5 	andeq	r0, r0, r5, lsr #5
  10:	00039b0c 	andeq	r9, r3, ip, lsl #22
  14:	0003a600 	andeq	sl, r3, r0, lsl #12
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00005c08 	andeq	r5, r0, r8, lsl #24
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	000001f4 	strdeq	r0, [r0], -r4
  2c:	f2080102 	vrhadd.s8	d0, d8, d2
  30:	02000001 	andeq	r0, r0, #1
  34:	00580502 	subseq	r0, r8, r2, lsl #10
  38:	02020000 	andeq	r0, r2, #0
  3c:	00028807 	andeq	r8, r2, r7, lsl #16
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000151 	andeq	r0, r0, r1, asr r1
  48:	0000a503 	andeq	sl, r0, r3, lsl #10
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	34070402 	strcc	r0, [r7], #-1026	; 0xfffffbfe
  58:	02000002 	andeq	r0, r0, #2
  5c:	014c0508 	cmpeq	ip, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00022f07 	andeq	r2, r2, r7, lsl #30
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	39070402 	stmdbcc	r7, {r1, sl}
  74:	03000002 	movweq	r0, #2
  78:	000000a7 	andeq	r0, r0, r7, lsr #1
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	002c0107 	eoreq	r0, ip, r7, lsl #2
  88:	12010000 	andne	r0, r1, #0
  8c:	00015e01 	andeq	r5, r1, r1, lsl #28
  90:	01700600 	cmneq	r0, r0, lsl #12
  94:	06000000 	streq	r0, [r0], -r0
  98:	00000129 	andeq	r0, r0, r9, lsr #2
  9c:	00620601 	rsbeq	r0, r2, r1, lsl #12
  a0:	06020000 	streq	r0, [r2], -r0
  a4:	00000322 	andeq	r0, r0, r2, lsr #6
  a8:	01e50603 	mvneq	r0, r3, lsl #12
  ac:	06040000 	streq	r0, [r4], -r0
  b0:	00000353 	andeq	r0, r0, r3, asr r3
  b4:	00c00605 	sbceq	r0, r0, r5, lsl #12
  b8:	06060000 	streq	r0, [r6], -r0
  bc:	0000015a 	andeq	r0, r0, sl, asr r1
  c0:	013f0607 	teqeq	pc, r7, lsl #12
  c4:	06080000 	streq	r0, [r8], -r0
  c8:	00000307 	andeq	r0, r0, r7, lsl #6
  cc:	01650609 	cmneq	r5, r9, lsl #12
  d0:	060a0000 	streq	r0, [sl], -r0
  d4:	0000002a 	andeq	r0, r0, sl, lsr #32
  d8:	03e1060b 	mvneq	r0, #11534336	; 0xb00000
  dc:	060c0000 	streq	r0, [ip], -r0
  e0:	0000010a 	andeq	r0, r0, sl, lsl #2
  e4:	020c060d 	andeq	r0, ip, #13631488	; 0xd00000
  e8:	060e0000 	streq	r0, [lr], -r0
  ec:	00000177 	andeq	r0, r0, r7, ror r1
  f0:	0385060f 	orreq	r0, r5, #15728640	; 0xf00000
  f4:	06100000 	ldreq	r0, [r0], -r0
  f8:	000000cd 	andeq	r0, r0, sp, asr #1
  fc:	01820611 	orreq	r0, r2, r1, lsl r6
 100:	06120000 	ldreq	r0, [r2], -r0
 104:	0000018d 	andeq	r0, r0, sp, lsl #3
 108:	00770613 	rsbseq	r0, r7, r3, lsl r6
 10c:	06140000 	ldreq	r0, [r4], -r0
 110:	0000027a 	andeq	r0, r0, sl, ror r2
 114:	00850615 	addeq	r0, r5, r5, lsl r6
 118:	06160000 	ldreq	r0, [r6], -r0
 11c:	00000198 	muleq	r0, r8, r1
 120:	02210617 	eoreq	r0, r1, #24117248	; 0x1700000
 124:	06180000 	ldreq	r0, [r8], -r0
 128:	00000360 	andeq	r0, r0, r0, ror #6
 12c:	004d0619 	subeq	r0, sp, r9, lsl r6
 130:	061a0000 	ldreq	r0, [sl], -r0
 134:	000001a3 	andeq	r0, r0, r3, lsr #3
 138:	000b061b 	andeq	r0, fp, fp, lsl r6
 13c:	061c0000 	ldreq	r0, [ip], -r0
 140:	000001ae 	andeq	r0, r0, lr, lsr #3
 144:	0035061d 	eorseq	r0, r5, sp, lsl r6
 148:	061e0000 	ldreq	r0, [lr], -r0
 14c:	00000041 	andeq	r0, r0, r1, asr #32
 150:	01c0061f 	biceq	r0, r0, pc, lsl r6
 154:	06200000 	strteq	r0, [r0], -r0
 158:	00000246 	andeq	r0, r0, r6, asr #4
 15c:	07050021 	streq	r0, [r5, -r1, lsr #32]
 160:	00002c01 	andeq	r2, r0, r1, lsl #24
 164:	01390100 	teqeq	r9, r0, lsl #2
 168:	000001e5 	andeq	r0, r0, r5, ror #3
 16c:	00009306 	andeq	r9, r0, r6, lsl #6
 170:	9c060000 	stcls	0, cr0, [r6], {-0}
 174:	01000000 	mrseq	r0, (UNDEF: 0)
 178:	00013506 	andeq	r3, r1, r6, lsl #10
 17c:	b6060200 	strlt	r0, [r6], -r0, lsl #4
 180:	03000001 	movweq	r0, #1
 184:	0000b806 	andeq	fp, r0, r6, lsl #16
 188:	35060400 	strcc	r0, [r6, #-1024]	; 0xfffffc00
 18c:	05000003 	streq	r0, [r0, #-3]
 190:	00001406 	andeq	r1, r0, r6, lsl #8
 194:	1f060600 	svcne	0x00060600
 198:	07000000 	streq	r0, [r0, -r0]
 19c:	00034906 	andeq	r4, r3, r6, lsl #18
 1a0:	01060800 	tsteq	r6, r0, lsl #16
 1a4:	09000001 	stmdbeq	r0, {r0}
 1a8:	0003d806 	andeq	sp, r3, r6, lsl #16
 1ac:	18060a00 	stmdane	r6, {r9, fp}
 1b0:	0b000002 	bleq	1c0 <vectors-0x7fffe44>
 1b4:	00025506 	andeq	r5, r2, r6, lsl #10
 1b8:	d9060c00 	stmdble	r6, {sl, fp}
 1bc:	0d000000 	stceq	0, cr0, [r0, #-0]
 1c0:	0000e306 	andeq	lr, r0, r6, lsl #6
 1c4:	ed060e00 	stc	14, cr0, [r6, #-0]
 1c8:	0f000000 	svceq	0x00000000
 1cc:	0000f706 	andeq	pc, r0, r6, lsl #14
 1d0:	6b061000 	blvs	1841d8 <vectors-0x7e7be2c>
 1d4:	11000000 	mrsne	r0, (UNDEF: 0)
 1d8:	00012006 	andeq	r2, r1, r6
 1dc:	6e061200 	cdpvs	2, 0, cr1, cr6, cr0, {0}
 1e0:	13000003 	movwne	r0, #3
 1e4:	01070500 	tsteq	r7, r0, lsl #10
 1e8:	0000002c 	andeq	r0, r0, ip, lsr #32
 1ec:	30015201 	andcc	r5, r1, r1, lsl #4
 1f0:	06000002 	streq	r0, [r0], -r2
 1f4:	00000200 	andeq	r0, r0, r0, lsl #4
 1f8:	03780600 	cmneq	r8, #0, 12
 1fc:	06010000 	streq	r0, [r1], -r0
 200:	00000314 	andeq	r0, r0, r4, lsl r3
 204:	01ca0602 	biceq	r0, sl, r2, lsl #12
 208:	06030000 	streq	r0, [r3], -r0
 20c:	00000391 	muleq	r0, r1, r3
 210:	01160604 	tsteq	r6, r4, lsl #12
 214:	06050000 	streq	r0, [r5], -r0
 218:	0000033e 	andeq	r0, r0, lr, lsr r3
 21c:	032a0606 			; <UNDEFINED> instruction: 0x032a0606
 220:	06070000 	streq	r0, [r7], -r0
 224:	00000000 	andeq	r0, r0, r0
 228:	026f0608 	rsbeq	r0, pc, #8, 12	; 0x800000
 22c:	00090000 	andeq	r0, r9, r0
 230:	00007707 	andeq	r7, r0, r7, lsl #14
 234:	00024000 	andeq	r4, r2, r0
 238:	00700800 	rsbseq	r0, r0, r0, lsl #16
 23c:	00000000 	andeq	r0, r0, r0
 240:	0000b009 	andeq	fp, r0, r9
 244:	0a670100 	beq	19c064c <vectors-0x663f9b8>
 248:	00000230 	andeq	r0, r0, r0, lsr r2
 24c:	00040305 	andeq	r0, r4, r5, lsl #6
 250:	610a0800 	tstvs	sl, r0, lsl #16
 254:	01000002 	tsteq	r0, r2
 258:	00081d6e 	andeq	r1, r8, lr, ror #26
 25c:	005c0800 	subseq	r0, ip, r0, lsl #16
 260:	9c010000 	stcls	0, cr0, [r1], {-0}
 264:	00000285 	andeq	r0, r0, r5, lsl #5
 268:	0001d60b 	andeq	sp, r1, fp, lsl #12
 26c:	18710100 	ldmdane	r1!, {r8}^
 270:	00000285 	andeq	r0, r0, r5, lsl #5
 274:	9b0b5401 	blls	2d5280 <vectors-0x7d2ad84>
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
  cc:	00ee0308 	rsceq	r0, lr, r8, lsl #6
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
  a4:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff1ac <_etext+0xf7fff148>
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
 1a0:	52003744 	andpl	r3, r0, #68, 14	; 0x1100000
 1a4:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 1a8:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 1ac:	43520039 	cmpmi	r2, #57	; 0x39
 1b0:	53435f43 	movtpl	r5, #16195	; 0x3f43
 1b4:	49540052 	ldmdbmi	r4, {r1, r4, r6}^
 1b8:	445f784d 	ldrbmi	r7, [pc], #-2125	; 1c0 <vectors-0x7fffe44>
 1bc:	00524549 	subseq	r4, r2, r9, asr #10
 1c0:	5f434352 	svcpl	0x00434352
 1c4:	47435353 	smlsldmi	r5, r3, r3, r3
 1c8:	50470052 	subpl	r0, r7, r2, asr r0
 1cc:	5f784f49 	svcpl	0x00784f49
 1d0:	44505550 	ldrbmi	r5, [r0], #-1360	; 0xfffffab0
 1d4:	65520052 	ldrbvs	r0, [r2, #-82]	; 0xffffffae
 1d8:	526f5467 	rsbpl	r5, pc, #1728053248	; 0x67000000
 1dc:	57646165 	strbpl	r6, [r4, -r5, ror #2]!
 1e0:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
 1e4:	43435200 	movtmi	r5, #12800	; 0x3200
 1e8:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 1ec:	54535231 	ldrbpl	r5, [r3], #-561	; 0xfffffdcf
 1f0:	6e750052 	mrcvs	0, 3, r0, cr5, cr2, {2}
 1f4:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 1f8:	63206465 			; <UNDEFINED> instruction: 0x63206465
 1fc:	00726168 	rsbseq	r6, r2, r8, ror #2
 200:	4f495047 	svcmi	0x00495047
 204:	4f4d5f78 	svcmi	0x004d5f78
 208:	00524544 	subseq	r4, r2, r4, asr #10
 20c:	5f434352 	svcpl	0x00434352
 210:	33424841 	movtcc	r4, #10305	; 0x2841
 214:	00524e45 	subseq	r4, r2, r5, asr #28
 218:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 21c:	5252415f 	subspl	r4, r2, #-1073741801	; 0xc0000017
 220:	43435200 	movtmi	r5, #12800	; 0x3200
 224:	4250415f 	subsmi	r4, r0, #-1073741801	; 0xc0000017
 228:	45504c31 	ldrbmi	r4, [r0, #-3121]	; 0xfffff3cf
 22c:	6c00524e 	sfmvs	f5, 4, [r0], {78}	; 0x4e
 230:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 234:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 238:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 23c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 240:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 244:	43520074 	cmpmi	r2, #116	; 0x74
 248:	4c505f43 	mrrcmi	15, 4, r5, r0, cr3
 24c:	5332494c 	teqpl	r2, #76, 18	; 0x130000
 250:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
 254:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 258:	53525f78 	cmppl	r2, #120, 30	; 0x1e0
 25c:	31445652 	cmpcc	r4, r2, asr r6
 260:	73655200 	cmnvc	r5, #0, 4
 264:	485f7465 	ldmdami	pc, {r0, r2, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
 268:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
 26c:	47007265 	strmi	r7, [r0, -r5, ror #4]
 270:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 274:	5246415f 	subpl	r4, r6, #-1073741801	; 0xc0000017
 278:	43520048 	cmpmi	r2, #72	; 0x48
 27c:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
 280:	504c3242 	subpl	r3, ip, r2, asr #4
 284:	00524e45 	subseq	r4, r2, r5, asr #28
 288:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 28c:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
 290:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 294:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
 298:	5200746e 	andpl	r7, r0, #1845493760	; 0x6e000000
 29c:	6f546765 	svcvs	0x00546765
 2a0:	64616552 	strbtvs	r6, [r1], #-1362	; 0xfffffaae
 2a4:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
 2a8:	37314320 	ldrcc	r4, [r1, -r0, lsr #6]!
 2ac:	2e303120 	rsfcssp	f3, f0, f0
 2b0:	20312e33 	eorscs	r2, r1, r3, lsr lr
 2b4:	31323032 	teqcc	r2, r2, lsr r0
 2b8:	34323830 	ldrtcc	r3, [r2], #-2096	; 0xfffff7d0
 2bc:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
 2c0:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
 2c4:	2d202965 			; <UNDEFINED> instruction: 0x2d202965
 2c8:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
 2cc:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
 2d0:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
 2d4:	2d20346d 	cfstrscs	mvf3, [r0, #-436]!	; 0xfffffe4c
 2d8:	7568746d 	strbvc	r7, [r8, #-1133]!	; 0xfffffb93
 2dc:	2d20626d 	sfmcs	f6, 4, [r0, #-436]!	; 0xfffffe4c
 2e0:	6f6c666d 	svcvs	0x006c666d
 2e4:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
 2e8:	733d6962 	teqvc	sp, #1605632	; 0x188000
 2ec:	2074666f 	rsbscs	r6, r4, pc, ror #12
 2f0:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
 2f4:	613d6863 	teqvs	sp, r3, ror #16
 2f8:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
 2fc:	206d2d65 	rsbcs	r2, sp, r5, ror #26
 300:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 304:	5200304f 	andpl	r3, r0, #79	; 0x4f
 308:	415f4343 	cmpmi	pc, r3, asr #6
 30c:	52324250 	eorspl	r4, r2, #80, 4
 310:	00525453 	subseq	r5, r2, r3, asr r4
 314:	4f495047 	svcmi	0x00495047
 318:	534f5f78 	movtpl	r5, #65400	; 0xff78
 31c:	44454550 	strbmi	r4, [r5], #-1360	; 0xfffffab0
 320:	43520052 	cmpmi	r2, #82	; 0x52
 324:	49435f43 	stmdbmi	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
 328:	50470052 	subpl	r0, r7, r2, asr r0
 32c:	5f784f49 	svcpl	0x00784f49
 330:	524b434c 	subpl	r4, fp, #76, 6	; 0x30000001
 334:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 338:	47455f78 	smlsldxmi	r5, r5, r8, pc	; <UNPREDICTABLE>
 33c:	50470052 	subpl	r0, r7, r2, asr r0
 340:	5f784f49 	svcpl	0x00784f49
 344:	52525342 	subspl	r5, r2, #134217729	; 0x8000001
 348:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 34c:	43435f78 	movtmi	r5, #16248	; 0x3f78
 350:	52005245 	andpl	r5, r0, #1342177284	; 0x50000004
 354:	415f4343 	cmpmi	pc, r3, asr #6
 358:	52324248 	eorspl	r4, r2, #72, 4	; 0x80000004
 35c:	00525453 	subseq	r5, r2, r3, asr r4
 360:	5f434352 	svcpl	0x00434352
 364:	32425041 	subcc	r5, r2, #65	; 0x41
 368:	4e45504c 	cdpmi	0, 4, cr5, cr5, cr12, {2}
 36c:	49540052 	ldmdbmi	r4, {r1, r4, r6}^
 370:	445f784d 	ldrbmi	r7, [pc], #-2125	; 378 <vectors-0x7fffc8c>
 374:	0052414d 	subseq	r4, r2, sp, asr #2
 378:	4f495047 	svcmi	0x00495047
 37c:	544f5f78 	strbpl	r5, [pc], #-3960	; 384 <vectors-0x7fffc80>
 380:	52455059 	subpl	r5, r5, #89	; 0x59
 384:	43435200 	movtmi	r5, #12800	; 0x3200
 388:	4250415f 	subsmi	r4, r0, #-1073741801	; 0xc0000017
 38c:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
 390:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 394:	495f784f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, fp, ip, sp, lr}^	; <UNPREDICTABLE>
 398:	73005244 	movwvc	r5, #580	; 0x244
 39c:	6d2f6372 	stcvs	3, cr6, [pc, #-456]!	; 1dc <vectors-0x7fffe28>
 3a0:	2e6e6961 	vnmulcs.f16	s13, s28, s3	; <UNPREDICTABLE>
 3a4:	3a450063 	bcc	1140538 <vectors-0x6ebfacc>
 3a8:	73736f5c 	cmnvc	r3, #92, 30	; 0x170
 3ac:	6d74735c 	ldclvs	3, cr7, [r4, #-368]!	; 0xfffffe90
 3b0:	622d3233 	eorvs	r3, sp, #805306371	; 0x30000003
 3b4:	6f747475 	svcvs	0x00747475
 3b8:	6c622d6e 	stclvs	13, cr2, [r2], #-440	; 0xfffffe48
 3bc:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 3c0:	2d6f6e2d 	stclcs	14, cr6, [pc, #-180]!	; 314 <vectors-0x7fffcf0>
 3c4:	5c6d6172 	stfple	f6, [sp], #-456	; 0xfffffe38
 3c8:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 3cc:	6c625f72 	stclvs	15, cr5, [r2], #-456	; 0xfffffe38
 3d0:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 3d4:	0039315f 	eorseq	r3, r9, pc, asr r1
 3d8:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 3dc:	4353505f 	cmpmi	r3, #95	; 0x5f
 3e0:	43435200 	movtmi	r5, #12800	; 0x3200
 3e4:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 3e8:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
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
  1c:	0000005c 	andeq	r0, r0, ip, asr r0
