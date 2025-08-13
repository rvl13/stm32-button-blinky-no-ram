
obj/delay_blinky_15.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	08000009 	stmdaeq	r0, {r0, r3}

08000008 <Reset_Handler>:
 8000008:	4d06      	ldr	r5, [pc, #24]	; (8000024 <Reset_Handler+0x1c>)
 800000a:	4b07      	ldr	r3, [pc, #28]	; (8000028 <Reset_Handler+0x20>)
 800000c:	601d      	str	r5, [r3, #0]
 800000e:	4b07      	ldr	r3, [pc, #28]	; (800002c <Reset_Handler+0x24>)
 8000010:	601d      	str	r5, [r3, #0]
 8000012:	4e07      	ldr	r6, [pc, #28]	; (8000030 <Reset_Handler+0x28>)
 8000014:	3c01      	subs	r4, #1
 8000016:	42ac      	cmp	r4, r5
 8000018:	d8fc      	bhi.n	8000014 <Reset_Handler+0xc>
 800001a:	2400      	movs	r4, #0
 800001c:	6833      	ldr	r3, [r6, #0]
 800001e:	43db      	mvns	r3, r3
 8000020:	6033      	str	r3, [r6, #0]
 8000022:	e7f7      	b.n	8000014 <Reset_Handler+0xc>
 8000024:	ffe171b7 			; <UNDEFINED> instruction: 0xffe171b7
 8000028:	4247060c 	submi	r0, r7, #12, 12	; 0xc00000
 800002c:	42418070 	submi	r8, r1, #112	; 0x70
 8000030:	424182b8 	submi	r8, r1, #184, 4	; 0x8000000b

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000ed 	andeq	r0, r0, sp, ror #1
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000c6 	andeq	r0, r0, r6, asr #1
  10:	0000bb0c 	andeq	fp, r0, ip, lsl #22
  14:	00001900 	andeq	r1, r0, r0, lsl #18
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00002c08 	andeq	r2, r0, r8, lsl #24
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000004d 	andeq	r0, r0, sp, asr #32
  2c:	4b080102 	blmi	20043c <__bss_end__+0x20043c>
  30:	02000000 	andeq	r0, r0, #0
  34:	01280502 			; <UNDEFINED> instruction: 0x01280502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00005907 	andeq	r5, r0, r7, lsl #18
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	000000b2 	strheq	r0, [r0], -r2
  48:	00008303 	andeq	r8, r0, r3, lsl #6
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	9b070402 	blls	1c1064 <__bss_end__+0x1c1064>
  58:	02000000 	andeq	r0, r0, #0
  5c:	00ad0508 	adceq	r0, sp, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00009607 	andeq	r9, r0, r7, lsl #12
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	a0070402 	andge	r0, r7, r2, lsl #8
  74:	03000000 	movweq	r0, #0
  78:	00000085 	andeq	r0, r0, r5, lsl #1
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00000093 	muleq	r0, r3, r0
  8c:	00007006 	andeq	r7, r0, r6
  90:	07000000 	streq	r0, [r0, -r0]
  94:	0000006c 	andeq	r0, r0, ip, rrx
  98:	830a1501 	movwhi	r1, #42241	; 0xa501
  9c:	05000000 	streq	r0, [r0, #-0]
  a0:	00000403 	andeq	r0, r0, r3, lsl #8
  a4:	000b0808 	andeq	r0, fp, r8, lsl #16
  a8:	1c010000 	stcne	0, cr0, [r1], {-0}
  ac:	0000691c 	andeq	r6, r0, ip, lsl r9
  b0:	00000800 	andeq	r0, r0, r0, lsl #16
  b4:	00002c08 	andeq	r2, r0, r8, lsl #24
  b8:	ea9c0100 	b	fe7004c0 <_etext+0xf670048c>
  bc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
  c0:	00000074 	andeq	r0, r0, r4, ror r0
  c4:	ea181f01 	b	607cd0 <__bss_end__+0x607cd0>
  c8:	01000000 	mrseq	r0, (UNDEF: 0)
  cc:	008e0956 	addeq	r0, lr, r6, asr r9
  d0:	20010000 	andcs	r0, r1, r0
  d4:	00007717 	andeq	r7, r0, r7, lsl r7
  d8:	09540100 	ldmdbeq	r4, {r8}^
  dc:	00000000 	andeq	r0, r0, r0
  e0:	77172101 	ldrvc	r2, [r7, -r1, lsl #2]
  e4:	01000000 	mrseq	r0, (UNDEF: 0)
  e8:	040a0055 	streq	r0, [sl], #-85	; 0xffffffab
  ec:	00000077 	andeq	r0, r0, r7, ror r0
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
  38:	49010105 	stmdbmi	r1, {r0, r2, r8}
  3c:	00130113 	andseq	r0, r3, r3, lsl r1
  40:	00210600 	eoreq	r0, r1, r0, lsl #12
  44:	0b2f1349 	bleq	bc4d70 <__bss_end__+0xbc4d70>
  48:	34070000 	strcc	r0, [r7], #-0
  4c:	3a0e0300 	bcc	380c54 <__bss_end__+0x380c54>
  50:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  54:	3f13490b 	svccc	0x0013490b
  58:	00180219 	andseq	r0, r8, r9, lsl r2
  5c:	012e0800 			; <UNDEFINED> instruction: 0x012e0800
  60:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  64:	0b3b0b3a 	bleq	ec2d54 <__bss_end__+0xec2d54>
  68:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  6c:	01111349 	tsteq	r1, r9, asr #6
  70:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
  74:	01194297 			; <UNDEFINED> instruction: 0x01194297
  78:	09000013 	stmdbeq	r0, {r0, r1, r4}
  7c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  80:	0b3b0b3a 	bleq	ec2d70 <__bss_end__+0xec2d70>
  84:	13490b39 	movtne	r0, #39737	; 0x9b39
  88:	00001802 	andeq	r1, r0, r2, lsl #16
  8c:	0b000f0a 	bleq	3cbc <__bss_end__+0x3cbc>
  90:	0013490b 	andseq	r4, r3, fp, lsl #18
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000008 	stmdaeq	r0, {r3}
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
  d0:	05171705 	ldreq	r1, [r7, #-1797]	; 0xfffff8fb
  d4:	29052605 	stmdbcs	r5, {r0, r2, r9, sl, sp}
  d8:	25050520 	strcs	r0, [r5, #-1312]	; 0xfffffae0
  dc:	05203705 	streq	r3, [r0, #-1797]!	; 0xfffff8fb
  e0:	10052314 	andne	r2, r5, r4, lsl r3
  e4:	05200903 	streq	r0, [r0, #-2307]!	; 0xfffff6fd
  e8:	1505230c 	strne	r2, [r5, #-780]	; 0xfffffcf4
  ec:	23210532 			; <UNDEFINED> instruction: 0x23210532
  f0:	05201f05 	streq	r1, [r0, #-3845]!	; 0xfffff0fb
  f4:	1005201d 	andne	r2, r5, sp, lsl r0
  f8:	02207603 	eoreq	r7, r0, #3145728	; 0x300000
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
  48:	75003531 	strvc	r3, [r0, #-1329]	; 0xfffffacf
  4c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  50:	2064656e 	rsbcs	r6, r4, lr, ror #10
  54:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
  58:	6f687300 	svcvs	0x00687300
  5c:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  60:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  64:	2064656e 	rsbcs	r6, r4, lr, ror #10
  68:	00746e69 	rsbseq	r6, r4, r9, ror #28
  6c:	74636576 	strbtvc	r6, [r3], #-1398	; 0xfffffa8a
  70:	0073726f 	rsbseq	r7, r3, pc, ror #4
  74:	54676552 	strbtpl	r6, [r7], #-1362	; 0xfffffaae
  78:	6165526f 	cmnvs	r5, pc, ror #4
  7c:	69725764 	ldmdbvs	r2!, {r2, r5, r6, r8, r9, sl, ip, lr}^
  80:	5f006574 	svcpl	0x00006574
  84:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
  88:	5f323374 	svcpl	0x00323374
  8c:	6f430074 	svcvs	0x00430074
  90:	65746e75 	ldrbvs	r6, [r4, #-3701]!	; 0xfffff18b
  94:	6f6c0072 	svcvs	0x006c0072
  98:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  9c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  a0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  a4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  a8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  ac:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  b0:	6f6c2067 	svcvs	0x006c2067
  b4:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
  b8:	7300746e 	movwvc	r7, #1134	; 0x46e
  bc:	6d2f6372 	stcvs	3, cr6, [pc, #-456]!	; fffffefc <_etext+0xf7fffec8>
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
  1c:	0000002c 	andeq	r0, r0, ip, lsr #32
