
obj/button_blinky_01.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20020000 	andcs	r0, r2, r0
 8000004:	08000089 	stmdaeq	r0, {r0, r3, r7}

08000008 <main>:
 8000008:	b480      	push	{r7}
 800000a:	b087      	sub	sp, #28
 800000c:	af00      	add	r7, sp, #0
 800000e:	4b19      	ldr	r3, [pc, #100]	; (8000074 <main+0x6c>)
 8000010:	617b      	str	r3, [r7, #20]
 8000012:	4b19      	ldr	r3, [pc, #100]	; (8000078 <main+0x70>)
 8000014:	613b      	str	r3, [r7, #16]
 8000016:	4b19      	ldr	r3, [pc, #100]	; (800007c <main+0x74>)
 8000018:	60fb      	str	r3, [r7, #12]
 800001a:	4b19      	ldr	r3, [pc, #100]	; (8000080 <main+0x78>)
 800001c:	60bb      	str	r3, [r7, #8]
 800001e:	4b19      	ldr	r3, [pc, #100]	; (8000084 <main+0x7c>)
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
 8000054:	d006      	beq.n	8000064 <main+0x5c>
 8000056:	687b      	ldr	r3, [r7, #4]
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	f443 4280 	orr.w	r2, r3, #16384	; 0x4000
 800005e:	687b      	ldr	r3, [r7, #4]
 8000060:	601a      	str	r2, [r3, #0]
 8000062:	e7f2      	b.n	800004a <main+0x42>
 8000064:	687b      	ldr	r3, [r7, #4]
 8000066:	681b      	ldr	r3, [r3, #0]
 8000068:	f423 4280 	bic.w	r2, r3, #16384	; 0x4000
 800006c:	687b      	ldr	r3, [r7, #4]
 800006e:	601a      	str	r2, [r3, #0]
 8000070:	e7eb      	b.n	800004a <main+0x42>
 8000072:	bf00      	nop
 8000074:	40023830 	andmi	r3, r2, r0, lsr r8
 8000078:	40020000 	andmi	r0, r2, r0
 800007c:	40020010 	andmi	r0, r2, r0, lsl r0
 8000080:	40020c00 	andmi	r0, r2, r0, lsl #24
 8000084:	40020c14 	andmi	r0, r2, r4, lsl ip

08000088 <Reset_Handler>:
 8000088:	b580      	push	{r7, lr}
 800008a:	b086      	sub	sp, #24
 800008c:	af00      	add	r7, sp, #0
 800008e:	4a1a      	ldr	r2, [pc, #104]	; (80000f8 <Reset_Handler+0x70>)
 8000090:	4b1a      	ldr	r3, [pc, #104]	; (80000fc <Reset_Handler+0x74>)
 8000092:	1ad3      	subs	r3, r2, r3
 8000094:	607b      	str	r3, [r7, #4]
 8000096:	4b19      	ldr	r3, [pc, #100]	; (80000fc <Reset_Handler+0x74>)
 8000098:	617b      	str	r3, [r7, #20]
 800009a:	4b19      	ldr	r3, [pc, #100]	; (8000100 <Reset_Handler+0x78>)
 800009c:	613b      	str	r3, [r7, #16]
 800009e:	2300      	movs	r3, #0
 80000a0:	60fb      	str	r3, [r7, #12]
 80000a2:	e00a      	b.n	80000ba <Reset_Handler+0x32>
 80000a4:	693a      	ldr	r2, [r7, #16]
 80000a6:	1c53      	adds	r3, r2, #1
 80000a8:	613b      	str	r3, [r7, #16]
 80000aa:	697b      	ldr	r3, [r7, #20]
 80000ac:	1c59      	adds	r1, r3, #1
 80000ae:	6179      	str	r1, [r7, #20]
 80000b0:	7812      	ldrb	r2, [r2, #0]
 80000b2:	701a      	strb	r2, [r3, #0]
 80000b4:	68fb      	ldr	r3, [r7, #12]
 80000b6:	3301      	adds	r3, #1
 80000b8:	60fb      	str	r3, [r7, #12]
 80000ba:	68fa      	ldr	r2, [r7, #12]
 80000bc:	687b      	ldr	r3, [r7, #4]
 80000be:	429a      	cmp	r2, r3
 80000c0:	d3f0      	bcc.n	80000a4 <Reset_Handler+0x1c>
 80000c2:	4a10      	ldr	r2, [pc, #64]	; (8000104 <Reset_Handler+0x7c>)
 80000c4:	4b10      	ldr	r3, [pc, #64]	; (8000108 <Reset_Handler+0x80>)
 80000c6:	1ad3      	subs	r3, r2, r3
 80000c8:	607b      	str	r3, [r7, #4]
 80000ca:	4b0f      	ldr	r3, [pc, #60]	; (8000108 <Reset_Handler+0x80>)
 80000cc:	617b      	str	r3, [r7, #20]
 80000ce:	2300      	movs	r3, #0
 80000d0:	60bb      	str	r3, [r7, #8]
 80000d2:	e007      	b.n	80000e4 <Reset_Handler+0x5c>
 80000d4:	697b      	ldr	r3, [r7, #20]
 80000d6:	1c5a      	adds	r2, r3, #1
 80000d8:	617a      	str	r2, [r7, #20]
 80000da:	2200      	movs	r2, #0
 80000dc:	701a      	strb	r2, [r3, #0]
 80000de:	68bb      	ldr	r3, [r7, #8]
 80000e0:	3301      	adds	r3, #1
 80000e2:	60bb      	str	r3, [r7, #8]
 80000e4:	68ba      	ldr	r2, [r7, #8]
 80000e6:	687b      	ldr	r3, [r7, #4]
 80000e8:	429a      	cmp	r2, r3
 80000ea:	d3f3      	bcc.n	80000d4 <Reset_Handler+0x4c>
 80000ec:	f7ff ff8c 	bl	8000008 <main>
 80000f0:	bf00      	nop
 80000f2:	3718      	adds	r7, #24
 80000f4:	46bd      	mov	sp, r7
 80000f6:	bd80      	pop	{r7, pc}
 80000f8:	20000000 	andcs	r0, r0, r0
 80000fc:	20000000 	andcs	r0, r0, r0
 8000100:	0800010c 	stmdaeq	r0, {r2, r3, r8}
 8000104:	20000000 	andcs	r0, r0, r0
 8000108:	20000000 	andcs	r0, r0, r0

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000f1 	strdeq	r0, [r0], -r1
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000c8 	andeq	r0, r0, r8, asr #1
  10:	0000bd0c 	andeq	fp, r0, ip, lsl #26
  14:	00000000 	andeq	r0, r0, r0
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00008008 	andeq	r8, r0, r8
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000005d 	andeq	r0, r0, sp, asr r0
  2c:	5b080102 	blpl	20043c <vectors-0x7dffbc4>
  30:	02000000 	andeq	r0, r0, #0
  34:	012a0502 			; <UNDEFINED> instruction: 0x012a0502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00006907 	andeq	r6, r0, r7, lsl #18
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	000000b4 	strheq	r0, [r0], -r4
  48:	00008803 	andeq	r8, r0, r3, lsl #16
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	9d070402 	cfstrsls	mvf0, [r7, #-8]
  58:	02000000 	andeq	r0, r0, #0
  5c:	00af0508 	adceq	r0, pc, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00009807 	andeq	r9, r0, r7, lsl #16
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	a2070402 	andge	r0, r7, #33554432	; 0x2000000
  74:	03000000 	movweq	r0, #0
  78:	0000008a 	andeq	r0, r0, sl, lsl #1
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	00009306 	andeq	r9, r0, r6, lsl #6
  8c:	05060100 	streq	r0, [r6, #-256]	; 0xffffff00
  90:	00000069 	andeq	r0, r0, r9, rrx
  94:	08000008 	stmdaeq	r0, {r3}
  98:	00000080 	andeq	r0, r0, r0, lsl #1
  9c:	00ee9c01 	rsceq	r9, lr, r1, lsl #24
  a0:	4d070000 	stcmi	0, cr0, [r7, #-0]
  a4:	01000000 	mrseq	r0, (UNDEF: 0)
  a8:	00ee1809 	rsceq	r1, lr, r9, lsl #16
  ac:	91020000 	mrsls	r0, (UNDEF: 2)
  b0:	01340774 	teqeq	r4, r4, ror r7
  b4:	0a010000 	beq	400bc <vectors-0x7fbff44>
  b8:	0000ee18 	andeq	lr, r0, r8, lsl lr
  bc:	70910200 	addsvc	r0, r1, r0, lsl #4
  c0:	00007c07 	andeq	r7, r0, r7, lsl #24
  c4:	180b0100 	stmdane	fp, {r8}
  c8:	000000ee 	andeq	r0, r0, lr, ror #1
  cc:	076c9102 	strbeq	r9, [ip, -r2, lsl #2]!
  d0:	0000003f 	andeq	r0, r0, pc, lsr r0
  d4:	ee180c01 	cdp	12, 1, cr0, cr8, cr1, {0}
  d8:	02000000 	andeq	r0, r0, #0
  dc:	33076891 	movwcc	r6, #30865	; 0x7891
  e0:	01000000 	mrseq	r0, (UNDEF: 0)
  e4:	00ee180d 	rsceq	r1, lr, sp, lsl #16
  e8:	91020000 	mrsls	r0, (UNDEF: 2)
  ec:	04080064 	streq	r0, [r8], #-100	; 0xffffff9c
  f0:	00000083 	andeq	r0, r0, r3, lsl #1
  f4:	00017600 	andeq	r7, r1, r0, lsl #12
  f8:	78000400 	stmdavc	r0, {sl}
  fc:	04000000 	streq	r0, [r0], #-0
 100:	0000c801 	andeq	ip, r0, r1, lsl #16
 104:	01640c00 	cmneq	r4, r0, lsl #24
 108:	00000000 	andeq	r0, r0, r0
 10c:	00880000 	addeq	r0, r8, r0
 110:	00840800 	addeq	r0, r4, r0, lsl #16
 114:	00ff0000 	rscseq	r0, pc, r0
 118:	01020000 	mrseq	r0, (UNDEF: 2)
 11c:	00005d06 	andeq	r5, r0, r6, lsl #26
 120:	01490300 	mrseq	r0, (UNDEF: 121)
 124:	2b020000 	blcs	8012c <vectors-0x7f7fed4>
 128:	00003818 	andeq	r3, r0, r8, lsl r8
 12c:	08010200 	stmdaeq	r1, {r9}
 130:	0000005b 	andeq	r0, r0, fp, asr r0
 134:	2a050202 	bcs	140944 <vectors-0x7ebf6bc>
 138:	02000001 	andeq	r0, r0, #1
 13c:	00690702 	rsbeq	r0, r9, r2, lsl #14
 140:	04020000 	streq	r0, [r2], #-0
 144:	0000b405 	andeq	fp, r0, r5, lsl #8
 148:	00880300 	addeq	r0, r8, r0, lsl #6
 14c:	4f020000 	svcmi	0x00020000
 150:	00006019 	andeq	r6, r0, r9, lsl r0
 154:	07040200 	streq	r0, [r4, -r0, lsl #4]
 158:	0000009d 	muleq	r0, sp, r0
 15c:	af050802 	svcge	0x00050802
 160:	02000000 	andeq	r0, r0, #0
 164:	00980708 	addseq	r0, r8, r8, lsl #14
 168:	04040000 	streq	r0, [r4], #-0
 16c:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
 170:	07040200 	streq	r0, [r4, -r0, lsl #4]
 174:	000000a2 	andeq	r0, r0, r2, lsr #1
 178:	00014b03 	andeq	r4, r1, r3, lsl #22
 17c:	13180300 	tstne	r8, #0, 6
 180:	0000002c 	andeq	r0, r0, ip, lsr #32
 184:	00008a03 	andeq	r8, r0, r3, lsl #20
 188:	14300300 	ldrtne	r0, [r0], #-768	; 0xfffffd00
 18c:	00000054 	andeq	r0, r0, r4, asr r0
 190:	00014205 	andeq	r4, r1, r5, lsl #4
 194:	11150100 	tstne	r5, r0, lsl #2
 198:	0000008f 	andeq	r0, r0, pc, lsl #1
 19c:	00018605 	andeq	r8, r1, r5, lsl #12
 1a0:	11160100 	tstne	r6, r0, lsl #2
 1a4:	0000008f 	andeq	r0, r0, pc, lsl #1
 1a8:	0001a505 	andeq	sl, r1, r5, lsl #10
 1ac:	11170100 	tstne	r7, r0, lsl #2
 1b0:	0000008f 	andeq	r0, r0, pc, lsl #1
 1b4:	00019505 	andeq	r9, r1, r5, lsl #10
 1b8:	11190100 	tstne	r9, r0, lsl #2
 1bc:	0000008f 	andeq	r0, r0, pc, lsl #1
 1c0:	00015305 	andeq	r5, r1, r5, lsl #6
 1c4:	111a0100 	tstne	sl, r0, lsl #2
 1c8:	0000008f 	andeq	r0, r0, pc, lsl #1
 1cc:	00008f06 	andeq	r8, r0, r6, lsl #30
 1d0:	0000e700 	andeq	lr, r0, r0, lsl #14
 1d4:	007c0700 	rsbseq	r0, ip, r0, lsl #14
 1d8:	00010000 	andeq	r0, r1, r0
 1dc:	00018d08 	andeq	r8, r1, r8, lsl #26
 1e0:	0a2b0100 	beq	ac05e8 <vectors-0x753fa18>
 1e4:	000000d7 	ldrdeq	r0, [r0], -r7
 1e8:	00000305 	andeq	r0, r0, r5, lsl #6
 1ec:	78090800 	stmdavc	r9, {fp}
 1f0:	01000001 	tsteq	r0, r1
 1f4:	00880631 	addeq	r0, r8, r1, lsr r6
 1f8:	00840800 	addeq	r0, r4, r0, lsl #16
 1fc:	9c010000 	stcls	0, cr0, [r1], {-0}
 200:	00000173 	andeq	r0, r0, r3, ror r1
 204:	0001590a 	andeq	r5, r1, sl, lsl #18
 208:	0b340100 	bleq	d00610 <vectors-0x72ff9f0>
 20c:	0000008f 	andeq	r0, r0, pc, lsl #1
 210:	0a649102 	beq	1924620 <vectors-0x66db9e0>
 214:	000001a0 	andeq	r0, r0, r0, lsr #3
 218:	730b3901 	movwvc	r3, #47361	; 0xb901
 21c:	02000001 	andeq	r0, r0, #1
 220:	9b0a7491 	blls	29d46c <vectors-0x7d62b94>
 224:	01000001 	tsteq	r0, r1
 228:	01730b3a 	cmneq	r3, sl, lsr fp
 22c:	91020000 	mrsls	r0, (UNDEF: 2)
 230:	009e0b70 	addseq	r0, lr, r0, ror fp
 234:	00240800 	eoreq	r0, r4, r0, lsl #16
 238:	01590000 	cmpeq	r9, r0
 23c:	ae0a0000 	cdpge	0, 0, cr0, cr10, cr0, {0}
 240:	01000001 	tsteq	r0, r1
 244:	008f103d 	addeq	r1, pc, sp, lsr r0	; <UNPREDICTABLE>
 248:	91020000 	mrsls	r0, (UNDEF: 2)
 24c:	ce0c006c 	cdpgt	0, 0, cr0, cr12, cr12, {3}
 250:	1e080000 	cdpne	0, 0, cr0, cr8, cr0, {0}
 254:	0a000000 	beq	25c <vectors-0x7fffda4>
 258:	000001ae 	andeq	r0, r0, lr, lsr #3
 25c:	8f104801 	svchi	0x00104801
 260:	02000000 	andeq	r0, r0, #0
 264:	00006891 	muleq	r0, r1, r8
 268:	0083040d 	addeq	r0, r3, sp, lsl #8
 26c:	Address 0x0000026c is out of bounds.


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
  14:	00000080 	andeq	r0, r0, r0, lsl #1
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00f50002 	rscseq	r0, r5, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	08000088 	stmdaeq	r0, {r3, r7}
  34:	00000084 	andeq	r0, r0, r4, lsl #1
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
  fc:	49010100 	stmdbmi	r1, {r8}
 100:	03000001 	movweq	r0, #1
 104:	0000c300 	andeq	ip, r0, r0, lsl #6
 108:	fb010200 	blx	40912 <vectors-0x7fbf6ee>
 10c:	01000d0e 	tsteq	r0, lr, lsl #26
 110:	00010101 	andeq	r0, r1, r1, lsl #2
 114:	00010000 	andeq	r0, r1, r0
 118:	72730100 	rsbsvc	r0, r3, #0, 2
 11c:	3a640063 	bcc	19002b0 <vectors-0x66ffd50>
 120:	5f77735c 	svcpl	0x0077735c
 124:	72615c38 	rsbvc	r5, r1, #56, 24	; 0x3800
 128:	63675f6d 	cmnvs	r7, #436	; 0x1b4
 12c:	30315f63 	eorscc	r5, r1, r3, ror #30
 130:	315c332e 	cmpcc	ip, lr, lsr #6
 134:	30322030 	eorscc	r2, r2, r0, lsr r0
 138:	312e3132 			; <UNDEFINED> instruction: 0x312e3132
 13c:	72615c30 	rsbvc	r5, r1, #48, 24	; 0x3000
 140:	6f6e2d6d 	svcvs	0x006e2d6d
 144:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 148:	5c696261 	sfmpl	f6, 2, [r9], #-388	; 0xfffffe7c
 14c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 150:	5c656475 	cfstrdpl	mvd6, [r5], #-468	; 0xfffffe2c
 154:	6863616d 	stmdavs	r3!, {r0, r2, r3, r5, r6, r8, sp, lr}^
 158:	00656e69 	rsbeq	r6, r5, r9, ror #28
 15c:	735c3a64 	cmpvc	ip, #100, 20	; 0x64000
 160:	5c385f77 	ldcpl	15, cr5, [r8], #-476	; 0xfffffe24
 164:	5f6d7261 	svcpl	0x006d7261
 168:	5f636367 	svcpl	0x00636367
 16c:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
 170:	2030315c 	eorscs	r3, r0, ip, asr r1
 174:	31323032 	teqcc	r2, r2, lsr r0
 178:	5c30312e 	ldfpls	f3, [r0], #-184	; 0xffffff48
 17c:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 180:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 184:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 188:	6e695c69 	cdpvs	12, 6, cr5, cr9, cr9, {3}
 18c:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 190:	79735c65 	ldmdbvc	r3!, {r0, r2, r5, r6, sl, fp, ip, lr}^
 194:	73000073 	movwvc	r0, #115	; 0x73
 198:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
 19c:	6174735f 	cmnvs	r4, pc, asr r3
 1a0:	70757472 	rsbsvc	r7, r5, r2, ror r4
 1a4:	0100632e 	tsteq	r0, lr, lsr #6
 1a8:	645f0000 	ldrbvs	r0, [pc], #-0	; 1b0 <vectors-0x7fffe50>
 1ac:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
 1b0:	745f746c 	ldrbvc	r7, [pc], #-1132	; 1b8 <vectors-0x7fffe48>
 1b4:	73657079 	cmnvc	r5, #121	; 0x79
 1b8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 1bc:	735f0000 	cmpvc	pc, #0
 1c0:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 1c4:	00682e74 	rsbeq	r2, r8, r4, ror lr
 1c8:	00000003 	andeq	r0, r0, r3
 1cc:	05001d05 	streq	r1, [r0, #-3333]	; 0xfffff2fb
 1d0:	00008802 	andeq	r8, r0, r2, lsl #16
 1d4:	01300308 	teqeq	r0, r8, lsl #6
 1d8:	053f1805 	ldreq	r1, [pc, #-2053]!	; fffff9db <__bss_end__+0xdffff9db>
 1dc:	0b05202c 	bleq	148294 <vectors-0x7eb7d6c>
 1e0:	052f3320 	streq	r3, [pc, #-800]!	; fffffec8 <__bss_end__+0xdffffec8>
 1e4:	02053110 	andeq	r3, r5, #16, 2
 1e8:	0012052e 	andseq	r0, r2, lr, lsr #10
 1ec:	21030402 	tstcs	r3, r2, lsl #8
 1f0:	02000805 	andeq	r0, r0, #327680	; 0x50000
 1f4:	053c0304 	ldreq	r0, [ip, #-772]!	; 0xfffffcfc
 1f8:	0402000d 	streq	r0, [r2], #-13
 1fc:	0b053c03 	bleq	14f210 <vectors-0x7eb0df0>
 200:	03040200 	movweq	r0, #16896	; 0x4200
 204:	00310520 	eorseq	r0, r1, r0, lsr #10
 208:	1f030402 	svcne	0x00030402
 20c:	02000205 	andeq	r0, r0, #1342177280	; 0x50000000
 210:	053c0104 	ldreq	r0, [ip, #-260]!	; 0xfffffefc
 214:	22054f0f 	andcs	r4, r5, #15, 30	; 0x3c
 218:	200d0520 	andcs	r0, sp, r0, lsr #10
 21c:	05310705 	ldreq	r0, [r1, #-1797]!	; 0xfffff8fb
 220:	02053110 	andeq	r3, r5, #16, 2
 224:	0008052e 	andeq	r0, r8, lr, lsr #10
 228:	21030402 	tstcs	r3, r2, lsl #8
 22c:	02000b05 	andeq	r0, r0, #5120	; 0x1400
 230:	053c0304 	ldreq	r0, [ip, #-772]!	; 0xfffffcfc
 234:	04020031 	streq	r0, [r2], #-49	; 0xffffffcf
 238:	02052d03 	andeq	r2, r5, #3, 26	; 0xc0
 23c:	01040200 	mrseq	r0, R12_usr
 240:	4a09033c 	bmi	240f38 <vectors-0x7dbf0c8>
 244:	02300105 	eorseq	r0, r0, #1073741825	; 0x40000001
 248:	0101000e 	tsteq	r1, lr

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
  44:	4d5f444f 	cfldrdmi	mvd4, [pc, #-316]	; ffffff10 <__bss_end__+0xdfffff10>
  48:	5245444f 	subpl	r4, r5, #1325400064	; 0x4f000000
  4c:	525f7000 	subspl	r7, pc, #0
  50:	415f4343 	cmpmi	pc, r3, asr #6
  54:	45314248 	ldrmi	r4, [r1, #-584]!	; 0xfffffdb8
  58:	7500524e 	strvc	r5, [r0, #-590]	; 0xfffffdb2
  5c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  60:	2064656e 	rsbcs	r6, r4, lr, ror #10
  64:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
  68:	6f687300 	svcvs	0x00687300
  6c:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  70:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  74:	2064656e 	rsbcs	r6, r4, lr, ror #10
  78:	00746e69 	rsbseq	r6, r4, r9, ror #28
  7c:	50475f70 	subpl	r5, r7, r0, ror pc
  80:	5f414f49 	svcpl	0x00414f49
  84:	00524449 	subseq	r4, r2, r9, asr #8
  88:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
  8c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  90:	6d00745f 	cfstrsvs	mvf7, [r0, #-380]	; 0xfffffe84
  94:	006e6961 	rsbeq	r6, lr, r1, ror #18
  98:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  9c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  a0:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  a4:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  a8:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  ac:	6c00746e 	cfstrsvs	mvf7, [r0], {110}	; 0x6e
  b0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  b4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  b8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  bc:	63727300 	cmnvs	r2, #0, 6
  c0:	69616d2f 	stmdbvs	r1!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
  c4:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  c8:	20554e47 	subscs	r4, r5, r7, asr #28
  cc:	20373143 	eorscs	r3, r7, r3, asr #2
  d0:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
  d4:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
  d8:	30313230 	eorscc	r3, r1, r0, lsr r2
  dc:	20343238 	eorscs	r3, r4, r8, lsr r2
  e0:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  e4:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  e8:	6d2d2029 	stcvs	0, cr2, [sp, #-164]!	; 0xffffff5c
  ec:	3d757063 	ldclcc	0, cr7, [r5, #-396]!	; 0xfffffe74
  f0:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
  f4:	6d2d7865 	stcvs	8, cr7, [sp, #-404]!	; 0xfffffe6c
  f8:	6d2d2034 	stcvs	0, cr2, [sp, #-208]!	; 0xffffff30
  fc:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
 100:	6d2d2062 	stcvs	0, cr2, [sp, #-392]!	; 0xfffffe78
 104:	616f6c66 	cmnvs	pc, r6, ror #24
 108:	62612d74 	rsbvs	r2, r1, #116, 26	; 0x1d00
 10c:	6f733d69 	svcvs	0x00733d69
 110:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	; 0xfffffe68
 114:	6372616d 	cmnvs	r2, #1073741851	; 0x4000001b
 118:	72613d68 	rsbvc	r3, r1, #104, 26	; 0x1a00
 11c:	6537766d 	ldrvs	r7, [r7, #-1645]!	; 0xfffff993
 120:	2d206d2d 	stccs	13, cr6, [r0, #-180]!	; 0xffffff4c
 124:	4f2d2067 	svcmi	0x002d2067
 128:	68730030 	ldmdavs	r3!, {r4, r5}^
 12c:	2074726f 	rsbscs	r7, r4, pc, ror #4
 130:	00746e69 	rsbseq	r6, r4, r9, ror #28
 134:	50475f70 	subpl	r5, r7, r0, ror pc
 138:	5f414f49 	svcpl	0x00414f49
 13c:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
 140:	735f0052 	cmpvc	pc, #82	; 0x52
 144:	61746164 	cmnvs	r4, r4, ror #2
 148:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff250 <__bss_end__+0xdffff250>
 14c:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 150:	5f00745f 	svcpl	0x0000745f
 154:	73736265 	cmnvc	r3, #1342177286	; 0x50000006
 158:	7a697300 	bvc	1a5cd60 <vectors-0x65a32a0>
 15c:	79625f65 	stmdbvc	r2!, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
 160:	00736574 	rsbseq	r6, r3, r4, ror r5
 164:	2f637273 	svccs	0x00637273
 168:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
 16c:	74735f32 	ldrbtvc	r5, [r3], #-3890	; 0xfffff0ce
 170:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0xfffffd9f
 174:	00632e70 	rsbeq	r2, r3, r0, ror lr
 178:	65736552 	ldrbvs	r6, [r3, #-1362]!	; 0xfffffaae
 17c:	61485f74 	hvcvs	34292	; 0x85f4
 180:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 184:	655f0072 	ldrbvs	r0, [pc, #-114]	; 11a <vectors-0x7fffee6>
 188:	61746164 	cmnvs	r4, r4, ror #2
 18c:	63657600 	cmnvs	r5, #0, 12
 190:	73726f74 	cmnvc	r2, #116, 30	; 0x1d0
 194:	62735f00 	rsbsvs	r5, r3, #0, 30
 198:	70007373 	andvc	r7, r0, r3, ror r3
 19c:	00435253 	subeq	r5, r3, r3, asr r2
 1a0:	74734470 	ldrbtvc	r4, [r3], #-1136	; 0xfffffb90
 1a4:	616c5f00 	cmnvs	ip, r0, lsl #30
 1a8:	7461645f 	strbtvc	r6, [r1], #-1119	; 0xfffffba1
 1ac:	6e430061 	cdpvs	0, 4, cr0, cr3, cr1, {3}
 1b0:	Address 0x000001b0 is out of bounds.


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
  1c:	00000080 	andeq	r0, r0, r0, lsl #1
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	200e4101 	andcs	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000020 	andeq	r0, r0, r0, lsr #32
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	08000088 	stmdaeq	r0, {r3, r7}
  48:	00000084 	andeq	r0, r0, r4, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	080e7307 	stmdaeq	lr, {r0, r1, r2, r8, r9, ip, sp, lr}
  5c:	000d0d41 	andeq	r0, sp, r1, asr #26
