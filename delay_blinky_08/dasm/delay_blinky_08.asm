
obj/delay_blinky_08.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	08000009 	stmdaeq	r0, {r0, r3}

08000008 <Reset_Handler>:
 8000008:	2400      	movs	r4, #0
 800000a:	4e08      	ldr	r6, [pc, #32]	; (800002c <Reset_Handler+0x24>)
 800000c:	4b08      	ldr	r3, [pc, #32]	; (8000030 <Reset_Handler+0x28>)
 800000e:	2201      	movs	r2, #1
 8000010:	601a      	str	r2, [r3, #0]
 8000012:	4b08      	ldr	r3, [pc, #32]	; (8000034 <Reset_Handler+0x2c>)
 8000014:	2201      	movs	r2, #1
 8000016:	601a      	str	r2, [r3, #0]
 8000018:	4d07      	ldr	r5, [pc, #28]	; (8000038 <Reset_Handler+0x30>)
 800001a:	3401      	adds	r4, #1
 800001c:	42b4      	cmp	r4, r6
 800001e:	d3fc      	bcc.n	800001a <Reset_Handler+0x12>
 8000020:	2400      	movs	r4, #0
 8000022:	682b      	ldr	r3, [r5, #0]
 8000024:	43db      	mvns	r3, r3
 8000026:	602b      	str	r3, [r5, #0]
 8000028:	e7f7      	b.n	800001a <Reset_Handler+0x12>
 800002a:	bf00      	nop
 800002c:	00200b20 	eoreq	r0, r0, r0, lsr #22
 8000030:	4247060c 	submi	r0, r7, #12, 12	; 0xc00000
 8000034:	42418070 	submi	r8, r1, #112	; 0x70
 8000038:	424182b8 	submi	r8, r1, #184, 4	; 0x8000000b

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000f2 	strdeq	r0, [r0], -r2
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000c6 	andeq	r0, r0, r6, asr #1
  10:	0000bb0c 	andeq	fp, r0, ip, lsl #22
  14:	00008900 	andeq	r8, r0, r0, lsl #18
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00003408 	andeq	r3, r0, r8, lsl #8
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000001b 	andeq	r0, r0, fp, lsl r0
  2c:	19080102 	stmdbne	r8, {r1, r8}
  30:	02000000 	andeq	r0, r0, #0
  34:	01280502 			; <UNDEFINED> instruction: 0x01280502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00002707 	andeq	r2, r0, r7, lsl #14
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000080 	andeq	r0, r0, r0, lsl #1
  48:	00005103 	andeq	r5, r0, r3, lsl #2
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	69070402 	stmdbvs	r7, {r1, sl}
  58:	02000000 	andeq	r0, r0, #0
  5c:	007b0508 	rsbseq	r0, fp, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00006407 	andeq	r6, r0, r7, lsl #8
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	6e070402 	cdpvs	4, 0, cr0, cr7, cr2, {0}
  74:	03000000 	movweq	r0, #0
  78:	00000053 	andeq	r0, r0, r3, asr r0
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00007706 	andeq	r7, r0, r6, lsl #14
  8c:	00009800 	andeq	r9, r0, r0, lsl #16
  90:	00700700 	rsbseq	r0, r0, r0, lsl #14
  94:	00000000 	andeq	r0, r0, r0
  98:	00003a08 	andeq	r3, r0, r8, lsl #20
  9c:	0a150100 	beq	5404a4 <__bss_end__+0x5404a4>
  a0:	00000088 	andeq	r0, r0, r8, lsl #1
  a4:	00040305 	andeq	r0, r4, r5, lsl #6
  a8:	0b090800 	bleq	2420b0 <__bss_end__+0x2420b0>
  ac:	01000000 	mrseq	r0, (UNDEF: 0)
  b0:	00691c1c 	rsbeq	r1, r9, ip, lsl ip
  b4:	00080000 	andeq	r0, r8, r0
  b8:	00340800 	eorseq	r0, r4, r0, lsl #16
  bc:	9c010000 	stcls	0, cr0, [r1], {-0}
  c0:	000000ef 	andeq	r0, r0, pc, ror #1
  c4:	0000420a 	andeq	r4, r0, sl, lsl #4
  c8:	181f0100 	ldmdane	pc, {r8}	; <UNPREDICTABLE>
  cc:	000000ef 	andeq	r0, r0, pc, ror #1
  d0:	5c0a5501 	cfstr32pl	mvfx5, [sl], {1}
  d4:	01000000 	mrseq	r0, (UNDEF: 0)
  d8:	00771720 	rsbseq	r1, r7, r0, lsr #14
  dc:	54010000 	strpl	r0, [r1], #-0
  e0:	0000000a 	andeq	r0, r0, sl
  e4:	1d210100 	stfnes	f0, [r1, #-0]
  e8:	00000083 	andeq	r0, r0, r3, lsl #1
  ec:	0b005601 	bleq	158f8 <__bss_end__+0x158f8>
  f0:	00007704 	andeq	r7, r0, r4, lsl #14
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <__bss_end__+0x2c00ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <__bss_end__+0x380c28>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <__bss_end__+0xf82c64>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	49002605 	stmdbmi	r0, {r0, r2, r9, sl, sp}
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	13490101 	movtne	r0, #37121	; 0x9101
  44:	00001301 	andeq	r1, r0, r1, lsl #6
  48:	49002107 	stmdbmi	r0, {r0, r1, r2, r8, sp}
  4c:	000b2f13 	andeq	r2, fp, r3, lsl pc
  50:	00340800 	eorseq	r0, r4, r0, lsl #16
  54:	0b3a0e03 	bleq	e83868 <__bss_end__+0xe83868>
  58:	0b390b3b 	bleq	e42d4c <__bss_end__+0xe42d4c>
  5c:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
  60:	00001802 	andeq	r1, r0, r2, lsl #16
  64:	3f012e09 	svccc	0x00012e09
  68:	3a0e0319 	bcc	380cd4 <__bss_end__+0x380cd4>
  6c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  70:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
  74:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
  78:	97184006 	ldrls	r4, [r8, -r6]
  7c:	13011942 	movwne	r1, #6466	; 0x1942
  80:	340a0000 	strcc	r0, [sl], #-0
  84:	3a0e0300 	bcc	380c8c <__bss_end__+0x380c8c>
  88:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  8c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  90:	0b000018 	bleq	f8 <__bss_end__+0xf8>
  94:	0b0b000f 	bleq	2c00d8 <__bss_end__+0x2c00d8>
  98:	00001349 	andeq	r1, r0, r9, asr #6
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000008 	stmdaeq	r0, {r3}
  14:	00000034 	andeq	r0, r0, r4, lsr r0
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
  a0:	645f0000 	ldrbvs	r0, [pc], #-0	; a8 <__bss_end__+0xa8>
  a4:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
  a8:	745f746c 	ldrbvc	r7, [pc], #-1132	; b0 <__bss_end__+0xb0>
  ac:	73657079 	cmnvc	r5, #121	; 0x79
  b0:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
  b4:	735f0000 	cmpvc	pc, #0
  b8:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
  bc:	00682e74 	rsbeq	r2, r8, r4, ror lr
  c0:	00000003 	andeq	r0, r0, r3
  c4:	05003105 	streq	r3, [r0, #-261]	; 0xfffffefb
  c8:	00000802 	andeq	r0, r0, r2, lsl #16
  cc:	011b0308 	tsteq	fp, r8, lsl #6
  d0:	05161705 	ldreq	r1, [r6, #-1797]	; 0xfffff8fb
  d4:	0505211d 	streq	r2, [r5, #-285]	; 0xfffffee3
  d8:	20290524 	eorcs	r0, r9, r4, lsr #10
  dc:	05320505 	ldreq	r0, [r2, #-1285]!	; 0xfffffafb
  e0:	14052037 	strne	r2, [r5], #-55	; 0xffffffc9
  e4:	25100531 	ldrcs	r0, [r0, #-1329]	; 0xfffffacf
  e8:	05230c05 	streq	r0, [r3, #-3077]!	; 0xfffff3fb
  ec:	21053115 	tstcs	r5, r5, lsl r1
  f0:	201f0522 	andscs	r0, pc, r2, lsr #10
  f4:	05201d05 	streq	r1, [r0, #-3333]!	; 0xfffff2fb
  f8:	20780310 	rsbscs	r0, r8, r0, lsl r3
  fc:	01000a02 	tsteq	r0, r2, lsl #20
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
  24:	73007261 	movwvc	r7, #609	; 0x261
  28:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
  2c:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  30:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  34:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  38:	65760074 	ldrbvs	r0, [r6, #-116]!	; 0xffffff8c
  3c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
  40:	65520073 	ldrbvs	r0, [r2, #-115]	; 0xffffff8d
  44:	526f5467 	rsbpl	r5, pc, #1728053248	; 0x67000000
  48:	57646165 	strbpl	r6, [r4, -r5, ror #2]!
  4c:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
  50:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff158 <_etext+0xf7fff11c>
  54:	33746e69 	cmncc	r4, #1680	; 0x690
  58:	00745f32 	rsbseq	r5, r4, r2, lsr pc
  5c:	6e756f43 	cdpvs	15, 7, cr6, cr5, cr3, {2}
  60:	00726574 	rsbseq	r6, r2, r4, ror r5
  64:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  68:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  6c:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  70:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  74:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  78:	6c00746e 	cfstrsvs	mvf7, [r0], {110}	; 0x6e
  7c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  80:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  84:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  88:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  8c:	5c73736f 	ldclpl	3, cr7, [r3], #-444	; 0xfffffe44
  90:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  94:	75622d32 	strbvc	r2, [r2, #-3378]!	; 0xfffff2ce
  98:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  9c:	696c622d 	stmdbvs	ip!, {r0, r2, r3, r5, r9, sp, lr}^
  a0:	2d796b6e 	vldmdbcs	r9!, {d22-<overflow reg d76>}
  a4:	722d6f6e 	eorvc	r6, sp, #440	; 0x1b8
  a8:	645c6d61 	ldrbvs	r6, [ip], #-3425	; 0xfffff29f
  ac:	79616c65 	stmdbvc	r1!, {r0, r2, r5, r6, sl, fp, sp, lr}^
  b0:	696c625f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
  b4:	5f796b6e 	svcpl	0x00796b6e
  b8:	73003830 	movwvc	r3, #2096	; 0x830
  bc:	6d2f6372 	stcvs	3, cr6, [pc, #-456]!	; fffffefc <_etext+0xf7fffec0>
  c0:	2e6e6961 	vnmulcs.f16	s13, s28, s3	; <UNPREDICTABLE>
  c4:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
  c8:	31432055 	qdaddcc	r2, r5, r3
  cc:	30312037 	eorscc	r2, r1, r7, lsr r0
  d0:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
  d4:	32303220 	eorscc	r3, r0, #32, 4
  d8:	32383031 	eorscc	r3, r8, #49	; 0x31
  dc:	72282034 	eorvc	r2, r8, #52	; 0x34
  e0:	61656c65 	cmnvs	r5, r5, ror #24
  e4:	20296573 	eorcs	r6, r9, r3, ror r5
  e8:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
  ec:	6f633d75 	svcvs	0x00633d75
  f0:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
  f4:	20346d2d 	eorscs	r6, r4, sp, lsr #26
  f8:	68746d2d 	ldmdavs	r4!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
  fc:	20626d75 	rsbcs	r6, r2, r5, ror sp
 100:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
 104:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
 108:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
 10c:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
 110:	616d2d20 	cmnvs	sp, r0, lsr #26
 114:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
 118:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
 11c:	6d2d6537 	cfstr32vs	mvfx6, [sp, #-220]!	; 0xffffff24
 120:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 124:	00304f2d 	eorseq	r4, r0, sp, lsr #30
 128:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 12c:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
 130:	Address 0x00000130 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__bss_end__+0x10d0d24>
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
  1c:	00000034 	andeq	r0, r0, r4, lsr r0
