
obj/button_blinky_04.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	00020000 	andeq	r0, r2, r0
 8000004:	08000009 	stmdaeq	r0, {r0, r3}

08000008 <Reset_Handler>:
 8000008:	b490      	push	{r4, r7}
 800000a:	af00      	add	r7, sp, #0
 800000c:	4c06      	ldr	r4, [pc, #24]	; (8000028 <Reset_Handler+0x20>)
 800000e:	6823      	ldr	r3, [r4, #0]
 8000010:	f043 0309 	orr.w	r3, r3, #9
 8000014:	6023      	str	r3, [r4, #0]
 8000016:	4b05      	ldr	r3, [pc, #20]	; (800002c <Reset_Handler+0x24>)
 8000018:	2201      	movs	r2, #1
 800001a:	601a      	str	r2, [r3, #0]
 800001c:	4b04      	ldr	r3, [pc, #16]	; (8000030 <Reset_Handler+0x28>)
 800001e:	4a05      	ldr	r2, [pc, #20]	; (8000034 <Reset_Handler+0x2c>)
 8000020:	681b      	ldr	r3, [r3, #0]
 8000022:	6013      	str	r3, [r2, #0]
 8000024:	e7fa      	b.n	800001c <Reset_Handler+0x14>
 8000026:	bf00      	nop
 8000028:	40023830 	andmi	r3, r2, r0, lsr r8
 800002c:	42418070 	submi	r8, r1, #112	; 0x70
 8000030:	42400200 	submi	r0, r0, #0, 4
 8000034:	424182b8 	submi	r8, r1, #184, 4	; 0x8000000b

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000d1 	ldrdeq	r0, [r0], -r1
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000a50c 	andeq	sl, r0, ip, lsl #10
  14:	00001900 	andeq	r1, r0, r0, lsl #18
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00003008 	andeq	r3, r0, r8
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000004e 	andeq	r0, r0, lr, asr #32
  2c:	4c080102 	stfmis	f0, [r8], {2}
  30:	02000000 	andeq	r0, r0, #0
  34:	01120502 	tsteq	r2, r2, lsl #10
  38:	02020000 	andeq	r0, r2, #0
  3c:	00005a07 	andeq	r5, r0, r7, lsl #20
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	0000009c 	muleq	r0, ip, r0
  48:	00007503 	andeq	r7, r0, r3, lsl #10
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	85070402 	strhi	r0, [r7, #-1026]	; 0xfffffbfe
  58:	02000000 	andeq	r0, r0, #0
  5c:	00970508 	addseq	r0, r7, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00008007 	andeq	r8, r0, r7
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	8a070402 	bhi	1c1080 <__bss_end__+0x1c1080>
  74:	03000000 	movweq	r0, #0
  78:	00000077 	andeq	r0, r0, r7, ror r0
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00000093 	muleq	r0, r3, r0
  8c:	00007006 	andeq	r7, r0, r6
  90:	07000100 	streq	r0, [r0, -r0, lsl #2]
  94:	0000006d 	andeq	r0, r0, sp, rrx
  98:	830a1301 	movwhi	r1, #41729	; 0xa301
  9c:	05000000 	streq	r0, [r0, #-0]
  a0:	00000003 	andeq	r0, r0, r3
  a4:	00000808 	andeq	r0, r0, r8, lsl #16
  a8:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
  ac:	00006905 	andeq	r6, r0, r5, lsl #18
  b0:	00000800 	andeq	r0, r0, r0, lsl #16
  b4:	00003008 	andeq	r3, r0, r8
  b8:	ce9c0100 	fmlgte	f0, f4, f0
  bc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
  c0:	0000000e 	andeq	r0, r0, lr
  c4:	ce181c01 	cdpgt	12, 1, cr1, cr8, cr1, {0}
  c8:	01000000 	mrseq	r0, (UNDEF: 0)
  cc:	040a0054 	streq	r0, [sl], #-84	; 0xffffffac
  d0:	00000077 	andeq	r0, r0, r7, ror r0
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
  14:	00000030 	andeq	r0, r0, r0, lsr r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000f9 	strdeq	r0, [r0], -r9
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
  c4:	05001a05 	streq	r1, [r0, #-2565]	; 0xfffff5fb
  c8:	00000802 	andeq	r0, r0, r2, lsl #16
  cc:	01170308 	tsteq	r7, r8, lsl #6
  d0:	05361005 	ldreq	r1, [r6, #-5]!
  d4:	05052111 	streq	r2, [r5, #-273]	; 0xfffffeef
  d8:	054a0d03 	strbeq	r0, [sl, #-3331]	; 0xfffff2fd
  dc:	02002037 	andeq	r2, r0, #55	; 0x37
  e0:	05350104 	ldreq	r0, [r5, #-260]!	; 0xfffffefc
  e4:	04020009 	streq	r0, [r2], #-9
  e8:	37052001 	strcc	r2, [r5, -r1]
  ec:	01040200 	mrseq	r0, R12_usr
  f0:	00350520 	eorseq	r0, r5, r0, lsr #10
  f4:	20010402 	andcs	r0, r1, r2, lsl #8
  f8:	01000b02 	tsteq	r0, r2, lsl #22
  fc:	Address 0x000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	65736552 	ldrbvs	r6, [r3, #-1362]!	; 0xfffffaae
   4:	61485f74 	hvcvs	34292	; 0x85f4
   8:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
   c:	65520072 	ldrbvs	r0, [r2, #-114]	; 0xffffff8e
  10:	576f5467 	strbpl	r5, [pc, -r7, ror #8]!
  14:	65746972 	ldrbvs	r6, [r4, #-2418]!	; 0xfffff68e
  18:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  1c:	5c73736f 	ldclpl	3, cr7, [r3], #-444	; 0xfffffe44
  20:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  24:	75622d32 	strbvc	r2, [r2, #-3378]!	; 0xfffff2ce
  28:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  2c:	696c622d 	stmdbvs	ip!, {r0, r2, r3, r5, r9, sp, lr}^
  30:	2d796b6e 	vldmdbcs	r9!, {d22-<overflow reg d76>}
  34:	722d6f6e 	eorvc	r6, sp, #440	; 0x1b8
  38:	625c6d61 	subsvs	r6, ip, #6208	; 0x1840
  3c:	6f747475 	svcvs	0x00747475
  40:	6c625f6e 	stclvs	15, cr5, [r2], #-440	; 0xfffffe48
  44:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  48:	0034305f 	eorseq	r3, r4, pc, asr r0
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	68730072 	ldmdavs	r3!, {r1, r4, r5, r6}^
  5c:	2074726f 	rsbscs	r7, r4, pc, ror #4
  60:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  64:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  68:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  6c:	63657600 	cmnvs	r5, #0, 12
  70:	73726f74 	cmnvc	r2, #116, 30	; 0x1d0
  74:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff17c <_etext+0xf7fff144>
  78:	33746e69 	cmncc	r4, #1680	; 0x690
  7c:	00745f32 	rsbseq	r5, r4, r2, lsr pc
  80:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  84:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  88:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  8c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  90:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  94:	6c00746e 	cfstrsvs	mvf7, [r0], {110}	; 0x6e
  98:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  9c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  a0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  a4:	63727300 	cmnvs	r2, #0, 6
  a8:	69616d2f 	stmdbvs	r1!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
  ac:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20373143 	eorscs	r3, r7, r3, asr #2
  b8:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
  bc:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
  c0:	30313230 	eorscc	r3, r1, r0, lsr r2
  c4:	20343238 	eorscs	r3, r4, r8, lsr r2
  c8:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  cc:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  d0:	6d2d2029 	stcvs	0, cr2, [sp, #-164]!	; 0xffffff5c
  d4:	3d757063 	ldclcc	0, cr7, [r5, #-396]!	; 0xfffffe74
  d8:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
  dc:	6d2d7865 	stcvs	8, cr7, [sp, #-404]!	; 0xfffffe6c
  e0:	6d2d2034 	stcvs	0, cr2, [sp, #-208]!	; 0xffffff30
  e4:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
  e8:	6d2d2062 	stcvs	0, cr2, [sp, #-392]!	; 0xfffffe78
  ec:	616f6c66 	cmnvs	pc, r6, ror #24
  f0:	62612d74 	rsbvs	r2, r1, #116, 26	; 0x1d00
  f4:	6f733d69 	svcvs	0x00733d69
  f8:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	; 0xfffffe68
  fc:	6372616d 	cmnvs	r2, #1073741851	; 0x4000001b
 100:	72613d68 	rsbvc	r3, r1, #104, 26	; 0x1a00
 104:	6537766d 	ldrvs	r7, [r7, #-1645]!	; 0xfffff993
 108:	2d206d2d 	stccs	13, cr6, [r0, #-180]!	; 0xffffff4c
 10c:	4f2d2067 	svcmi	0x002d2067
 110:	68730030 	ldmdavs	r3!, {r4, r5}^
 114:	2074726f 	rsbscs	r7, r4, pc, ror #4
 118:	00746e69 	rsbseq	r6, r4, r9, ror #28

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
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000008 	stmdaeq	r0, {r3}
  1c:	00000030 	andeq	r0, r0, r0, lsr r0
  20:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
  24:	41018702 	tstmi	r1, r2, lsl #14
  28:	0000070d 	andeq	r0, r0, sp, lsl #14
