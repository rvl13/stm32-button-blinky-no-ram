
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
   0:	b480      	push	{r7}
   2:	b087      	sub	sp, #28
   4:	af00      	add	r7, sp, #0
   6:	4b19      	ldr	r3, [pc, #100]	; (6c <Reset_Handler+0x6c>)
   8:	617b      	str	r3, [r7, #20]
   a:	4b19      	ldr	r3, [pc, #100]	; (70 <Reset_Handler+0x70>)
   c:	613b      	str	r3, [r7, #16]
   e:	4b19      	ldr	r3, [pc, #100]	; (74 <Reset_Handler+0x74>)
  10:	60fb      	str	r3, [r7, #12]
  12:	4b19      	ldr	r3, [pc, #100]	; (78 <Reset_Handler+0x78>)
  14:	60bb      	str	r3, [r7, #8]
  16:	4b19      	ldr	r3, [pc, #100]	; (7c <Reset_Handler+0x7c>)
  18:	607b      	str	r3, [r7, #4]
  1a:	697b      	ldr	r3, [r7, #20]
  1c:	681b      	ldr	r3, [r3, #0]
  1e:	f043 0209 	orr.w	r2, r3, #9
  22:	697b      	ldr	r3, [r7, #20]
  24:	601a      	str	r2, [r3, #0]
  26:	693b      	ldr	r3, [r7, #16]
  28:	681b      	ldr	r3, [r3, #0]
  2a:	f023 0203 	bic.w	r2, r3, #3
  2e:	693b      	ldr	r3, [r7, #16]
  30:	601a      	str	r2, [r3, #0]
  32:	68bb      	ldr	r3, [r7, #8]
  34:	681b      	ldr	r3, [r3, #0]
  36:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
  3a:	f043 5280 	orr.w	r2, r3, #268435456	; 0x10000000
  3e:	68bb      	ldr	r3, [r7, #8]
  40:	601a      	str	r2, [r3, #0]
  42:	68fb      	ldr	r3, [r7, #12]
  44:	681b      	ldr	r3, [r3, #0]
  46:	f003 0301 	and.w	r3, r3, #1
  4a:	2b00      	cmp	r3, #0
  4c:	d006      	beq.n	5c <Reset_Handler+0x5c>
  4e:	687b      	ldr	r3, [r7, #4]
  50:	681b      	ldr	r3, [r3, #0]
  52:	f443 4280 	orr.w	r2, r3, #16384	; 0x4000
  56:	687b      	ldr	r3, [r7, #4]
  58:	601a      	str	r2, [r3, #0]
  5a:	e7f2      	b.n	42 <Reset_Handler+0x42>
  5c:	687b      	ldr	r3, [r7, #4]
  5e:	681b      	ldr	r3, [r3, #0]
  60:	f423 4280 	bic.w	r2, r3, #16384	; 0x4000
  64:	687b      	ldr	r3, [r7, #4]
  66:	601a      	str	r2, [r3, #0]
  68:	e7eb      	b.n	42 <Reset_Handler+0x42>
  6a:	bf00      	nop
  6c:	40023830 	andmi	r3, r2, r0, lsr r8
  70:	40020000 	andmi	r0, r2, r0
  74:	40020010 	andmi	r0, r2, r0, lsl r0
  78:	40020c00 	andmi	r0, r2, r0, lsl #24
  7c:	40020c14 	andmi	r0, r2, r4, lsl ip

Disassembly of section .isr_vector:

00000000 <vectors>:
   0:	20020000 	andcs	r0, r2, r0
   4:	00000000 	andeq	r0, r0, r0
			4: R_ARM_ABS32	Reset_Handler

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000113 	andeq	r0, r0, r3, lsl r1
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000f8 	strdeq	r0, [r0], -r8
			c: R_ARM_ABS32	.debug_str
  10:	0000ed0c 	andeq	lr, r0, ip, lsl #26
			11: R_ARM_ABS32	.debug_str
  14:	00000e00 	andeq	r0, r0, r0, lsl #28
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00008000 	andeq	r8, r0, r0
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000176 	andeq	r0, r0, r6, ror r1
			28: R_ARM_ABS32	.debug_str
  2c:	69080102 	stmdbvs	r8, {r1, r8}
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	015a0502 	cmpeq	sl, r2, lsl #10
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	00008907 	andeq	r8, r0, r7, lsl #18
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	0000016d 	andeq	r0, r0, sp, ror #2
			44: R_ARM_ABS32	.debug_str
  48:	0000a403 	andeq	sl, r0, r3, lsl #8
			49: R_ARM_ABS32	.debug_str
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	77070402 	strvc	r0, [r7, -r2, lsl #8]
			57: R_ARM_ABS32	.debug_str
  58:	02000000 	andeq	r0, r0, #0
  5c:	00df0508 	sbcseq	r0, pc, r8, lsl #10
			5e: R_ARM_ABS32	.debug_str
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	0000c807 	andeq	ip, r0, r7, lsl #16
			65: R_ARM_ABS32	.debug_str
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	bb070402 	bllt	1c1080 <Reset_Handler+0x1c1080>
			73: R_ARM_ABS32	.debug_str
  74:	03000000 	movweq	r0, #0
  78:	00000164 	andeq	r0, r0, r4, ror #2
			78: R_ARM_ABS32	.debug_str
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00007706 	andeq	r7, r0, r6, lsl #14
  8c:	00009800 	andeq	r9, r0, r0, lsl #16
  90:	00700700 	rsbseq	r0, r0, r0, lsl #14
  94:	00010000 	andeq	r0, r1, r0
  98:	00009c08 	andeq	r9, r0, r8, lsl #24
			99: R_ARM_ABS32	.debug_str
  9c:	0a0b0100 	beq	2c04a4 <Reset_Handler+0x2c04a4>
  a0:	00000088 	andeq	r0, r0, r8, lsl #1
  a4:	00000305 	andeq	r0, r0, r5, lsl #6
			a6: R_ARM_ABS32	vectors
  a8:	00090000 	andeq	r0, r9, r0
			ab: R_ARM_ABS32	.debug_str
  ac:	01000000 	mrseq	r0, (UNDEF: 0)
  b0:	00690510 	rsbeq	r0, r9, r0, lsl r5
  b4:	00000000 	andeq	r0, r0, r0
			b6: R_ARM_ABS32	.text
  b8:	00800000 	addeq	r0, r0, r0
  bc:	9c010000 	stcls	0, cr0, [r1], {-0}
  c0:	00000110 	andeq	r0, r0, r0, lsl r1
  c4:	00005b0a 	andeq	r5, r0, sl, lsl #22
			c5: R_ARM_ABS32	.debug_str
  c8:	18130100 	ldmdane	r3, {r8}
  cc:	00000110 	andeq	r0, r0, r0, lsl r1
  d0:	0a749102 	beq	1d244e0 <Reset_Handler+0x1d244e0>
  d4:	00000182 	andeq	r0, r0, r2, lsl #3
			d4: R_ARM_ABS32	.debug_str
  d8:	10181401 	andsne	r1, r8, r1, lsl #8
  dc:	02000001 	andeq	r0, r0, #1
  e0:	af0a7091 	svcge	0x000a7091
			e3: R_ARM_ABS32	.debug_str
  e4:	01000000 	mrseq	r0, (UNDEF: 0)
  e8:	01101815 	tsteq	r0, r5, lsl r8
  ec:	91020000 	mrsls	r0, (UNDEF: 2)
  f0:	004d0a6c 	subeq	r0, sp, ip, ror #20
			f2: R_ARM_ABS32	.debug_str
  f4:	16010000 	strne	r0, [r1], -r0
  f8:	00011018 	andeq	r1, r1, r8, lsl r0
  fc:	68910200 	ldmvs	r1, {r9}
 100:	0000410a 	andeq	r4, r0, sl, lsl #2
			101: R_ARM_ABS32	.debug_str
 104:	18170100 	ldmdane	r7, {r8}
 108:	00000110 	andeq	r0, r0, r0, lsl r1
 10c:	00649102 	rsbeq	r9, r4, r2, lsl #2
 110:	0083040b 	addeq	r0, r3, fp, lsl #8
 114:	Address 0x00000114 is out of bounds.


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
  38:	49003505 	stmdbmi	r0, {r0, r2, r8, sl, ip, sp}
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	13490101 	movtne	r0, #37121	; 0x9101
  44:	00001301 	andeq	r1, r0, r1, lsl #6
  48:	49002107 	stmdbmi	r0, {r0, r1, r2, r8, sp}
  4c:	000b2f13 	andeq	r2, fp, r3, lsl pc
  50:	00340800 	eorseq	r0, r4, r0, lsl #16
  54:	0b3a0e03 	bleq	e83868 <Reset_Handler+0xe83868>
  58:	0b390b3b 	bleq	e42d4c <Reset_Handler+0xe42d4c>
  5c:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
  60:	00001802 	andeq	r1, r0, r2, lsl #16
  64:	3f012e09 	svccc	0x00012e09
  68:	3a0e0319 	bcc	380cd4 <Reset_Handler+0x380cd4>
  6c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  70:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
  74:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
  78:	97184006 	ldrls	r4, [r8, -r6]
  7c:	13011942 	movwne	r1, #6466	; 0x1942
  80:	340a0000 	strcc	r0, [sl], #-0
  84:	3a0e0300 	bcc	380c8c <Reset_Handler+0x380c8c>
  88:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  8c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  90:	0b000018 	bleq	f8 <Reset_Handler+0xf8>
  94:	0b0b000f 	bleq	2c00d8 <Reset_Handler+0x2c00d8>
  98:	00001349 	andeq	r1, r0, r9, asr #6
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
			6: R_ARM_ABS32	.debug_info
   8:	00040000 	andeq	r0, r4, r0
	...
			10: R_ARM_ABS32	.text
  14:	00000080 	andeq	r0, r0, r0, lsl #1
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
  c4:	05001a05 	streq	r1, [r0, #-2565]	; 0xfffff5fb
  c8:	00000002 	andeq	r0, r0, r2
			c9: R_ARM_ABS32	.text
  cc:	010f0300 	mrseq	r0, SP_hyp
  d0:	2f3f1805 	svccs	0x003f1805
  d4:	052f2f2f 	streq	r2, [pc, #-3887]!	; fffff1ad <Reset_Handler+0xfffff1ad>
  d8:	16053114 			; <UNDEFINED> instruction: 0x16053114
  dc:	2e250569 	cfsh64cs	mvdx0, mvdx5, #57
  e0:	052e1405 	streq	r1, [lr, #-1029]!	; 0xfffffbfb
  e4:	40053117 	andmi	r3, r5, r7, lsl r1
  e8:	4a14052e 	bmi	5015a8 <Reset_Handler+0x5015a8>
  ec:	2e210533 	mcrcs	5, 1, r0, cr1, cr3, {1}
  f0:	052e0c05 	streq	r0, [lr, #-3077]!	; 0xfffff3fb
  f4:	0579311a 	ldrbeq	r3, [r9, #-282]!	; 0xfffffee6
  f8:	6678030c 	ldrbtvs	r0, [r8], -ip, lsl #6
  fc:	01000c02 	tsteq	r0, r2, lsl #24
 100:	Address 0x00000100 is out of bounds.


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
  30:	74747562 	ldrbtvc	r7, [r4], #-1378	; 0xfffffa9e
  34:	625f6e6f 	subsvs	r6, pc, #1776	; 0x6f0
  38:	6b6e696c 	blvs	1b9a5f0 <Reset_Handler+0x1b9a5f0>
  3c:	32305f79 	eorscc	r5, r0, #484	; 0x1e4
  40:	475f7000 	ldrbmi	r7, [pc, -r0]
  44:	444f4950 	strbmi	r4, [pc], #-2384	; 4c <.debug_str+0x4c>
  48:	52444f5f 	subpl	r4, r4, #380	; 0x17c
  4c:	475f7000 	ldrbmi	r7, [pc, -r0]
  50:	444f4950 	strbmi	r4, [pc], #-2384	; 58 <.debug_str+0x58>
  54:	444f4d5f 	strbmi	r4, [pc], #-3423	; 5c <.debug_str+0x5c>
  58:	70005245 	andvc	r5, r0, r5, asr #4
  5c:	4343525f 	movtmi	r5, #12895	; 0x325f
  60:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
  64:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
  68:	736e7500 	cmnvc	lr, #0, 10
  6c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  70:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
  74:	6c007261 	sfmvs	f7, 4, [r0], {97}	; 0x61
  78:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  7c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  80:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  84:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  88:	6f687300 	svcvs	0x00687300
  8c:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  90:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  94:	2064656e 	rsbcs	r6, r4, lr, ror #10
  98:	00746e69 	rsbseq	r6, r4, r9, ror #28
  9c:	74636576 	strbtvc	r6, [r3], #-1398	; 0xfffffa8a
  a0:	0073726f 	rsbseq	r7, r3, pc, ror #4
  a4:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
  a8:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  ac:	7000745f 	andvc	r7, r0, pc, asr r4
  b0:	4950475f 	ldmdbmi	r0, {r0, r1, r2, r3, r4, r6, r8, r9, sl, lr}^
  b4:	495f414f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, r8, lr}^	; <UNPREDICTABLE>
  b8:	75005244 	strvc	r5, [r0, #-580]	; 0xfffffdbc
  bc:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  c0:	2064656e 	rsbcs	r6, r4, lr, ror #10
  c4:	00746e69 	rsbseq	r6, r4, r9, ror #28
  c8:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  cc:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  d0:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  d4:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  d8:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  dc:	6c00746e 	cfstrsvs	mvf7, [r0], {110}	; 0x6e
  e0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  e4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  e8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  ec:	63727300 	cmnvs	r2, #0, 6
  f0:	69616d2f 	stmdbvs	r1!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
  f4:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  f8:	20554e47 	subscs	r4, r5, r7, asr #28
  fc:	20373143 	eorscs	r3, r7, r3, asr #2
 100:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
 104:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
 108:	30313230 	eorscc	r3, r1, r0, lsr r2
 10c:	20343238 	eorscs	r3, r4, r8, lsr r2
 110:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
 114:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
 118:	6d2d2029 	stcvs	0, cr2, [sp, #-164]!	; 0xffffff5c
 11c:	3d757063 	ldclcc	0, cr7, [r5, #-396]!	; 0xfffffe74
 120:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
 124:	6d2d7865 	stcvs	8, cr7, [sp, #-404]!	; 0xfffffe6c
 128:	6d2d2034 	stcvs	0, cr2, [sp, #-208]!	; 0xffffff30
 12c:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
 130:	6d2d2062 	stcvs	0, cr2, [sp, #-392]!	; 0xfffffe78
 134:	616f6c66 	cmnvs	pc, r6, ror #24
 138:	62612d74 	rsbvs	r2, r1, #116, 26	; 0x1d00
 13c:	6f733d69 	svcvs	0x00733d69
 140:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	; 0xfffffe68
 144:	6372616d 	cmnvs	r2, #1073741851	; 0x4000001b
 148:	72613d68 	rsbvc	r3, r1, #104, 26	; 0x1a00
 14c:	6537766d 	ldrvs	r7, [r7, #-1645]!	; 0xfffff993
 150:	2d206d2d 	stccs	13, cr6, [r0, #-180]!	; 0xffffff4c
 154:	4f2d2067 	svcmi	0x002d2067
 158:	68730030 	ldmdavs	r3!, {r4, r5}^
 15c:	2074726f 	rsbscs	r7, r4, pc, ror #4
 160:	00746e69 	rsbseq	r6, r4, r9, ror #28
 164:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
 168:	745f3233 	ldrbvc	r3, [pc], #-563	; 170 <.debug_str+0x170>
 16c:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 170:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
 174:	69730074 	ldmdbvs	r3!, {r2, r4, r5, r6}^
 178:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 17c:	61686320 	cmnvs	r8, r0, lsr #6
 180:	5f700072 	svcpl	0x00700072
 184:	4f495047 	svcmi	0x00495047
 188:	4f4d5f41 	svcmi	0x004d5f41
 18c:	00524544 	subseq	r4, r2, r4, asr #10

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
  10:	00000018 	andeq	r0, r0, r8, lsl r0
	...
			14: R_ARM_ABS32	.debug_frame
			18: R_ARM_ABS32	.text
  1c:	00000080 	andeq	r0, r0, r0, lsl #1
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	200e4101 	andcs	r4, lr, r1, lsl #2
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

