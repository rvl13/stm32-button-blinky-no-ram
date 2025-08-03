
obj/delay_blinky_11.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	08000009 	stmdaeq	r0, {r0, r3}

08000008 <Reset_Handler>:
 8000008:	2401      	movs	r4, #1
 800000a:	4b04      	ldr	r3, [pc, #16]	; (800001c <Reset_Handler+0x14>)
 800000c:	601c      	str	r4, [r3, #0]
 800000e:	4b04      	ldr	r3, [pc, #16]	; (8000020 <Reset_Handler+0x18>)
 8000010:	601c      	str	r4, [r3, #0]
 8000012:	4d04      	ldr	r5, [pc, #16]	; (8000024 <Reset_Handler+0x1c>)
 8000014:	0d63      	lsrs	r3, r4, #21
 8000016:	602b      	str	r3, [r5, #0]
 8000018:	3401      	adds	r4, #1
 800001a:	e7fb      	b.n	8000014 <Reset_Handler+0xc>
 800001c:	4247060c 	submi	r0, r7, #12, 12	; 0xc00000
 8000020:	42418070 	submi	r8, r1, #112	; 0x70
 8000024:	424182b8 	submi	r8, r1, #184, 4	; 0x8000000b

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000bb 	strheq	r0, [r0], -fp
  10:	0000b00c 	andeq	fp, r0, ip
  14:	00000e00 	andeq	r0, r0, r0, lsl #28
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00002008 	andeq	r2, r0, r8
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000042 	andeq	r0, r0, r2, asr #32
  2c:	40080102 	andmi	r0, r8, r2, lsl #2
  30:	02000000 	andeq	r0, r0, #0
  34:	011d0502 	tsteq	sp, r2, lsl #10
  38:	02020000 	andeq	r0, r2, #0
  3c:	00004e07 	andeq	r4, r0, r7, lsl #28
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	000000a7 	andeq	r0, r0, r7, lsr #1
  48:	00007803 	andeq	r7, r0, r3, lsl #16
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	90070402 	andls	r0, r7, r2, lsl #8
  58:	02000000 	andeq	r0, r0, #0
  5c:	00a20508 	adceq	r0, r2, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00008b07 	andeq	r8, r0, r7, lsl #22
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	95070402 	strls	r0, [r7, #-1026]	; 0xfffffbfe
  74:	03000000 	movweq	r0, #0
  78:	0000007a 	andeq	r0, r0, sl, ror r0
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00000093 	muleq	r0, r3, r0
  8c:	00007006 	andeq	r7, r0, r6
  90:	07000000 	streq	r0, [r0, -r0]
  94:	00000061 	andeq	r0, r0, r1, rrx
  98:	830a1401 	movwhi	r1, #41985	; 0xa401
  9c:	05000000 	streq	r0, [r0, #-0]
  a0:	00000403 	andeq	r0, r0, r3, lsl #8
  a4:	00000808 	andeq	r0, r0, r8, lsl #16
  a8:	1b010000 	blne	400b0 <vectors-0x7fbff54>
  ac:	0000691c 	andeq	r6, r0, ip, lsl r9
  b0:	00000800 	andeq	r0, r0, r0, lsl #16
  b4:	00002008 	andeq	r2, r0, r8
  b8:	dc9c0100 	ldfles	f0, [ip], {0}
  bc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
  c0:	00000069 	andeq	r0, r0, r9, rrx
  c4:	dc181e01 	ldcle	14, cr1, [r8], {1}
  c8:	01000000 	mrseq	r0, (UNDEF: 0)
  cc:	00830955 	addeq	r0, r3, r5, asr r9
  d0:	1f010000 	svcne	0x00010000
  d4:	00007717 	andeq	r7, r0, r7, lsl r7
  d8:	00540100 	subseq	r0, r4, r0, lsl #2
  dc:	0077040a 	rsbseq	r0, r7, sl, lsl #8
  e0:	Address 0x000000e0 is out of bounds.


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
  38:	49010105 	stmdbmi	r1, {r0, r2, r8}
  3c:	00130113 	andseq	r0, r3, r3, lsl r1
  40:	00210600 	eoreq	r0, r1, r0, lsl #12
  44:	0b2f1349 	bleq	bc4d70 <vectors-0x743b294>
  48:	34070000 	strcc	r0, [r7], #-0
  4c:	3a0e0300 	bcc	380c54 <vectors-0x7c7f3b0>
  50:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  54:	3f13490b 	svccc	0x0013490b
  58:	00180219 	andseq	r0, r8, r9, lsl r2
  5c:	012e0800 			; <UNDEFINED> instruction: 0x012e0800
  60:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  64:	0b3b0b3a 	bleq	ec2d54 <vectors-0x713d2b0>
  68:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  6c:	01111349 	tsteq	r1, r9, asr #6
  70:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
  74:	01194297 			; <UNDEFINED> instruction: 0x01194297
  78:	09000013 	stmdbeq	r0, {r0, r1, r4}
  7c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  80:	0b3b0b3a 	bleq	ec2d70 <vectors-0x713d294>
  84:	13490b39 	movtne	r0, #39737	; 0x9b39
  88:	00001802 	andeq	r1, r0, r2, lsl #16
  8c:	0b000f0a 	bleq	3cbc <vectors-0x7ffc348>
  90:	0013490b 	andseq	r4, r3, fp, lsl #18
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000008 	stmdaeq	r0, {r3}
  14:	00000020 	andeq	r0, r0, r0, lsr #32
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000101 	andeq	r0, r0, r1, lsl #2
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
  c4:	05003105 	streq	r3, [r0, #-261]	; 0xfffffefb
  c8:	00000802 	andeq	r0, r0, r2, lsl #16
  cc:	011a0308 	tsteq	sl, r8, lsl #6
  d0:	05161705 	ldreq	r1, [r6, #-1797]	; 0xfffff8fb
  d4:	29052505 	stmdbcs	r5, {r0, r2, r8, sl, sp}
  d8:	25050520 	strcs	r0, [r5, #-1312]	; 0xfffffae0
  dc:	05203705 	streq	r3, [r0, #-1797]!	; 0xfffff8fb
  e0:	24052314 	strcs	r2, [r5], #-788	; 0xfffffcec
  e4:	01040200 	mrseq	r0, R12_usr
  e8:	05200b03 	streq	r0, [r0, #-2819]!	; 0xfffff4fd
  ec:	04020019 	streq	r0, [r2], #-25	; 0xffffffe7
  f0:	10052001 	andne	r2, r5, r1
  f4:	01040200 	mrseq	r0, R12_usr
  f8:	00190523 	andseq	r0, r9, r3, lsr #10
  fc:	1d010402 	cfstrsne	mvf0, [r1, #-8]
 100:	01000702 	tsteq	r0, r2, lsl #14
 104:	Address 0x00000104 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	65736552 	ldrbvs	r6, [r3, #-1362]!	; 0xfffffaae
   4:	61485f74 	hvcvs	34292	; 0x85f4
   8:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
   c:	3a450072 	bcc	11401dc <vectors-0x6ebfe28>
  10:	73736f5c 	cmnvc	r3, #92, 30	; 0x170
  14:	6d74735c 	ldclvs	3, cr7, [r4, #-368]!	; 0xfffffe90
  18:	622d3233 	eorvs	r3, sp, #805306371	; 0x30000003
  1c:	6f747475 	svcvs	0x00747475
  20:	6c622d6e 	stclvs	13, cr2, [r2], #-440	; 0xfffffe48
  24:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  28:	2d6f6e2d 	stclcs	14, cr6, [pc, #-180]!	; ffffff7c <_etext+0xf7ffff54>
  2c:	5c6d6172 	stfple	f6, [sp], #-456	; 0xfffffe38
  30:	616c6564 	cmnvs	ip, r4, ror #10
  34:	6c625f79 	stclvs	15, cr5, [r2], #-484	; 0xfffffe1c
  38:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  3c:	0031315f 	eorseq	r3, r1, pc, asr r1
  40:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  44:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  48:	61686320 	cmnvs	r8, r0, lsr #6
  4c:	68730072 	ldmdavs	r3!, {r1, r4, r5, r6}^
  50:	2074726f 	rsbscs	r7, r4, pc, ror #4
  54:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  58:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  5c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  60:	63657600 	cmnvs	r5, #0, 12
  64:	73726f74 	cmnvc	r2, #116, 30	; 0x1d0
  68:	67655200 	strbvs	r5, [r5, -r0, lsl #4]!
  6c:	65526f54 	ldrbvs	r6, [r2, #-3924]	; 0xfffff0ac
  70:	72576461 	subsvc	r6, r7, #1627389952	; 0x61000000
  74:	00657469 	rsbeq	r7, r5, r9, ror #8
  78:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
  7c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  80:	4300745f 	movwmi	r7, #1119	; 0x45f
  84:	746e756f 	strbtvc	r7, [lr], #-1391	; 0xfffffa91
  88:	6c007265 	sfmvs	f7, 4, [r0], {101}	; 0x65
  8c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  90:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  94:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  98:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  9c:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  a0:	6f6c0074 	svcvs	0x006c0074
  a4:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  a8:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	2f637273 	svccs	0x00637273
  b4:	6e69616d 	powvsez	f6, f1, #5.0
  b8:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
  bc:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
  c0:	31203731 			; <UNDEFINED> instruction: 0x31203731
  c4:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
  c8:	30322031 	eorscc	r2, r2, r1, lsr r0
  cc:	38303132 	ldmdacc	r0!, {r1, r4, r5, r8, ip, sp}
  d0:	28203432 	stmdacs	r0!, {r1, r4, r5, sl, ip, sp}
  d4:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  d8:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  dc:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  e0:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
  e4:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
  e8:	346d2d78 	strbtcc	r2, [sp], #-3448	; 0xfffff288
  ec:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
  f0:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
  f4:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
  f8:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
  fc:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
 100:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
 104:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
 108:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
 10c:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 110:	2d653776 	stclcs	7, cr3, [r5, #-472]!	; 0xfffffe28
 114:	672d206d 	strvs	r2, [sp, -sp, rrx]!
 118:	304f2d20 	subcc	r2, pc, r0, lsr #26
 11c:	6f687300 	svcvs	0x00687300
 120:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
 124:	Address 0x00000124 is out of bounds.


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
  1c:	00000020 	andeq	r0, r0, r0, lsr #32
