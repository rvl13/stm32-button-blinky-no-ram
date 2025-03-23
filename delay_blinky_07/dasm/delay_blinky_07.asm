
obj/delay_blinky_07.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20020000 	andcs	r0, r2, r0
 8000004:	0800006d 	stmdaeq	r0, {r0, r2, r3, r5, r6}

08000008 <main>:
 8000008:	b480      	push	{r7}
 800000a:	b085      	sub	sp, #20
 800000c:	af00      	add	r7, sp, #0
 800000e:	4b13      	ldr	r3, [pc, #76]	; (800005c <main+0x54>)
 8000010:	60bb      	str	r3, [r7, #8]
 8000012:	4b13      	ldr	r3, [pc, #76]	; (8000060 <main+0x58>)
 8000014:	607b      	str	r3, [r7, #4]
 8000016:	4b13      	ldr	r3, [pc, #76]	; (8000064 <main+0x5c>)
 8000018:	603b      	str	r3, [r7, #0]
 800001a:	2300      	movs	r3, #0
 800001c:	60fb      	str	r3, [r7, #12]
 800001e:	68bb      	ldr	r3, [r7, #8]
 8000020:	681b      	ldr	r3, [r3, #0]
 8000022:	f043 0208 	orr.w	r2, r3, #8
 8000026:	68bb      	ldr	r3, [r7, #8]
 8000028:	601a      	str	r2, [r3, #0]
 800002a:	687b      	ldr	r3, [r7, #4]
 800002c:	681b      	ldr	r3, [r3, #0]
 800002e:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
 8000032:	f043 5280 	orr.w	r2, r3, #268435456	; 0x10000000
 8000036:	687b      	ldr	r3, [r7, #4]
 8000038:	601a      	str	r2, [r3, #0]
 800003a:	bf00      	nop
 800003c:	68fb      	ldr	r3, [r7, #12]
 800003e:	1c5a      	adds	r2, r3, #1
 8000040:	60fa      	str	r2, [r7, #12]
 8000042:	4a09      	ldr	r2, [pc, #36]	; (8000068 <main+0x60>)
 8000044:	4293      	cmp	r3, r2
 8000046:	d9f9      	bls.n	800003c <main+0x34>
 8000048:	2300      	movs	r3, #0
 800004a:	60fb      	str	r3, [r7, #12]
 800004c:	683b      	ldr	r3, [r7, #0]
 800004e:	681b      	ldr	r3, [r3, #0]
 8000050:	f483 4280 	eor.w	r2, r3, #16384	; 0x4000
 8000054:	683b      	ldr	r3, [r7, #0]
 8000056:	601a      	str	r2, [r3, #0]
 8000058:	e7ef      	b.n	800003a <main+0x32>
 800005a:	bf00      	nop
 800005c:	40023830 	andmi	r3, r2, r0, lsr r8
 8000060:	40020c00 	andmi	r0, r2, r0, lsl #24
 8000064:	40020c14 	andmi	r0, r2, r4, lsl ip
 8000068:	000aae5f 	andeq	sl, sl, pc, asr lr

0800006c <Reset_Handler>:
 800006c:	b580      	push	{r7, lr}
 800006e:	b086      	sub	sp, #24
 8000070:	af00      	add	r7, sp, #0
 8000072:	4a1a      	ldr	r2, [pc, #104]	; (80000dc <Reset_Handler+0x70>)
 8000074:	4b1a      	ldr	r3, [pc, #104]	; (80000e0 <Reset_Handler+0x74>)
 8000076:	1ad3      	subs	r3, r2, r3
 8000078:	607b      	str	r3, [r7, #4]
 800007a:	4b19      	ldr	r3, [pc, #100]	; (80000e0 <Reset_Handler+0x74>)
 800007c:	617b      	str	r3, [r7, #20]
 800007e:	4b19      	ldr	r3, [pc, #100]	; (80000e4 <Reset_Handler+0x78>)
 8000080:	613b      	str	r3, [r7, #16]
 8000082:	2300      	movs	r3, #0
 8000084:	60fb      	str	r3, [r7, #12]
 8000086:	e00a      	b.n	800009e <Reset_Handler+0x32>
 8000088:	693a      	ldr	r2, [r7, #16]
 800008a:	1c53      	adds	r3, r2, #1
 800008c:	613b      	str	r3, [r7, #16]
 800008e:	697b      	ldr	r3, [r7, #20]
 8000090:	1c59      	adds	r1, r3, #1
 8000092:	6179      	str	r1, [r7, #20]
 8000094:	7812      	ldrb	r2, [r2, #0]
 8000096:	701a      	strb	r2, [r3, #0]
 8000098:	68fb      	ldr	r3, [r7, #12]
 800009a:	3301      	adds	r3, #1
 800009c:	60fb      	str	r3, [r7, #12]
 800009e:	68fa      	ldr	r2, [r7, #12]
 80000a0:	687b      	ldr	r3, [r7, #4]
 80000a2:	429a      	cmp	r2, r3
 80000a4:	d3f0      	bcc.n	8000088 <Reset_Handler+0x1c>
 80000a6:	4a10      	ldr	r2, [pc, #64]	; (80000e8 <Reset_Handler+0x7c>)
 80000a8:	4b10      	ldr	r3, [pc, #64]	; (80000ec <Reset_Handler+0x80>)
 80000aa:	1ad3      	subs	r3, r2, r3
 80000ac:	607b      	str	r3, [r7, #4]
 80000ae:	4b0f      	ldr	r3, [pc, #60]	; (80000ec <Reset_Handler+0x80>)
 80000b0:	617b      	str	r3, [r7, #20]
 80000b2:	2300      	movs	r3, #0
 80000b4:	60bb      	str	r3, [r7, #8]
 80000b6:	e007      	b.n	80000c8 <Reset_Handler+0x5c>
 80000b8:	697b      	ldr	r3, [r7, #20]
 80000ba:	1c5a      	adds	r2, r3, #1
 80000bc:	617a      	str	r2, [r7, #20]
 80000be:	2200      	movs	r2, #0
 80000c0:	701a      	strb	r2, [r3, #0]
 80000c2:	68bb      	ldr	r3, [r7, #8]
 80000c4:	3301      	adds	r3, #1
 80000c6:	60bb      	str	r3, [r7, #8]
 80000c8:	68ba      	ldr	r2, [r7, #8]
 80000ca:	687b      	ldr	r3, [r7, #4]
 80000cc:	429a      	cmp	r2, r3
 80000ce:	d3f3      	bcc.n	80000b8 <Reset_Handler+0x4c>
 80000d0:	f7ff ff9a 	bl	8000008 <main>
 80000d4:	bf00      	nop
 80000d6:	3718      	adds	r7, #24
 80000d8:	46bd      	mov	sp, r7
 80000da:	bd80      	pop	{r7, pc}
 80000dc:	20000000 	andcs	r0, r0, r0
 80000e0:	20000000 	andcs	r0, r0, r0
 80000e4:	080000f0 	stmdaeq	r0, {r4, r5, r6, r7}
 80000e8:	20000000 	andcs	r0, r0, r0
 80000ec:	20000000 	andcs	r0, r0, r0

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000e2 	andeq	r0, r0, r2, ror #1
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000c3 	andeq	r0, r0, r3, asr #1
  10:	0000b80c 	andeq	fp, r0, ip, lsl #16
  14:	00008600 	andeq	r8, r0, r0, lsl #12
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00006408 	andeq	r6, r0, r8, lsl #8
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000002a 	andeq	r0, r0, sl, lsr #32
  2c:	28080102 	stmdacs	r8, {r1, r8}
  30:	02000000 	andeq	r0, r0, #0
  34:	01250502 			; <UNDEFINED> instruction: 0x01250502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00003607 	andeq	r3, r0, r7, lsl #12
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	0000007d 	andeq	r0, r0, sp, ror r0
  48:	00004903 	andeq	r4, r0, r3, lsl #18
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	66070402 	strvs	r0, [r7], -r2, lsl #8
  58:	02000000 	andeq	r0, r0, #0
  5c:	00780508 	rsbseq	r0, r8, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00006107 	andeq	r6, r0, r7, lsl #2
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	6b070402 	blvs	1c1080 <vectors-0x7e3ef80>
  74:	03000000 	movweq	r0, #0
  78:	0000004b 	andeq	r0, r0, fp, asr #32
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00005c06 	andeq	r5, r0, r6, lsl #24
  8c:	05060100 	streq	r0, [r6, #-256]	; 0xffffff00
  90:	00000069 	andeq	r0, r0, r9, rrx
  94:	08000008 	stmdaeq	r0, {r3}
  98:	00000064 	andeq	r0, r0, r4, rrx
  9c:	00df9c01 	sbcseq	r9, pc, r1, lsl #24
  a0:	1a070000 	bne	1c00a8 <vectors-0x7e3ff58>
  a4:	01000000 	mrseq	r0, (UNDEF: 0)
  a8:	00df1809 	sbcseq	r1, pc, r9, lsl #16
  ac:	91020000 	mrsls	r0, (UNDEF: 2)
  b0:	000c0770 	andeq	r0, ip, r0, ror r7
  b4:	0a010000 	beq	400bc <vectors-0x7fbff44>
  b8:	0000df18 	andeq	sp, r0, r8, lsl pc
  bc:	6c910200 	lfmvs	f0, 4, [r1], {0}
  c0:	00000007 	andeq	r0, r0, r7
  c4:	180b0100 	stmdane	fp, {r8}
  c8:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
  cc:	07689102 	strbeq	r9, [r8, -r2, lsl #2]!
  d0:	00000054 	andeq	r0, r0, r4, asr r0
  d4:	770e0c01 	strvc	r0, [lr, -r1, lsl #24]
  d8:	02000000 	andeq	r0, r0, #0
  dc:	08007491 	stmdaeq	r0, {r0, r4, r7, sl, ip, sp, lr}
  e0:	00008304 	andeq	r8, r0, r4, lsl #6
  e4:	01760000 	cmneq	r6, r0
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000078 	andeq	r0, r0, r8, ror r0
  f0:	00c30104 	sbceq	r0, r3, r4, lsl #2
  f4:	560c0000 	strpl	r0, [ip], -r0
  f8:	86000001 	strhi	r0, [r0], -r1
  fc:	6c000000 	stcvs	0, cr0, [r0], {-0}
 100:	84080000 	strhi	r0, [r8], #-0
 104:	01000000 	mrseq	r0, (UNDEF: 0)
 108:	02000001 	andeq	r0, r0, #1
 10c:	002a0601 	eoreq	r0, sl, r1, lsl #12
 110:	36030000 	strcc	r0, [r3], -r0
 114:	02000001 	andeq	r0, r0, #1
 118:	0038182b 	eorseq	r1, r8, fp, lsr #16
 11c:	01020000 	mrseq	r0, (UNDEF: 2)
 120:	00002808 	andeq	r2, r0, r8, lsl #16
 124:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
 128:	00000125 	andeq	r0, r0, r5, lsr #2
 12c:	36070202 	strcc	r0, [r7], -r2, lsl #4
 130:	02000000 	andeq	r0, r0, #0
 134:	007d0504 	rsbseq	r0, sp, r4, lsl #10
 138:	49030000 	stmdbmi	r3, {}	; <UNPREDICTABLE>
 13c:	02000000 	andeq	r0, r0, #0
 140:	0060194f 	rsbeq	r1, r0, pc, asr #18
 144:	04020000 	streq	r0, [r2], #-0
 148:	00006607 	andeq	r6, r0, r7, lsl #12
 14c:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
 150:	00000078 	andeq	r0, r0, r8, ror r0
 154:	61070802 	tstvs	r7, r2, lsl #16
 158:	04000000 	streq	r0, [r0], #-0
 15c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 160:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
 164:	00006b07 	andeq	r6, r0, r7, lsl #22
 168:	01380300 	teqeq	r8, r0, lsl #6
 16c:	18030000 	stmdane	r3, {}	; <UNPREDICTABLE>
 170:	00002c13 	andeq	r2, r0, r3, lsl ip
 174:	004b0300 	subeq	r0, fp, r0, lsl #6
 178:	30030000 	andcc	r0, r3, r0
 17c:	00005414 	andeq	r5, r0, r4, lsl r4
 180:	012f0500 			; <UNDEFINED> instruction: 0x012f0500
 184:	15010000 	strne	r0, [r1, #-0]
 188:	00008f11 	andeq	r8, r0, r1, lsl pc
 18c:	01780500 	cmneq	r8, r0, lsl #10
 190:	16010000 	strne	r0, [r1], -r0
 194:	00008f11 	andeq	r8, r0, r1, lsl pc
 198:	01920500 	orrseq	r0, r2, r0, lsl #10
 19c:	17010000 	strne	r0, [r1, -r0]
 1a0:	00008f11 	andeq	r8, r0, r1, lsl pc
 1a4:	01870500 	orreq	r0, r7, r0, lsl #10
 1a8:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
 1ac:	00008f11 	andeq	r8, r0, r1, lsl pc
 1b0:	01450500 	cmpeq	r5, r0, lsl #10
 1b4:	1a010000 	bne	401bc <vectors-0x7fbfe44>
 1b8:	00008f11 	andeq	r8, r0, r1, lsl pc
 1bc:	008f0600 	addeq	r0, pc, r0, lsl #12
 1c0:	00e70000 	rsceq	r0, r7, r0
 1c4:	7c070000 	stcvc	0, cr0, [r7], {-0}
 1c8:	01000000 	mrseq	r0, (UNDEF: 0)
 1cc:	017f0800 	cmneq	pc, r0, lsl #16
 1d0:	2b010000 	blcs	401d8 <vectors-0x7fbfe28>
 1d4:	0000d70a 	andeq	sp, r0, sl, lsl #14
 1d8:	00030500 	andeq	r0, r3, r0, lsl #10
 1dc:	09080000 	stmdbeq	r8, {}	; <UNPREDICTABLE>
 1e0:	0000016a 	andeq	r0, r0, sl, ror #2
 1e4:	6c063101 	stfvss	f3, [r6], {1}
 1e8:	84080000 	strhi	r0, [r8], #-0
 1ec:	01000000 	mrseq	r0, (UNDEF: 0)
 1f0:	0001739c 	muleq	r1, ip, r3
 1f4:	014b0a00 	cmpeq	fp, r0, lsl #20
 1f8:	34010000 	strcc	r0, [r1], #-0
 1fc:	00008f0b 	andeq	r8, r0, fp, lsl #30
 200:	64910200 	ldrvs	r0, [r1], #512	; 0x200
 204:	0001400a 	andeq	r4, r1, sl
 208:	0b390100 	bleq	e40610 <vectors-0x71bf9f0>
 20c:	00000173 	andeq	r0, r0, r3, ror r1
 210:	0a749102 	beq	1d24620 <vectors-0x62db9e0>
 214:	0000018d 	andeq	r0, r0, sp, lsl #3
 218:	730b3a01 	movwvc	r3, #47617	; 0xba01
 21c:	02000001 	andeq	r0, r0, #1
 220:	820b7091 	andhi	r7, fp, #145	; 0x91
 224:	24080000 	strcs	r0, [r8], #-0
 228:	59000000 	stmdbpl	r0, {}	; <UNPREDICTABLE>
 22c:	0a000001 	beq	238 <vectors-0x7fffdc8>
 230:	0000019b 	muleq	r0, fp, r1
 234:	8f103d01 	svchi	0x00103d01
 238:	02000000 	andeq	r0, r0, #0
 23c:	0c006c91 	stceq	12, cr6, [r0], {145}	; 0x91
 240:	080000b2 	stmdaeq	r0, {r1, r4, r5, r7}
 244:	0000001e 	andeq	r0, r0, lr, lsl r0
 248:	00019b0a 	andeq	r9, r1, sl, lsl #22
 24c:	10480100 	subne	r0, r8, r0, lsl #2
 250:	0000008f 	andeq	r0, r0, pc, lsl #1
 254:	00689102 	rsbeq	r9, r8, r2, lsl #2
 258:	83040d00 	movwhi	r0, #19712	; 0x4d00
 25c:	00000000 	andeq	r0, r0, r0

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <vectors-0x707d39c>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	49003505 	stmdbmi	r0, {r0, r2, r8, sl, ip, sp}
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  44:	0b3a0e03 	bleq	e83858 <vectors-0x717c7a8>
  48:	0b390b3b 	bleq	e42d3c <vectors-0x71bd2c4>
  4c:	13491927 	movtne	r1, #39207	; 0x9927
  50:	06120111 			; <UNDEFINED> instruction: 0x06120111
  54:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  58:	00130119 	andseq	r0, r3, r9, lsl r1
  5c:	00340700 	eorseq	r0, r4, r0, lsl #14
  60:	0b3a0e03 	bleq	e83874 <vectors-0x717c78c>
  64:	0b390b3b 	bleq	e42d58 <vectors-0x71bd2a8>
  68:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  6c:	0f080000 	svceq	0x00080000
  70:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  74:	00000013 	andeq	r0, r0, r3, lsl r0
  78:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
  7c:	030b130e 	movweq	r1, #45838	; 0xb30e
  80:	110e1b0e 	tstne	lr, lr, lsl #22
  84:	10061201 	andne	r1, r6, r1, lsl #4
  88:	02000017 	andeq	r0, r0, #23
  8c:	0b0b0024 	bleq	2c0124 <vectors-0x7d3fedc>
  90:	0e030b3e 	vmoveq.16	d3[0], r0
  94:	16030000 	strne	r0, [r3], -r0
  98:	3a0e0300 	bcc	380ca0 <vectors-0x7c7f360>
  9c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  a0:	0013490b 	andseq	r4, r3, fp, lsl #18
  a4:	00240400 	eoreq	r0, r4, r0, lsl #8
  a8:	0b3e0b0b 	bleq	f82cdc <vectors-0x707d324>
  ac:	00000803 	andeq	r0, r0, r3, lsl #16
  b0:	03003405 	movweq	r3, #1029	; 0x405
  b4:	3b0b3a0e 	blcc	2ce8f4 <vectors-0x7d3170c>
  b8:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  bc:	3c193f13 	ldccc	15, cr3, [r9], {19}
  c0:	06000019 			; <UNDEFINED> instruction: 0x06000019
  c4:	13490101 	movtne	r0, #37121	; 0x9101
  c8:	00001301 	andeq	r1, r0, r1, lsl #6
  cc:	49002107 	stmdbmi	r0, {r0, r1, r2, r8, sp}
  d0:	000b2f13 	andeq	r2, fp, r3, lsl pc
  d4:	00340800 	eorseq	r0, r4, r0, lsl #16
  d8:	0b3a0e03 	bleq	e838ec <vectors-0x717c714>
  dc:	0b390b3b 	bleq	e42dd0 <vectors-0x71bd230>
  e0:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
  e4:	00001802 	andeq	r1, r0, r2, lsl #16
  e8:	3f012e09 	svccc	0x00012e09
  ec:	3a0e0319 	bcc	380d58 <vectors-0x7c7f2a8>
  f0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  f4:	1119270b 	tstne	r9, fp, lsl #14
  f8:	40061201 	andmi	r1, r6, r1, lsl #4
  fc:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 100:	00001301 	andeq	r1, r0, r1, lsl #6
 104:	0300340a 	movweq	r3, #1034	; 0x40a
 108:	3b0b3a0e 	blcc	2ce948 <vectors-0x7d316b8>
 10c:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 110:	00180213 	andseq	r0, r8, r3, lsl r2
 114:	010b0b00 	tsteq	fp, r0, lsl #22
 118:	06120111 			; <UNDEFINED> instruction: 0x06120111
 11c:	00001301 	andeq	r1, r0, r1, lsl #6
 120:	11010b0c 	tstne	r1, ip, lsl #22
 124:	00061201 	andeq	r1, r6, r1, lsl #4
 128:	000f0d00 	andeq	r0, pc, r0, lsl #26
 12c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 130:	Address 0x00000130 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000008 	stmdaeq	r0, {r3}
  14:	00000064 	andeq	r0, r0, r4, rrx
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00e60002 	rsceq	r0, r6, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0800006c 	stmdaeq	r0, {r2, r3, r5, r6}
  34:	00000084 	andeq	r0, r0, r4, lsl #1
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
  a0:	645f0000 	ldrbvs	r0, [pc], #-0	; a8 <vectors-0x7ffff58>
  a4:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
  a8:	745f746c 	ldrbvc	r7, [pc], #-1132	; b0 <vectors-0x7ffff50>
  ac:	73657079 	cmnvc	r5, #121	; 0x79
  b0:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
  b4:	735f0000 	cmpvc	pc, #0
  b8:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
  bc:	00682e74 	rsbeq	r2, r8, r4, ror lr
  c0:	00000003 	andeq	r0, r0, r3
  c4:	05001105 	streq	r1, [r0, #-261]	; 0xfffffefb
  c8:	00000802 	andeq	r0, r0, r2, lsl #16
  cc:	18051708 	stmdane	r5, {r3, r8, r9, sl, ip}
  d0:	052f2f3f 	streq	r2, [pc, #-3903]!	; fffff199 <__bss_end__+0xdffff199>
  d4:	14052f0e 	strne	r2, [r5], #-3854	; 0xfffff0f2
  d8:	69170531 	ldmdbvs	r7, {r0, r4, r5, r8, sl}
  dc:	052e4005 	streq	r4, [lr, #-5]!
  e0:	0e054a14 			; <UNDEFINED> instruction: 0x0e054a14
  e4:	00170533 	andseq	r0, r7, r3, lsr r5
  e8:	20010402 	andcs	r0, r1, r2, lsl #8
  ec:	02000e05 	andeq	r0, r0, #5, 28	; 0x50
  f0:	053c0104 	ldreq	r0, [ip, #-260]!	; 0xfffffefc
  f4:	16053d11 			; <UNDEFINED> instruction: 0x16053d11
  f8:	620e0531 	andvs	r0, lr, #205520896	; 0xc400000
  fc:	01000a02 	tsteq	r0, r2, lsl #20
 100:	00014901 	andeq	r4, r1, r1, lsl #18
 104:	c3000300 	movwgt	r0, #768	; 0x300
 108:	02000000 	andeq	r0, r0, #0
 10c:	0d0efb01 	vstreq	d15, [lr, #-4]
 110:	01010100 	mrseq	r0, (UNDEF: 17)
 114:	00000001 	andeq	r0, r0, r1
 118:	01000001 	tsteq	r0, r1
 11c:	00637273 	rsbeq	r7, r3, r3, ror r2
 120:	735c3a64 	cmpvc	ip, #100, 20	; 0x64000
 124:	5c385f77 	ldcpl	15, cr5, [r8], #-476	; 0xfffffe24
 128:	5f6d7261 	svcpl	0x006d7261
 12c:	5f636367 	svcpl	0x00636367
 130:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
 134:	2030315c 	eorscs	r3, r0, ip, asr r1
 138:	31323032 	teqcc	r2, r2, lsr r0
 13c:	5c30312e 	ldfpls	f3, [r0], #-184	; 0xffffff48
 140:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 144:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 148:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 14c:	6e695c69 	cdpvs	12, 6, cr5, cr9, cr9, {3}
 150:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 154:	616d5c65 	cmnvs	sp, r5, ror #24
 158:	6e696863 	cdpvs	8, 6, cr6, cr9, cr3, {3}
 15c:	3a640065 	bcc	19002f8 <vectors-0x66ffd08>
 160:	5f77735c 	svcpl	0x0077735c
 164:	72615c38 	rsbvc	r5, r1, #56, 24	; 0x3800
 168:	63675f6d 	cmnvs	r7, #436	; 0x1b4
 16c:	30315f63 	eorscc	r5, r1, r3, ror #30
 170:	315c332e 	cmpcc	ip, lr, lsr #6
 174:	30322030 	eorscc	r2, r2, r0, lsr r0
 178:	312e3132 			; <UNDEFINED> instruction: 0x312e3132
 17c:	72615c30 	rsbvc	r5, r1, #48, 24	; 0x3000
 180:	6f6e2d6d 	svcvs	0x006e2d6d
 184:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 188:	5c696261 	sfmpl	f6, 2, [r9], #-388	; 0xfffffe7c
 18c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 190:	5c656475 	cfstrdpl	mvd6, [r5], #-468	; 0xfffffe2c
 194:	00737973 	rsbseq	r7, r3, r3, ror r9
 198:	6d747300 	ldclvs	3, cr7, [r4, #-0]
 19c:	735f3233 	cmpvc	pc, #805306371	; 0x30000003
 1a0:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 1a4:	632e7075 			; <UNDEFINED> instruction: 0x632e7075
 1a8:	00000100 	andeq	r0, r0, r0, lsl #2
 1ac:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
 1b0:	746c7561 	strbtvc	r7, [ip], #-1377	; 0xfffffa9f
 1b4:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 1b8:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 1bc:	00000200 	andeq	r0, r0, r0, lsl #4
 1c0:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
 1c4:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 1c8:	00030068 	andeq	r0, r3, r8, rrx
 1cc:	1d050000 	stcne	0, cr0, [r5, #-0]
 1d0:	6c020500 	cfstr32vs	mvfx0, [r2], {-0}
 1d4:	03080000 	movweq	r0, #32768	; 0x8000
 1d8:	18050130 	stmdane	r5, {r4, r5, r8}
 1dc:	202c053f 	eorcs	r0, ip, pc, lsr r5
 1e0:	33200b05 			; <UNDEFINED> instruction: 0x33200b05
 1e4:	3110052f 	tstcc	r0, pc, lsr #10
 1e8:	052e0205 	streq	r0, [lr, #-517]!	; 0xfffffdfb
 1ec:	04020012 	streq	r0, [r2], #-18	; 0xffffffee
 1f0:	08052103 	stmdaeq	r5, {r0, r1, r8, sp}
 1f4:	03040200 	movweq	r0, #16896	; 0x4200
 1f8:	000d053c 	andeq	r0, sp, ip, lsr r5
 1fc:	3c030402 	cfstrscc	mvf0, [r3], {2}
 200:	02000b05 	andeq	r0, r0, #5120	; 0x1400
 204:	05200304 	streq	r0, [r0, #-772]!	; 0xfffffcfc
 208:	04020031 	streq	r0, [r2], #-49	; 0xffffffcf
 20c:	02051f03 	andeq	r1, r5, #3, 30
 210:	01040200 	mrseq	r0, R12_usr
 214:	4f0f053c 	svcmi	0x000f053c
 218:	05202205 	streq	r2, [r0, #-517]!	; 0xfffffdfb
 21c:	0705200d 	streq	r2, [r5, -sp]
 220:	31100531 	tstcc	r0, r1, lsr r5
 224:	052e0205 	streq	r0, [lr, #-517]!	; 0xfffffdfb
 228:	04020008 	streq	r0, [r2], #-8
 22c:	0b052103 	bleq	148640 <vectors-0x7eb79c0>
 230:	03040200 	movweq	r0, #16896	; 0x4200
 234:	0031053c 	eorseq	r0, r1, ip, lsr r5
 238:	2d030402 	cfstrscs	mvf0, [r3, #-8]
 23c:	02000205 	andeq	r0, r0, #1342177280	; 0x50000000
 240:	033c0104 	teqeq	ip, #4, 2
 244:	01054a09 	tsteq	r5, r9, lsl #20
 248:	000e0230 	andeq	r0, lr, r0, lsr r2
 24c:	Address 0x0000024c is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	50475f70 	subpl	r5, r7, r0, ror pc
   4:	5f444f49 	svcpl	0x00444f49
   8:	0052444f 	subseq	r4, r2, pc, asr #8
   c:	50475f70 	subpl	r5, r7, r0, ror pc
  10:	5f444f49 	svcpl	0x00444f49
  14:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
  18:	5f700052 	svcpl	0x00700052
  1c:	5f434352 	svcpl	0x00434352
  20:	31424841 	cmpcc	r2, r1, asr #16
  24:	00524e45 	subseq	r4, r2, r5, asr #28
  28:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  2c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  30:	61686320 	cmnvs	r8, r0, lsr #6
  34:	68730072 	ldmdavs	r3!, {r1, r4, r5, r6}^
  38:	2074726f 	rsbscs	r7, r4, pc, ror #4
  3c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  40:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  44:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  48:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff150 <__bss_end__+0xdffff150>
  4c:	33746e69 	cmncc	r4, #1680	; 0x690
  50:	00745f32 	rsbseq	r5, r4, r2, lsr pc
  54:	6e756f43 	cdpvs	15, 7, cr6, cr5, cr3, {2}
  58:	00726574 	rsbseq	r6, r2, r4, ror r5
  5c:	6e69616d 	powvsez	f6, f1, #5.0
  60:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  64:	6f6c2067 	svcvs	0x006c2067
  68:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
  6c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  70:	2064656e 	rsbcs	r6, r4, lr, ror #10
  74:	00746e69 	rsbseq	r6, r4, r9, ror #28
  78:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  7c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  80:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
  84:	3a450074 	bcc	114025c <vectors-0x6ebfda4>
  88:	73736f5c 	cmnvc	r3, #92, 30	; 0x170
  8c:	6d74735c 	ldclvs	3, cr7, [r4, #-368]!	; 0xfffffe90
  90:	622d3233 	eorvs	r3, sp, #805306371	; 0x30000003
  94:	6f747475 	svcvs	0x00747475
  98:	6c622d6e 	stclvs	13, cr2, [r2], #-440	; 0xfffffe48
  9c:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  a0:	2d6f6e2d 	stclcs	14, cr6, [pc, #-180]!	; fffffff4 <__bss_end__+0xdffffff4>
  a4:	5c6d6172 	stfple	f6, [sp], #-456	; 0xfffffe38
  a8:	616c6564 	cmnvs	ip, r4, ror #10
  ac:	6c625f79 	stclvs	15, cr5, [r2], #-484	; 0xfffffe1c
  b0:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  b4:	0037305f 	eorseq	r3, r7, pc, asr r0
  b8:	2f637273 	svccs	0x00637273
  bc:	6e69616d 	powvsez	f6, f1, #5.0
  c0:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
  c4:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
  c8:	31203731 			; <UNDEFINED> instruction: 0x31203731
  cc:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
  d0:	30322031 	eorscc	r2, r2, r1, lsr r0
  d4:	38303132 	ldmdacc	r0!, {r1, r4, r5, r8, ip, sp}
  d8:	28203432 	stmdacs	r0!, {r1, r4, r5, sl, ip, sp}
  dc:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  e0:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  e4:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  e8:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
  ec:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
  f0:	346d2d78 	strbtcc	r2, [sp], #-3448	; 0xfffff288
  f4:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
  f8:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
  fc:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
 100:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 104:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
 108:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
 10c:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
 110:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
 114:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 118:	2d653776 	stclcs	7, cr3, [r5, #-472]!	; 0xfffffe28
 11c:	672d206d 	strvs	r2, [sp, -sp, rrx]!
 120:	304f2d20 	subcc	r2, pc, r0, lsr #26
 124:	6f687300 	svcvs	0x00687300
 128:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
 12c:	5f00746e 	svcpl	0x0000746e
 130:	74616473 	strbtvc	r6, [r1], #-1139	; 0xfffffb8d
 134:	5f5f0061 	svcpl	0x005f0061
 138:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
 13c:	00745f38 	rsbseq	r5, r4, r8, lsr pc
 140:	74734470 	ldrbtvc	r4, [r3], #-1136	; 0xfffffb90
 144:	62655f00 	rsbvs	r5, r5, #0, 30
 148:	73007373 	movwvc	r7, #883	; 0x373
 14c:	5f657a69 	svcpl	0x00657a69
 150:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0xfffff69e
 154:	72730073 	rsbsvc	r0, r3, #115	; 0x73
 158:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xfffff09d
 15c:	5f32336d 	svcpl	0x0032336d
 160:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
 164:	2e707574 	mrccs	5, 3, r7, cr0, cr4, {3}
 168:	65520063 	ldrbvs	r0, [r2, #-99]	; 0xffffff9d
 16c:	5f746573 	svcpl	0x00746573
 170:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
 174:	0072656c 	rsbseq	r6, r2, ip, ror #10
 178:	6164655f 	cmnvs	r4, pc, asr r5
 17c:	76006174 			; <UNDEFINED> instruction: 0x76006174
 180:	6f746365 	svcvs	0x00746365
 184:	5f007372 	svcpl	0x00007372
 188:	73736273 	cmnvc	r3, #805306375	; 0x30000007
 18c:	52537000 	subspl	r7, r3, #0
 190:	6c5f0043 	mrrcvs	0, 4, r0, pc, cr3	; <UNPREDICTABLE>
 194:	61645f61 	cmnvs	r4, r1, ror #30
 198:	43006174 	movwmi	r6, #372	; 0x174
 19c:	0072746e 	rsbseq	r7, r2, lr, ror #8

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
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
  1c:	00000064 	andeq	r0, r0, r4, rrx
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	180e4101 	stmdane	lr, {r0, r8, lr}
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000020 	andeq	r0, r0, r0, lsr #32
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	0800006c 	stmdaeq	r0, {r2, r3, r5, r6}
  48:	00000084 	andeq	r0, r0, r4, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	080e7307 	stmdaeq	lr, {r0, r1, r2, r8, r9, ip, sp, lr}
  5c:	000d0d41 	andeq	r0, sp, r1, asr #26
