
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	b480      	push	{r7}
   2:	b087      	sub	sp, #28
   4:	af00      	add	r7, sp, #0
   6:	4b19      	ldr	r3, [pc, #100]	; (6c <main+0x6c>)
   8:	617b      	str	r3, [r7, #20]
   a:	4b19      	ldr	r3, [pc, #100]	; (70 <main+0x70>)
   c:	613b      	str	r3, [r7, #16]
   e:	4b19      	ldr	r3, [pc, #100]	; (74 <main+0x74>)
  10:	60fb      	str	r3, [r7, #12]
  12:	4b19      	ldr	r3, [pc, #100]	; (78 <main+0x78>)
  14:	60bb      	str	r3, [r7, #8]
  16:	4b19      	ldr	r3, [pc, #100]	; (7c <main+0x7c>)
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
  4c:	d006      	beq.n	5c <main+0x5c>
  4e:	687b      	ldr	r3, [r7, #4]
  50:	681b      	ldr	r3, [r3, #0]
  52:	f443 4280 	orr.w	r2, r3, #16384	; 0x4000
  56:	687b      	ldr	r3, [r7, #4]
  58:	601a      	str	r2, [r3, #0]
  5a:	e7f2      	b.n	42 <main+0x42>
  5c:	687b      	ldr	r3, [r7, #4]
  5e:	681b      	ldr	r3, [r3, #0]
  60:	f423 4280 	bic.w	r2, r3, #16384	; 0x4000
  64:	687b      	ldr	r3, [r7, #4]
  66:	601a      	str	r2, [r3, #0]
  68:	e7eb      	b.n	42 <main+0x42>
  6a:	bf00      	nop
  6c:	40023830 	andmi	r3, r2, r0, lsr r8
  70:	40020000 	andmi	r0, r2, r0
  74:	40020010 	andmi	r0, r2, r0, lsl r0
  78:	40020c00 	andmi	r0, r2, r0, lsl #24
  7c:	40020c14 	andmi	r0, r2, r4, lsl ip

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000f1 	strdeq	r0, [r0], -r1
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000e7 	andeq	r0, r0, r7, ror #1
			c: R_ARM_ABS32	.debug_str
  10:	0000dc0c 	andeq	sp, r0, ip, lsl #24
			11: R_ARM_ABS32	.debug_str
	...
			15: R_ARM_ABS32	.debug_str
			19: R_ARM_ABS32	.text
  1c:	00008000 	andeq	r8, r0, r0
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000165 	andeq	r0, r0, r5, ror #2
			28: R_ARM_ABS32	.debug_str
  2c:	5b080102 	blpl	20043c <main+0x20043c>
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	01490502 	cmpeq	r9, r2, lsl #10
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	00007b07 	andeq	r7, r0, r7, lsl #22
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	0000015c 	andeq	r0, r0, ip, asr r1
			44: R_ARM_ABS32	.debug_str
  48:	00009a03 	andeq	r9, r0, r3, lsl #20
			49: R_ARM_ABS32	.debug_str
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	69070402 	stmdbvs	r7, {r1, sl}
			57: R_ARM_ABS32	.debug_str
  58:	02000000 	andeq	r0, r0, #0
  5c:	00ce0508 	sbceq	r0, lr, r8, lsl #10
			5e: R_ARM_ABS32	.debug_str
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	0000b707 	andeq	fp, r0, r7, lsl #14
			65: R_ARM_ABS32	.debug_str
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	aa070402 	bge	1c1080 <main+0x1c1080>
			73: R_ARM_ABS32	.debug_str
  74:	03000000 	movweq	r0, #0
  78:	00000153 	andeq	r0, r0, r3, asr r1
			78: R_ARM_ABS32	.debug_str
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	0000a506 	andeq	sl, r0, r6, lsl #10
			89: R_ARM_ABS32	.debug_str
  8c:	05060100 	streq	r0, [r6, #-256]	; 0xffffff00
  90:	00000069 	andeq	r0, r0, r9, rrx
  94:	00000000 	andeq	r0, r0, r0
			94: R_ARM_ABS32	.text
  98:	00000080 	andeq	r0, r0, r0, lsl #1
  9c:	00ee9c01 	rsceq	r9, lr, r1, lsl #24
  a0:	4d070000 	stcmi	0, cr0, [r7, #-0]
			a3: R_ARM_ABS32	.debug_str
  a4:	01000000 	mrseq	r0, (UNDEF: 0)
  a8:	00ee1809 	rsceq	r1, lr, r9, lsl #16
  ac:	91020000 	mrsls	r0, (UNDEF: 2)
  b0:	01710774 	cmneq	r1, r4, ror r7
			b2: R_ARM_ABS32	.debug_str
  b4:	0a010000 	beq	400bc <main+0x400bc>
  b8:	0000ee18 	andeq	lr, r0, r8, lsl lr
  bc:	70910200 	addsvc	r0, r1, r0, lsl #4
  c0:	00008e07 	andeq	r8, r0, r7, lsl #28
			c1: R_ARM_ABS32	.debug_str
  c4:	180b0100 	stmdane	fp, {r8}
  c8:	000000ee 	andeq	r0, r0, lr, ror #1
  cc:	076c9102 	strbeq	r9, [ip, -r2, lsl #2]!
  d0:	0000003f 	andeq	r0, r0, pc, lsr r0
			d0: R_ARM_ABS32	.debug_str
  d4:	ee180c01 	cdp	12, 1, cr0, cr8, cr1, {0}
  d8:	02000000 	andeq	r0, r0, #0
  dc:	33076891 	movwcc	r6, #30865	; 0x7891
			df: R_ARM_ABS32	.debug_str
  e0:	01000000 	mrseq	r0, (UNDEF: 0)
  e4:	00ee180d 	rsceq	r1, lr, sp, lsl #16
  e8:	91020000 	mrsls	r0, (UNDEF: 2)
  ec:	04080064 	streq	r0, [r8], #-100	; 0xffffff9c
  f0:	00000083 	andeq	r0, r0, r3, lsl #1
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
  14:	00000080 	andeq	r0, r0, r0, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000fb 	strdeq	r0, [r0], -fp
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
  d0:	2f2f2f3f 	svccs	0x002f2f3f
  d4:	3114052f 	tstcc	r4, pc, lsr #10
  d8:	05691605 	strbeq	r1, [r9, #-1541]!	; 0xfffff9fb
  dc:	14052e25 	strne	r2, [r5], #-3621	; 0xfffff1db
  e0:	3117052e 	tstcc	r7, lr, lsr #10
  e4:	052e4005 	streq	r4, [lr, #-5]!
  e8:	05334a14 	ldreq	r4, [r3, #-2580]!	; 0xfffff5ec
  ec:	0c052e21 	stceq	14, cr2, [r5], {33}	; 0x21
  f0:	311a052e 	tstcc	sl, lr, lsr #10
  f4:	030c0579 	movweq	r0, #50553	; 0xc579
  f8:	0c026678 	stceq	6, cr6, [r2], {120}	; 0x78
  fc:	Address 0x000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6f5c3a45 	svcvs	0x005c3a45
   4:	735c7373 	cmpvc	ip, #-872415231	; 0xcc000001
   8:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
   c:	7475622d 	ldrbtvc	r6, [r5], #-557	; 0xfffffdd3
  10:	2d6e6f74 	stclcs	15, cr6, [lr, #-464]!	; 0xfffffe30
  14:	6e696c62 	cdpvs	12, 6, cr6, cr9, cr2, {3}
  18:	6e2d796b 	vnmulvs.f16	s14, s26, s23	; <UNPREDICTABLE>
  1c:	61722d6f 	cmnvs	r2, pc, ror #26
  20:	75625c6d 	strbvc	r5, [r2, #-3181]!	; 0xfffff393
  24:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  28:	696c625f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
  2c:	5f796b6e 	svcpl	0x00796b6e
  30:	70003130 	andvc	r3, r0, r0, lsr r1
  34:	4950475f 	ldmdbmi	r0, {r0, r1, r2, r3, r4, r6, r8, r9, sl, lr}^
  38:	4f5f444f 	svcmi	0x005f444f
  3c:	70005244 	andvc	r5, r0, r4, asr #4
  40:	4950475f 	ldmdbmi	r0, {r0, r1, r2, r3, r4, r6, r8, r9, sl, lr}^
  44:	4d5f444f 	cfldrdmi	mvd4, [pc, #-316]	; ffffff10 <main+0xffffff10>
  48:	5245444f 	subpl	r4, r5, #1325400064	; 0x4f000000
  4c:	525f7000 	subspl	r7, pc, #0
  50:	415f4343 	cmpmi	pc, r3, asr #6
  54:	45314248 	ldrmi	r4, [r1, #-584]!	; 0xfffffdb8
  58:	7500524e 	strvc	r5, [r0, #-590]	; 0xfffffdb2
  5c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  60:	2064656e 	rsbcs	r6, r4, lr, ror #10
  64:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
  68:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  6c:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  70:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  74:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  78:	7300746e 	movwvc	r7, #1134	; 0x46e
  7c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
  80:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  84:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  88:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  8c:	5f700074 	svcpl	0x00700074
  90:	4f495047 	svcmi	0x00495047
  94:	44495f41 	strbmi	r5, [r9], #-3905	; 0xfffff0bf
  98:	5f5f0052 	svcpl	0x005f0052
  9c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
  a0:	745f3233 	ldrbvc	r3, [pc], #-563	; a8 <.debug_str+0xa8>
  a4:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  a8:	6e75006e 	cdpvs	0, 7, cr0, cr5, cr14, {3}
  ac:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  b0:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  b4:	6c00746e 	cfstrsvs	mvf7, [r0], {110}	; 0x6e
  b8:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  bc:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  c0:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  c4:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  c8:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  cc:	6f6c0074 	svcvs	0x006c0074
  d0:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  d4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  d8:	00746e69 	rsbseq	r6, r4, r9, ror #28
  dc:	2f637273 	svccs	0x00637273
  e0:	6e69616d 	powvsez	f6, f1, #5.0
  e4:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
  e8:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
  ec:	31203731 			; <UNDEFINED> instruction: 0x31203731
  f0:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
  f4:	30322031 	eorscc	r2, r2, r1, lsr r0
  f8:	38303132 	ldmdacc	r0!, {r1, r4, r5, r8, ip, sp}
  fc:	28203432 	stmdacs	r0!, {r1, r4, r5, sl, ip, sp}
 100:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
 104:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 108:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
 10c:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 110:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 114:	346d2d78 	strbtcc	r2, [sp], #-3448	; 0xfffff288
 118:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 11c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 120:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
 124:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 128:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
 12c:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
 130:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
 134:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
 138:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 13c:	2d653776 	stclcs	7, cr3, [r5, #-472]!	; 0xfffffe28
 140:	672d206d 	strvs	r2, [sp, -sp, rrx]!
 144:	304f2d20 	subcc	r2, pc, r0, lsr #26
 148:	6f687300 	svcvs	0x00687300
 14c:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
 150:	7500746e 	strvc	r7, [r0, #-1134]	; 0xfffffb92
 154:	33746e69 	cmncc	r4, #1680	; 0x690
 158:	00745f32 	rsbseq	r5, r4, r2, lsr pc
 15c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 160:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 164:	67697300 	strbvs	r7, [r9, -r0, lsl #6]!
 168:	2064656e 	rsbcs	r6, r4, lr, ror #10
 16c:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
 170:	475f7000 	ldrbmi	r7, [pc, -r0]
 174:	414f4950 	cmpmi	pc, r0, asr r9	; <UNPREDICTABLE>
 178:	444f4d5f 	strbmi	r4, [pc], #-3423	; 180 <main+0x180>
 17c:	Address 0x0000017c is out of bounds.


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

