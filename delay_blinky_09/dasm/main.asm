
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
   0:	2401      	movs	r4, #1
   2:	f44f 1600 	mov.w	r6, #2097152	; 0x200000
   6:	4b06      	ldr	r3, [pc, #24]	; (20 <Reset_Handler+0x20>)
   8:	601c      	str	r4, [r3, #0]
   a:	4b06      	ldr	r3, [pc, #24]	; (24 <Reset_Handler+0x24>)
   c:	601c      	str	r4, [r3, #0]
   e:	4d06      	ldr	r5, [pc, #24]	; (28 <Reset_Handler+0x28>)
  10:	3401      	adds	r4, #1
  12:	42b4      	cmp	r4, r6
  14:	d3fc      	bcc.n	10 <Reset_Handler+0x10>
  16:	2401      	movs	r4, #1
  18:	682b      	ldr	r3, [r5, #0]
  1a:	43db      	mvns	r3, r3
  1c:	602b      	str	r3, [r5, #0]
  1e:	e7f7      	b.n	10 <Reset_Handler+0x10>
  20:	4247060c 	submi	r0, r7, #12, 12	; 0xc00000
  24:	42418070 	submi	r8, r1, #112	; 0x70
  28:	424182b8 	submi	r8, r1, #184, 4	; 0x8000000b

Disassembly of section .isr_vector:

00000000 <vectors>:
   0:	00000000 	andeq	r0, r0, r0
			0: R_ARM_ABS32	Reset_Handler

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000f2 	strdeq	r0, [r0], -r2
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000e5 	andeq	r0, r0, r5, ror #1
			c: R_ARM_ABS32	.debug_str
  10:	0000da0c 	andeq	sp, r0, ip, lsl #20
			11: R_ARM_ABS32	.debug_str
  14:	0000a800 	andeq	sl, r0, r0, lsl #16
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00002c00 	andeq	r2, r0, r0, lsl #24
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000163 	andeq	r0, r0, r3, ror #2
			28: R_ARM_ABS32	.debug_str
  2c:	19080102 	stmdbne	r8, {r1, r8}
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	01470502 	cmpeq	r7, r2, lsl #10
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	00003907 	andeq	r3, r0, r7, lsl #18
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	0000015a 	andeq	r0, r0, sl, asr r1
			44: R_ARM_ABS32	.debug_str
  48:	00006303 	andeq	r6, r0, r3, lsl #6
			49: R_ARM_ABS32	.debug_str
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	27070402 	strcs	r0, [r7, -r2, lsl #8]
			57: R_ARM_ABS32	.debug_str
  58:	02000000 	andeq	r0, r0, #0
  5c:	009a0508 	addseq	r0, sl, r8, lsl #10
			5e: R_ARM_ABS32	.debug_str
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00008307 	andeq	r8, r0, r7, lsl #6
			65: R_ARM_ABS32	.debug_str
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	76070402 	strvc	r0, [r7], -r2, lsl #8
			73: R_ARM_ABS32	.debug_str
  74:	03000000 	movweq	r0, #0
  78:	00000151 	andeq	r0, r0, r1, asr r1
			78: R_ARM_ABS32	.debug_str
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00007706 	andeq	r7, r0, r6, lsl #14
  8c:	00009800 	andeq	r9, r0, r0, lsl #16
  90:	00700700 	rsbseq	r0, r0, r0, lsl #14
  94:	00000000 	andeq	r0, r0, r0
  98:	00004c08 	andeq	r4, r0, r8, lsl #24
			99: R_ARM_ABS32	.debug_str
  9c:	0a150100 	beq	5404a4 <Reset_Handler+0x5404a4>
  a0:	00000088 	andeq	r0, r0, r8, lsl #1
  a4:	00000305 	andeq	r0, r0, r5, lsl #6
			a6: R_ARM_ABS32	vectors
  a8:	0b090000 	bleq	2400b0 <Reset_Handler+0x2400b0>
			ab: R_ARM_ABS32	.debug_str
  ac:	01000000 	mrseq	r0, (UNDEF: 0)
  b0:	00691c1c 	rsbeq	r1, r9, ip, lsl ip
  b4:	00000000 	andeq	r0, r0, r0
			b6: R_ARM_ABS32	.text
  b8:	002c0000 	eoreq	r0, ip, r0
  bc:	9c010000 	stcls	0, cr0, [r1], {-0}
  c0:	000000ef 	andeq	r0, r0, pc, ror #1
  c4:	0000540a 	andeq	r5, r0, sl, lsl #8
			c5: R_ARM_ABS32	.debug_str
  c8:	181f0100 	ldmdane	pc, {r8}	; <UNPREDICTABLE>
  cc:	000000ef 	andeq	r0, r0, pc, ror #1
  d0:	6e0a5501 	cfsh32vs	mvfx5, mvfx10, #1
			d3: R_ARM_ABS32	.debug_str
  d4:	01000000 	mrseq	r0, (UNDEF: 0)
  d8:	00771720 	rsbseq	r1, r7, r0, lsr #14
  dc:	54010000 	strpl	r0, [r1], #-0
  e0:	0000000a 	andeq	r0, r0, sl
			e1: R_ARM_ABS32	.debug_str
  e4:	1d210100 	stfnes	f0, [r1, #-0]
  e8:	00000083 	andeq	r0, r0, r3, lsl #1
  ec:	0b005601 	bleq	158f8 <Reset_Handler+0x158f8>
  f0:	00007704 	andeq	r7, r0, r4, lsl #14
	...

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
  38:	49002605 	stmdbmi	r0, {r0, r2, r9, sl, sp}
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
  14:	0000002c 	andeq	r0, r0, ip, lsr #32
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
  c4:	05003105 	streq	r3, [r0, #-261]	; 0xfffffefb
  c8:	00000002 	andeq	r0, r0, r2
			c9: R_ARM_ABS32	.text
  cc:	011b0300 	tsteq	fp, r0, lsl #6
  d0:	05161705 	ldreq	r1, [r6, #-1797]	; 0xfffff8fb
  d4:	0505211d 	streq	r2, [r5, #-285]	; 0xfffffee3
  d8:	20290533 	eorcs	r0, r9, r3, lsr r5
  dc:	05250505 	streq	r0, [r5, #-1285]!	; 0xfffffafb
  e0:	14052037 	strne	r2, [r5], #-55	; 0xffffffc9
  e4:	25100523 	ldrcs	r0, [r0, #-1315]	; 0xfffffadd
  e8:	05230c05 	streq	r0, [r3, #-3077]!	; 0xfffff3fb
  ec:	21053215 	tstcs	r5, r5, lsl r2
  f0:	201f0525 	andscs	r0, pc, r5, lsr #10
  f4:	05201d05 	streq	r1, [r0, #-3333]!	; 0xfffff2fb
  f8:	20740310 	rsbscs	r0, r4, r0, lsl r3
  fc:	01000702 	tsteq	r0, r2, lsl #14
 100:	Address 0x00000100 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	616c6544 	cmnvs	ip, r4, asr #10
   4:	6c615679 	stclvs	6, cr5, [r1], #-484	; 0xfffffe1c
   8:	52006575 	andpl	r6, r0, #490733568	; 0x1d400000
   c:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
  10:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
  14:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
  18:	736e7500 	cmnvc	lr, #0, 10
  1c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  20:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
  24:	6c007261 	sfmvs	f7, 4, [r0], {97}	; 0x61
  28:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  2c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  30:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  34:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  38:	6f687300 	svcvs	0x00687300
  3c:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  40:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  44:	2064656e 	rsbcs	r6, r4, lr, ror #10
  48:	00746e69 	rsbseq	r6, r4, r9, ror #28
  4c:	74636576 	strbtvc	r6, [r3], #-1398	; 0xfffffa8a
  50:	0073726f 	rsbseq	r7, r3, pc, ror #4
  54:	54676552 	strbtpl	r6, [r7], #-1362	; 0xfffffaae
  58:	6165526f 	cmnvs	r5, pc, ror #4
  5c:	69725764 	ldmdbvs	r2!, {r2, r5, r6, r8, r9, sl, ip, lr}^
  60:	5f006574 	svcpl	0x00006574
  64:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
  68:	5f323374 	svcpl	0x00323374
  6c:	6f430074 	svcvs	0x00430074
  70:	65746e75 	ldrbvs	r6, [r4, #-3701]!	; 0xfffff18b
  74:	6e750072 	mrcvs	0, 3, r0, cr5, cr2, {3}
  78:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  7c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  80:	6c00746e 	cfstrsvs	mvf7, [r0], {110}	; 0x6e
  84:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  88:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  8c:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  90:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  94:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  98:	6f6c0074 	svcvs	0x006c0074
  9c:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  a0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  a4:	00746e69 	rsbseq	r6, r4, r9, ror #28
  a8:	6f5c3a45 	svcvs	0x005c3a45
  ac:	735c7373 	cmpvc	ip, #-872415231	; 0xcc000001
  b0:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
  b4:	7475622d 	ldrbtvc	r6, [r5], #-557	; 0xfffffdd3
  b8:	2d6e6f74 	stclcs	15, cr6, [lr, #-464]!	; 0xfffffe30
  bc:	6e696c62 	cdpvs	12, 6, cr6, cr9, cr2, {3}
  c0:	6e2d796b 	vnmulvs.f16	s14, s26, s23	; <UNPREDICTABLE>
  c4:	61722d6f 	cmnvs	r2, pc, ror #26
  c8:	65645c6d 	strbvs	r5, [r4, #-3181]!	; 0xfffff393
  cc:	5f79616c 	svcpl	0x0079616c
  d0:	6e696c62 	cdpvs	12, 6, cr6, cr9, cr2, {3}
  d4:	305f796b 	subscc	r7, pc, fp, ror #18
  d8:	72730039 	rsbsvc	r0, r3, #57	; 0x39
  dc:	616d2f63 	cmnvs	sp, r3, ror #30
  e0:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
  e4:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
  e8:	37314320 	ldrcc	r4, [r1, -r0, lsr #6]!
  ec:	2e303120 	rsfcssp	f3, f0, f0
  f0:	20312e33 	eorscs	r2, r1, r3, lsr lr
  f4:	31323032 	teqcc	r2, r2, lsr r0
  f8:	34323830 	ldrtcc	r3, [r2], #-2096	; 0xfffff7d0
  fc:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
 100:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
 104:	2d202965 			; <UNDEFINED> instruction: 0x2d202965
 108:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
 10c:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
 110:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
 114:	2d20346d 	cfstrscs	mvf3, [r0, #-436]!	; 0xfffffe4c
 118:	7568746d 	strbvc	r7, [r8, #-1133]!	; 0xfffffb93
 11c:	2d20626d 	sfmcs	f6, 4, [r0, #-436]!	; 0xfffffe4c
 120:	6f6c666d 	svcvs	0x006c666d
 124:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
 128:	733d6962 	teqvc	sp, #1605632	; 0x188000
 12c:	2074666f 	rsbscs	r6, r4, pc, ror #12
 130:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
 134:	613d6863 	teqvs	sp, r3, ror #16
 138:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
 13c:	206d2d65 	rsbcs	r2, sp, r5, ror #26
 140:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 144:	7300304f 	movwvc	r3, #79	; 0x4f
 148:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 14c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 150:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
 154:	5f323374 	svcpl	0x00323374
 158:	6f6c0074 	svcvs	0x006c0074
 15c:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
 160:	7300746e 	movwvc	r7, #1134	; 0x46e
 164:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 168:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
 16c:	Address 0x0000016c is out of bounds.


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
  1c:	0000002c 	andeq	r0, r0, ip, lsr #32

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

