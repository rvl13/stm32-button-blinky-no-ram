
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
   0:	4e06      	ldr	r6, [pc, #24]	; (1c <Reset_Handler+0x1c>)
   2:	4b07      	ldr	r3, [pc, #28]	; (20 <Reset_Handler+0x20>)
   4:	601e      	str	r6, [r3, #0]
   6:	4b07      	ldr	r3, [pc, #28]	; (24 <Reset_Handler+0x24>)
   8:	601e      	str	r6, [r3, #0]
   a:	4d07      	ldr	r5, [pc, #28]	; (28 <Reset_Handler+0x28>)
   c:	3c01      	subs	r4, #1
   e:	2c00      	cmp	r4, #0
  10:	d1fc      	bne.n	c <Reset_Handler+0xc>
  12:	4634      	mov	r4, r6
  14:	682b      	ldr	r3, [r5, #0]
  16:	43db      	mvns	r3, r3
  18:	602b      	str	r3, [r5, #0]
  1a:	e7f7      	b.n	c <Reset_Handler+0xc>
  1c:	001e8e49 	andseq	r8, lr, r9, asr #28
  20:	4247060c 	submi	r0, r7, #12, 12	; 0xc00000
  24:	42418070 	submi	r8, r1, #112	; 0x70
  28:	424182b8 	submi	r8, r1, #184, 4	; 0x8000000b

Disassembly of section .isr_vector:

00000000 <vectors>:
   0:	00000000 	andeq	r0, r0, r0
			0: R_ARM_ABS32	Reset_Handler

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000ed 	andeq	r0, r0, sp, ror #1
   4:	00000004 	andeq	r0, r0, r4
			6: R_ARM_ABS32	.debug_abbrev
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000e5 	andeq	r0, r0, r5, ror #1
			c: R_ARM_ABS32	.debug_str
  10:	0000da0c 	andeq	sp, r0, ip, lsl #20
			11: R_ARM_ABS32	.debug_str
  14:	00001900 	andeq	r1, r0, r0, lsl #18
			15: R_ARM_ABS32	.debug_str
  18:	00000000 	andeq	r0, r0, r0
			19: R_ARM_ABS32	.text
  1c:	00002c00 	andeq	r2, r0, r0, lsl #24
  20:	00000000 	andeq	r0, r0, r0
			21: R_ARM_ABS32	.debug_line
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000163 	andeq	r0, r0, r3, ror #2
			28: R_ARM_ABS32	.debug_str
  2c:	4b080102 	blmi	20043c <Reset_Handler+0x20043c>
			2f: R_ARM_ABS32	.debug_str
  30:	02000000 	andeq	r0, r0, #0
  34:	01470502 	cmpeq	r7, r2, lsl #10
			36: R_ARM_ABS32	.debug_str
  38:	02020000 	andeq	r0, r2, #0
  3c:	00006b07 	andeq	r6, r0, r7, lsl #22
			3d: R_ARM_ABS32	.debug_str
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	0000015a 	andeq	r0, r0, sl, asr r1
			44: R_ARM_ABS32	.debug_str
  48:	00009503 	andeq	r9, r0, r3, lsl #10
			49: R_ARM_ABS32	.debug_str
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	59070402 	stmdbpl	r7, {r1, sl}
			57: R_ARM_ABS32	.debug_str
  58:	02000000 	andeq	r0, r0, #0
  5c:	00cc0508 	sbceq	r0, ip, r8, lsl #10
			5e: R_ARM_ABS32	.debug_str
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	0000b507 	andeq	fp, r0, r7, lsl #10
			65: R_ARM_ABS32	.debug_str
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	a8070402 	stmdage	r7, {r1, sl}
			73: R_ARM_ABS32	.debug_str
  74:	03000000 	movweq	r0, #0
  78:	00000151 	andeq	r0, r0, r1, asr r1
			78: R_ARM_ABS32	.debug_str
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00000093 	muleq	r0, r3, r0
  8c:	00007006 	andeq	r7, r0, r6
  90:	07000000 	streq	r0, [r0, -r0]
  94:	0000007e 	andeq	r0, r0, lr, ror r0
			94: R_ARM_ABS32	.debug_str
  98:	830a1501 	movwhi	r1, #42241	; 0xa501
  9c:	05000000 	streq	r0, [r0, #-0]
  a0:	00000003 	andeq	r0, r0, r3
			a1: R_ARM_ABS32	vectors
  a4:	000b0800 	andeq	r0, fp, r0, lsl #16
			a6: R_ARM_ABS32	.debug_str
  a8:	1c010000 	stcne	0, cr0, [r1], {-0}
  ac:	0000691c 	andeq	r6, r0, ip, lsl r9
  b0:	00000000 	andeq	r0, r0, r0
			b1: R_ARM_ABS32	.text
  b4:	00002c00 	andeq	r2, r0, r0, lsl #24
  b8:	ea9c0100 	b	fe7004c0 <Reset_Handler+0xfe7004c0>
  bc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
  c0:	00000086 	andeq	r0, r0, r6, lsl #1
			c0: R_ARM_ABS32	.debug_str
  c4:	ea181f01 	b	607cd0 <Reset_Handler+0x607cd0>
  c8:	01000000 	mrseq	r0, (UNDEF: 0)
  cc:	00a00955 	adceq	r0, r0, r5, asr r9
			ce: R_ARM_ABS32	.debug_str
  d0:	20010000 	andcs	r0, r1, r0
  d4:	00007717 	andeq	r7, r0, r7, lsl r7
  d8:	09540100 	ldmdbeq	r4, {r8}^
  dc:	00000000 	andeq	r0, r0, r0
			dc: R_ARM_ABS32	.debug_str
  e0:	77172101 	ldrvc	r2, [r7, -r1, lsl #2]
  e4:	01000000 	mrseq	r0, (UNDEF: 0)
  e8:	040a0056 	streq	r0, [sl], #-86	; 0xffffffaa
  ec:	00000077 	andeq	r0, r0, r7, ror r0
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
  14:	0000002c 	andeq	r0, r0, ip, lsr #32
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000fc 	strdeq	r0, [r0], -ip
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
  d0:	05171705 	ldreq	r1, [r7, #-1797]	; 0xfffff8fb
  d4:	29052605 	stmdbcs	r5, {r0, r2, r9, sl, sp}
  d8:	25050520 	strcs	r0, [r5, #-1312]	; 0xfffffae0
  dc:	05203705 	streq	r3, [r0, #-1797]!	; 0xfffff8fb
  e0:	10052314 	andne	r2, r5, r4, lsl r3
  e4:	05200b03 	streq	r0, [r0, #-2819]!	; 0xfffff4fd
  e8:	1505230c 	strne	r2, [r5, #-780]	; 0xfffffcf4
  ec:	23210531 			; <UNDEFINED> instruction: 0x23210531
  f0:	05201f05 	streq	r1, [r0, #-3845]!	; 0xfffff0fb
  f4:	1005201d 	andne	r2, r5, sp, lsl r0
  f8:	02207703 	eoreq	r7, r0, #786432	; 0xc0000
  fc:	01010009 	tsteq	r1, r9

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	616c6544 	cmnvs	ip, r4, asr #10
   4:	6c615679 	stclvs	6, cr5, [r1], #-484	; 0xfffffe1c
   8:	52006575 	andpl	r6, r0, #490733568	; 0x1d400000
   c:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
  10:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
  14:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
  18:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  1c:	5c73736f 	ldclpl	3, cr7, [r3], #-444	; 0xfffffe44
  20:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  24:	75622d32 	strbvc	r2, [r2, #-3378]!	; 0xfffff2ce
  28:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  2c:	696c622d 	stmdbvs	ip!, {r0, r2, r3, r5, r9, sp, lr}^
  30:	2d796b6e 	vldmdbcs	r9!, {d22-<overflow reg d76>}
  34:	722d6f6e 	eorvc	r6, sp, #440	; 0x1b8
  38:	645c6d61 	ldrbvs	r6, [ip], #-3425	; 0xfffff29f
  3c:	79616c65 	stmdbvc	r1!, {r0, r2, r5, r6, sl, fp, sp, lr}^
  40:	696c625f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
  44:	5f796b6e 	svcpl	0x00796b6e
  48:	75003431 	strvc	r3, [r0, #-1073]	; 0xfffffbcf
  4c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  50:	2064656e 	rsbcs	r6, r4, lr, ror #10
  54:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
  58:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  5c:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  60:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  64:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  68:	7300746e 	movwvc	r7, #1134	; 0x46e
  6c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
  70:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  74:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  78:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  7c:	65760074 	ldrbvs	r0, [r6, #-116]!	; 0xffffff8c
  80:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
  84:	65520073 	ldrbvs	r0, [r2, #-115]	; 0xffffff8d
  88:	526f5467 	rsbpl	r5, pc, #1728053248	; 0x67000000
  8c:	57646165 	strbpl	r6, [r4, -r5, ror #2]!
  90:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
  94:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff19c <Reset_Handler+0xfffff19c>
  98:	33746e69 	cmncc	r4, #1680	; 0x690
  9c:	00745f32 	rsbseq	r5, r4, r2, lsr pc
  a0:	6e756f43 	cdpvs	15, 7, cr6, cr5, cr3, {2}
  a4:	00726574 	rsbseq	r6, r2, r4, ror r5
  a8:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  ac:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  b0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  b4:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  b8:	6f6c2067 	svcvs	0x006c2067
  bc:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
  c0:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  c4:	2064656e 	rsbcs	r6, r4, lr, ror #10
  c8:	00746e69 	rsbseq	r6, r4, r9, ror #28
  cc:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  d0:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  d4:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
  d8:	72730074 	rsbsvc	r0, r3, #116	; 0x74
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

