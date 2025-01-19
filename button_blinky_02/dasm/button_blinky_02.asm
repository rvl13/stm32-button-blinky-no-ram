
obj/button_blinky_02.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20020000 	andcs	r0, r2, r0
 8000004:	08000009 	stmdaeq	r0, {r0, r3}

08000008 <Reset_Handler>:
 8000008:	b480      	push	{r7}
 800000a:	b087      	sub	sp, #28
 800000c:	af00      	add	r7, sp, #0
 800000e:	4b19      	ldr	r3, [pc, #100]	; (8000074 <Reset_Handler+0x6c>)
 8000010:	617b      	str	r3, [r7, #20]
 8000012:	4b19      	ldr	r3, [pc, #100]	; (8000078 <Reset_Handler+0x70>)
 8000014:	613b      	str	r3, [r7, #16]
 8000016:	4b19      	ldr	r3, [pc, #100]	; (800007c <Reset_Handler+0x74>)
 8000018:	60fb      	str	r3, [r7, #12]
 800001a:	4b19      	ldr	r3, [pc, #100]	; (8000080 <Reset_Handler+0x78>)
 800001c:	60bb      	str	r3, [r7, #8]
 800001e:	4b19      	ldr	r3, [pc, #100]	; (8000084 <Reset_Handler+0x7c>)
 8000020:	607b      	str	r3, [r7, #4]
 8000022:	697b      	ldr	r3, [r7, #20]
 8000024:	681b      	ldr	r3, [r3, #0]
 8000026:	f043 0209 	orr.w	r2, r3, #9
 800002a:	697b      	ldr	r3, [r7, #20]
 800002c:	601a      	str	r2, [r3, #0]
 800002e:	693b      	ldr	r3, [r7, #16]
 8000030:	681b      	ldr	r3, [r3, #0]
 8000032:	f023 0203 	bic.w	r2, r3, #3
 8000036:	693b      	ldr	r3, [r7, #16]
 8000038:	601a      	str	r2, [r3, #0]
 800003a:	68bb      	ldr	r3, [r7, #8]
 800003c:	681b      	ldr	r3, [r3, #0]
 800003e:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
 8000042:	f043 5280 	orr.w	r2, r3, #268435456	; 0x10000000
 8000046:	68bb      	ldr	r3, [r7, #8]
 8000048:	601a      	str	r2, [r3, #0]
 800004a:	68fb      	ldr	r3, [r7, #12]
 800004c:	681b      	ldr	r3, [r3, #0]
 800004e:	f003 0301 	and.w	r3, r3, #1
 8000052:	2b00      	cmp	r3, #0
 8000054:	d006      	beq.n	8000064 <Reset_Handler+0x5c>
 8000056:	687b      	ldr	r3, [r7, #4]
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	f443 4280 	orr.w	r2, r3, #16384	; 0x4000
 800005e:	687b      	ldr	r3, [r7, #4]
 8000060:	601a      	str	r2, [r3, #0]
 8000062:	e7f2      	b.n	800004a <Reset_Handler+0x42>
 8000064:	687b      	ldr	r3, [r7, #4]
 8000066:	681b      	ldr	r3, [r3, #0]
 8000068:	f423 4280 	bic.w	r2, r3, #16384	; 0x4000
 800006c:	687b      	ldr	r3, [r7, #4]
 800006e:	601a      	str	r2, [r3, #0]
 8000070:	e7eb      	b.n	800004a <Reset_Handler+0x42>
 8000072:	bf00      	nop
 8000074:	40023830 	andmi	r3, r2, r0, lsr r8
 8000078:	40020000 	andmi	r0, r2, r0
 800007c:	40020010 	andmi	r0, r2, r0, lsl r0
 8000080:	40020c00 	andmi	r0, r2, r0, lsl #24
 8000084:	40020c14 	andmi	r0, r2, r4, lsl ip

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000113 	andeq	r0, r0, r3, lsl r1
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000d9 	ldrdeq	r0, [r0], -r9
  10:	0000ce0c 	andeq	ip, r0, ip, lsl #28
  14:	00000e00 	andeq	r0, r0, r0, lsl #28
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00008008 	andeq	r8, r0, r8
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000006b 	andeq	r0, r0, fp, rrx
  2c:	69080102 	stmdbvs	r8, {r1, r8}
  30:	02000000 	andeq	r0, r0, #0
  34:	013b0502 	teqeq	fp, r2, lsl #10
  38:	02020000 	andeq	r0, r2, #0
  3c:	00007707 	andeq	r7, r0, r7, lsl #14
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	000000c5 	andeq	r0, r0, r5, asr #1
  48:	00009203 	andeq	r9, r0, r3, lsl #4
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	ae070402 	cdpge	4, 0, cr0, cr7, cr2, {0}
  58:	02000000 	andeq	r0, r0, #0
  5c:	00c00508 	sbceq	r0, r0, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	0000a907 	andeq	sl, r0, r7, lsl #18
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	b3070402 	movwlt	r0, #29698	; 0x7402
  74:	03000000 	movweq	r0, #0
  78:	00000094 	muleq	r0, r4, r0
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00007706 	andeq	r7, r0, r6, lsl #14
  8c:	00009800 	andeq	r9, r0, r0, lsl #16
  90:	00700700 	rsbseq	r0, r0, r0, lsl #14
  94:	00010000 	andeq	r0, r1, r0
  98:	00008a08 	andeq	r8, r0, r8, lsl #20
  9c:	0a0b0100 	beq	2c04a4 <__bss_end__+0x2c04a4>
  a0:	00000088 	andeq	r0, r0, r8, lsl #1
  a4:	00000305 	andeq	r0, r0, r5, lsl #6
  a8:	00090800 	andeq	r0, r9, r0, lsl #16
  ac:	01000000 	mrseq	r0, (UNDEF: 0)
  b0:	00690510 	rsbeq	r0, r9, r0, lsl r5
  b4:	00080000 	andeq	r0, r8, r0
  b8:	00800800 	addeq	r0, r0, r0, lsl #16
  bc:	9c010000 	stcls	0, cr0, [r1], {-0}
  c0:	00000110 	andeq	r0, r0, r0, lsl r1
  c4:	00005b0a 	andeq	r5, r0, sl, lsl #22
  c8:	18130100 	ldmdane	r3, {r8}
  cc:	00000110 	andeq	r0, r0, r0, lsl r1
  d0:	0a749102 	beq	1d244e0 <__bss_end__+0x1d244e0>
  d4:	00000145 	andeq	r0, r0, r5, asr #2
  d8:	10181401 	andsne	r1, r8, r1, lsl #8
  dc:	02000001 	andeq	r0, r0, #1
  e0:	9d0a7091 	stcls	0, cr7, [sl, #-580]	; 0xfffffdbc
  e4:	01000000 	mrseq	r0, (UNDEF: 0)
  e8:	01101815 	tsteq	r0, r5, lsl r8
  ec:	91020000 	mrsls	r0, (UNDEF: 2)
  f0:	004d0a6c 	subeq	r0, sp, ip, ror #20
  f4:	16010000 	strne	r0, [r1], -r0
  f8:	00011018 	andeq	r1, r1, r8, lsl r0
  fc:	68910200 	ldmvs	r1, {r9}
 100:	0000410a 	andeq	r4, r0, sl, lsl #2
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
  14:	0b0b0024 	bleq	2c00ac <__bss_end__+0x2c00ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <__bss_end__+0x380c28>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <__bss_end__+0xf82c64>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	49003505 	stmdbmi	r0, {r0, r2, r8, sl, ip, sp}
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
  cc:	010f0308 	tsteq	pc, r8, lsl #6
  d0:	2f3f1805 	svccs	0x003f1805
  d4:	052f2f2f 	streq	r2, [pc, #-3887]!	; fffff1ad <_etext+0xf7fff125>
  d8:	16053114 			; <UNDEFINED> instruction: 0x16053114
  dc:	2e250569 	cfsh64cs	mvdx0, mvdx5, #57
  e0:	052e1405 	streq	r1, [lr, #-1029]!	; 0xfffffbfb
  e4:	40053117 	andmi	r3, r5, r7, lsl r1
  e8:	4a14052e 	bmi	5015a8 <__bss_end__+0x5015a8>
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
   c:	3a450072 	bcc	11401dc <__bss_end__+0x11401dc>
  10:	73736f5c 	cmnvc	r3, #92, 30	; 0x170
  14:	6d74735c 	ldclvs	3, cr7, [r4, #-368]!	; 0xfffffe90
  18:	622d3233 	eorvs	r3, sp, #805306371	; 0x30000003
  1c:	6f747475 	svcvs	0x00747475
  20:	6c622d6e 	stclvs	13, cr2, [r2], #-440	; 0xfffffe48
  24:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  28:	2d6f6e2d 	stclcs	14, cr6, [pc, #-180]!	; ffffff7c <_etext+0xf7fffef4>
  2c:	5c6d6172 	stfple	f6, [sp], #-456	; 0xfffffe38
  30:	74747562 	ldrbtvc	r7, [r4], #-1378	; 0xfffffa9e
  34:	625f6e6f 	subsvs	r6, pc, #1776	; 0x6f0
  38:	6b6e696c 	blvs	1b9a5f0 <__bss_end__+0x1b9a5f0>
  3c:	32305f79 	eorscc	r5, r0, #484	; 0x1e4
  40:	475f7000 	ldrbmi	r7, [pc, -r0]
  44:	444f4950 	strbmi	r4, [pc], #-2384	; 4c <__bss_end__+0x4c>
  48:	52444f5f 	subpl	r4, r4, #380	; 0x17c
  4c:	475f7000 	ldrbmi	r7, [pc, -r0]
  50:	444f4950 	strbmi	r4, [pc], #-2384	; 58 <__bss_end__+0x58>
  54:	444f4d5f 	strbmi	r4, [pc], #-3423	; 5c <__bss_end__+0x5c>
  58:	70005245 	andvc	r5, r0, r5, asr #4
  5c:	4343525f 	movtmi	r5, #12895	; 0x325f
  60:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
  64:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
  68:	736e7500 	cmnvc	lr, #0, 10
  6c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  70:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
  74:	73007261 	movwvc	r7, #609	; 0x261
  78:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
  7c:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  80:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  84:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  88:	65760074 	ldrbvs	r0, [r6, #-116]!	; 0xffffff8c
  8c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
  90:	5f5f0073 	svcpl	0x005f0073
  94:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
  98:	745f3233 	ldrbvc	r3, [pc], #-563	; a0 <__bss_end__+0xa0>
  9c:	475f7000 	ldrbmi	r7, [pc, -r0]
  a0:	414f4950 	cmpmi	pc, r0, asr r9	; <UNPREDICTABLE>
  a4:	5244495f 	subpl	r4, r4, #1556480	; 0x17c000
  a8:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  ac:	6f6c2067 	svcvs	0x006c2067
  b0:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
  b4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  b8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  bc:	00746e69 	rsbseq	r6, r4, r9, ror #28
  c0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  c4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  c8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
  cc:	72730074 	rsbsvc	r0, r3, #116	; 0x74
  d0:	616d2f63 	cmnvs	sp, r3, ror #30
  d4:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
  d8:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
  dc:	37314320 	ldrcc	r4, [r1, -r0, lsr #6]!
  e0:	2e303120 	rsfcssp	f3, f0, f0
  e4:	20312e33 	eorscs	r2, r1, r3, lsr lr
  e8:	31323032 	teqcc	r2, r2, lsr r0
  ec:	34323830 	ldrtcc	r3, [r2], #-2096	; 0xfffff7d0
  f0:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  f4:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  f8:	2d202965 			; <UNDEFINED> instruction: 0x2d202965
  fc:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
 100:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
 104:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
 108:	2d20346d 	cfstrscs	mvf3, [r0, #-436]!	; 0xfffffe4c
 10c:	7568746d 	strbvc	r7, [r8, #-1133]!	; 0xfffffb93
 110:	2d20626d 	sfmcs	f6, 4, [r0, #-436]!	; 0xfffffe4c
 114:	6f6c666d 	svcvs	0x006c666d
 118:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
 11c:	733d6962 	teqvc	sp, #1605632	; 0x188000
 120:	2074666f 	rsbscs	r6, r4, pc, ror #12
 124:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
 128:	613d6863 	teqvs	sp, r3, ror #16
 12c:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
 130:	206d2d65 	rsbcs	r2, sp, r5, ror #26
 134:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 138:	7300304f 	movwvc	r3, #79	; 0x4f
 13c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 140:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 144:	475f7000 	ldrbmi	r7, [pc, -r0]
 148:	414f4950 	cmpmi	pc, r0, asr r9	; <UNPREDICTABLE>
 14c:	444f4d5f 	strbmi	r4, [pc], #-3423	; 154 <__bss_end__+0x154>
 150:	Address 0x00000150 is out of bounds.


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
  1c:	00000080 	andeq	r0, r0, r0, lsl #1
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	200e4101 	andcs	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
