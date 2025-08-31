
obj/timer_blinky_17.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20020000 	andcs	r0, r2, r0
 8000004:	0800008d 	stmdaeq	r0, {r0, r2, r3, r7}

08000008 <main>:
 8000008:	b480      	push	{r7}
 800000a:	b085      	sub	sp, #20
 800000c:	af00      	add	r7, sp, #0
 800000e:	4b1c      	ldr	r3, [pc, #112]	; (8000080 <main+0x78>)
 8000010:	60fb      	str	r3, [r7, #12]
 8000012:	4b1c      	ldr	r3, [pc, #112]	; (8000084 <main+0x7c>)
 8000014:	60bb      	str	r3, [r7, #8]
 8000016:	4b1c      	ldr	r3, [pc, #112]	; (8000088 <main+0x80>)
 8000018:	607b      	str	r3, [r7, #4]
 800001a:	68fb      	ldr	r3, [r7, #12]
 800001c:	681b      	ldr	r3, [r3, #0]
 800001e:	f043 0208 	orr.w	r2, r3, #8
 8000022:	68fb      	ldr	r3, [r7, #12]
 8000024:	601a      	str	r2, [r3, #0]
 8000026:	68fb      	ldr	r3, [r7, #12]
 8000028:	3310      	adds	r3, #16
 800002a:	681a      	ldr	r2, [r3, #0]
 800002c:	68fb      	ldr	r3, [r7, #12]
 800002e:	3310      	adds	r3, #16
 8000030:	f042 0204 	orr.w	r2, r2, #4
 8000034:	601a      	str	r2, [r3, #0]
 8000036:	68bb      	ldr	r3, [r7, #8]
 8000038:	f04f 5200 	mov.w	r2, #536870912	; 0x20000000
 800003c:	601a      	str	r2, [r3, #0]
 800003e:	68bb      	ldr	r3, [r7, #8]
 8000040:	3324      	adds	r3, #36	; 0x24
 8000042:	f04f 7200 	mov.w	r2, #33554432	; 0x2000000
 8000046:	601a      	str	r2, [r3, #0]
 8000048:	687b      	ldr	r3, [r7, #4]
 800004a:	331c      	adds	r3, #28
 800004c:	2260      	movs	r2, #96	; 0x60
 800004e:	601a      	str	r2, [r3, #0]
 8000050:	687b      	ldr	r3, [r7, #4]
 8000052:	3328      	adds	r3, #40	; 0x28
 8000054:	f240 623f 	movw	r2, #1599	; 0x63f
 8000058:	601a      	str	r2, [r3, #0]
 800005a:	687b      	ldr	r3, [r7, #4]
 800005c:	332c      	adds	r3, #44	; 0x2c
 800005e:	f242 720f 	movw	r2, #9999	; 0x270f
 8000062:	601a      	str	r2, [r3, #0]
 8000064:	687b      	ldr	r3, [r7, #4]
 8000066:	333c      	adds	r3, #60	; 0x3c
 8000068:	f241 3287 	movw	r2, #4999	; 0x1387
 800006c:	601a      	str	r2, [r3, #0]
 800006e:	687b      	ldr	r3, [r7, #4]
 8000070:	3320      	adds	r3, #32
 8000072:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000076:	601a      	str	r2, [r3, #0]
 8000078:	687b      	ldr	r3, [r7, #4]
 800007a:	2201      	movs	r2, #1
 800007c:	601a      	str	r2, [r3, #0]
 800007e:	e7fe      	b.n	800007e <main+0x76>
 8000080:	40023830 	andmi	r3, r2, r0, lsr r8
 8000084:	40020c00 	andmi	r0, r2, r0, lsl #24
 8000088:	40000800 	andmi	r0, r0, r0, lsl #16

0800008c <Reset_Handler>:
 800008c:	b580      	push	{r7, lr}
 800008e:	b086      	sub	sp, #24
 8000090:	af00      	add	r7, sp, #0
 8000092:	4a1a      	ldr	r2, [pc, #104]	; (80000fc <Reset_Handler+0x70>)
 8000094:	4b1a      	ldr	r3, [pc, #104]	; (8000100 <Reset_Handler+0x74>)
 8000096:	1ad3      	subs	r3, r2, r3
 8000098:	607b      	str	r3, [r7, #4]
 800009a:	4b19      	ldr	r3, [pc, #100]	; (8000100 <Reset_Handler+0x74>)
 800009c:	617b      	str	r3, [r7, #20]
 800009e:	4b19      	ldr	r3, [pc, #100]	; (8000104 <Reset_Handler+0x78>)
 80000a0:	613b      	str	r3, [r7, #16]
 80000a2:	2300      	movs	r3, #0
 80000a4:	60fb      	str	r3, [r7, #12]
 80000a6:	e00a      	b.n	80000be <Reset_Handler+0x32>
 80000a8:	693a      	ldr	r2, [r7, #16]
 80000aa:	1c53      	adds	r3, r2, #1
 80000ac:	613b      	str	r3, [r7, #16]
 80000ae:	697b      	ldr	r3, [r7, #20]
 80000b0:	1c59      	adds	r1, r3, #1
 80000b2:	6179      	str	r1, [r7, #20]
 80000b4:	7812      	ldrb	r2, [r2, #0]
 80000b6:	701a      	strb	r2, [r3, #0]
 80000b8:	68fb      	ldr	r3, [r7, #12]
 80000ba:	3301      	adds	r3, #1
 80000bc:	60fb      	str	r3, [r7, #12]
 80000be:	68fa      	ldr	r2, [r7, #12]
 80000c0:	687b      	ldr	r3, [r7, #4]
 80000c2:	429a      	cmp	r2, r3
 80000c4:	d3f0      	bcc.n	80000a8 <Reset_Handler+0x1c>
 80000c6:	4a10      	ldr	r2, [pc, #64]	; (8000108 <Reset_Handler+0x7c>)
 80000c8:	4b10      	ldr	r3, [pc, #64]	; (800010c <Reset_Handler+0x80>)
 80000ca:	1ad3      	subs	r3, r2, r3
 80000cc:	607b      	str	r3, [r7, #4]
 80000ce:	4b0f      	ldr	r3, [pc, #60]	; (800010c <Reset_Handler+0x80>)
 80000d0:	617b      	str	r3, [r7, #20]
 80000d2:	2300      	movs	r3, #0
 80000d4:	60bb      	str	r3, [r7, #8]
 80000d6:	e007      	b.n	80000e8 <Reset_Handler+0x5c>
 80000d8:	697b      	ldr	r3, [r7, #20]
 80000da:	1c5a      	adds	r2, r3, #1
 80000dc:	617a      	str	r2, [r7, #20]
 80000de:	2200      	movs	r2, #0
 80000e0:	701a      	strb	r2, [r3, #0]
 80000e2:	68bb      	ldr	r3, [r7, #8]
 80000e4:	3301      	adds	r3, #1
 80000e6:	60bb      	str	r3, [r7, #8]
 80000e8:	68ba      	ldr	r2, [r7, #8]
 80000ea:	687b      	ldr	r3, [r7, #4]
 80000ec:	429a      	cmp	r2, r3
 80000ee:	d3f3      	bcc.n	80000d8 <Reset_Handler+0x4c>
 80000f0:	f7ff ff8a 	bl	8000008 <main>
 80000f4:	bf00      	nop
 80000f6:	3718      	adds	r7, #24
 80000f8:	46bd      	mov	sp, r7
 80000fa:	bd80      	pop	{r7, pc}
 80000fc:	20000000 	andcs	r0, r0, r0
 8000100:	20000000 	andcs	r0, r0, r0
 8000104:	08000110 	stmdaeq	r0, {r4, r8}
 8000108:	20000000 	andcs	r0, r0, r0
 800010c:	20000000 	andcs	r0, r0, r0

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000001a5 	andeq	r0, r0, r5, lsr #3
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000001a9 	andeq	r0, r0, r9, lsr #3
  10:	00019e0c 	andeq	r9, r1, ip, lsl #28
  14:	00001100 	andeq	r1, r0, r0, lsl #2
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00008408 	andeq	r8, r0, r8, lsl #8
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000007d 	andeq	r0, r0, sp, ror r0
  2c:	7b080102 	blvc	20043c <vectors-0x7dffbc4>
  30:	02000000 	andeq	r0, r0, #0
  34:	020b0502 	andeq	r0, fp, #8388608	; 0x800000
  38:	02020000 	andeq	r0, r2, #0
  3c:	00008907 	andeq	r8, r0, r7, lsl #18
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000195 	muleq	r0, r5, r1
  48:	0000f603 	andeq	pc, r0, r3, lsl #12
  4c:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	33070402 	movwcc	r0, #29698	; 0x7402
  58:	02000001 	andeq	r0, r0, #1
  5c:	01900508 	orrseq	r0, r0, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  64:	00012e07 	andeq	r2, r1, r7, lsl #28
  68:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	38070402 	stmdacc	r7, {r1, sl}
  74:	03000001 	movweq	r0, #1
  78:	000000f8 	strdeq	r0, [r0], -r8
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	2c010706 	stccs	7, cr0, [r1], {6}
  8c:	01000000 	mrseq	r0, (UNDEF: 0)
  90:	010f0107 	tsteq	pc, r7, lsl #2
  94:	20070000 	andcs	r0, r7, r0
  98:	00000002 	andeq	r0, r0, r2
  9c:	00022907 	andeq	r2, r2, r7, lsl #18
  a0:	7a070100 	bvc	1c04a8 <vectors-0x7e3fb58>
  a4:	02000001 	andeq	r0, r0, #1
  a8:	00005907 	andeq	r5, r0, r7, lsl #18
  ac:	09070300 	stmdbeq	r7, {r8, r9}
  b0:	04000000 	streq	r0, [r0], #-0
  b4:	00025507 	andeq	r5, r2, r7, lsl #10
  b8:	43070500 	movwmi	r0, #29952	; 0x7500
  bc:	06000000 	streq	r0, [r0], -r0
  c0:	00004e07 	andeq	r4, r0, r7, lsl #28
  c4:	3d070700 	stccc	7, cr0, [r7, #-0]
  c8:	08000002 	stmdaeq	r0, {r1}
  cc:	00000007 	andeq	r0, r0, r7
  d0:	ed070900 	vstr.16	s0, [r7, #-0]
  d4:	0a000000 	beq	dc <vectors-0x7ffff24>
  d8:	0000b507 	andeq	fp, r0, r7, lsl #10
  dc:	d5070b00 	strle	r0, [r7, #-2816]	; 0xfffff500
  e0:	0c000000 	stceq	0, cr0, [r0], {-0}
  e4:	00015c07 	andeq	r5, r1, r7, lsl #24
  e8:	70070d00 	andvc	r0, r7, r0, lsl #26
  ec:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
  f0:	00010107 	andeq	r0, r1, r7, lsl #2
  f4:	0b070f00 	bleq	1c3cfc <vectors-0x7e3c304>
  f8:	10000001 	andne	r0, r0, r1
  fc:	0000e107 	andeq	lr, r0, r7, lsl #2
 100:	20071100 	andcs	r1, r7, r0, lsl #2
 104:	12000001 	andne	r0, r0, #1
 108:	0000cb07 	andeq	ip, r0, r7, lsl #22
 10c:	06001300 	streq	r1, [r0], -r0, lsl #6
 110:	002c0107 	eoreq	r0, ip, r7, lsl #2
 114:	20010000 	andcs	r0, r1, r0
 118:	00015a01 	andeq	r5, r1, r1, lsl #20
 11c:	009c0700 	addseq	r0, ip, r0, lsl #14
 120:	07000000 	streq	r0, [r0, -r0]
 124:	000000a8 	andeq	r0, r0, r8, lsr #1
 128:	02470701 	subeq	r0, r7, #262144	; 0x40000
 12c:	07020000 	streq	r0, [r2, -r0]
 130:	00000184 	andeq	r0, r0, r4, lsl #3
 134:	01660703 	cmneq	r6, r3, lsl #14
 138:	07040000 	streq	r0, [r4, -r0]
 13c:	00000063 	andeq	r0, r0, r3, rrx
 140:	01450705 	cmpeq	r5, r5, lsl #14
 144:	07060000 	streq	r0, [r6, -r0]
 148:	00000115 	andeq	r0, r0, r5, lsl r1
 14c:	02320707 	eorseq	r0, r2, #1835008	; 0x1c0000
 150:	07080000 	streq	r0, [r8, -r0]
 154:	00000215 	andeq	r0, r0, r5, lsl r2
 158:	29080009 	stmdbcs	r8, {r0, r3}
 15c:	01000001 	tsteq	r0, r1
 160:	0069052d 	rsbeq	r0, r9, sp, lsr #10
 164:	00080000 	andeq	r0, r8, r0
 168:	00840800 	addeq	r0, r4, r0, lsl #16
 16c:	9c010000 	stcls	0, cr0, [r1], {-0}
 170:	000001a2 	andeq	r0, r0, r2, lsr #3
 174:	00006d09 	andeq	r6, r0, r9, lsl #26
 178:	18300100 	ldmdane	r0!, {r8}
 17c:	000001a2 	andeq	r0, r0, r2, lsr #3
 180:	09749102 	ldmdbeq	r4!, {r1, r8, ip, pc}^
 184:	000000be 	strheq	r0, [r0], -lr
 188:	a2183101 	andsge	r3, r8, #1073741824	; 0x40000000
 18c:	02000001 	andeq	r0, r0, #1
 190:	50097091 	mulpl	r9, r1, r0
 194:	01000001 	tsteq	r0, r1
 198:	01a21832 			; <UNDEFINED> instruction: 0x01a21832
 19c:	91020000 	mrsls	r0, (UNDEF: 2)
 1a0:	040a006c 	streq	r0, [sl], #-108	; 0xffffff94
 1a4:	00000083 	andeq	r0, r0, r3, lsl #1
 1a8:	00017600 	andeq	r7, r1, r0, lsl #12
 1ac:	94000400 	strls	r0, [r0], #-1024	; 0xfffffc00
 1b0:	04000000 	streq	r0, [r0], #-0
 1b4:	0001a901 	andeq	sl, r1, r1, lsl #18
 1b8:	02800c00 	addeq	r0, r0, #0, 24
 1bc:	00110000 	andseq	r0, r1, r0
 1c0:	008c0000 	addeq	r0, ip, r0
 1c4:	00840800 	addeq	r0, r4, r0, lsl #16
 1c8:	010f0000 	mrseq	r0, CPSR
 1cc:	01020000 	mrseq	r0, (UNDEF: 2)
 1d0:	00007d06 	andeq	r7, r0, r6, lsl #26
 1d4:	02650300 	rsbeq	r0, r5, #0, 6
 1d8:	2b020000 	blcs	801e0 <vectors-0x7f7fe20>
 1dc:	00003818 	andeq	r3, r0, r8, lsl r8
 1e0:	08010200 	stmdaeq	r1, {r9}
 1e4:	0000007b 	andeq	r0, r0, fp, ror r0
 1e8:	0b050202 	bleq	1409f8 <vectors-0x7ebf608>
 1ec:	02000002 	andeq	r0, r0, #2
 1f0:	00890702 	addeq	r0, r9, r2, lsl #14
 1f4:	04020000 	streq	r0, [r2], #-0
 1f8:	00019505 	andeq	r9, r1, r5, lsl #10
 1fc:	00f60300 	rscseq	r0, r6, r0, lsl #6
 200:	4f020000 	svcmi	0x00020000
 204:	00006019 	andeq	r6, r0, r9, lsl r0
 208:	07040200 	streq	r0, [r4, -r0, lsl #4]
 20c:	00000133 	andeq	r0, r0, r3, lsr r1
 210:	90050802 	andls	r0, r5, r2, lsl #16
 214:	02000001 	andeq	r0, r0, #1
 218:	012e0708 			; <UNDEFINED> instruction: 0x012e0708
 21c:	04040000 	streq	r0, [r4], #-0
 220:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
 224:	07040200 	streq	r0, [r4, -r0, lsl #4]
 228:	00000138 	andeq	r0, r0, r8, lsr r1
 22c:	00026703 	andeq	r6, r2, r3, lsl #14
 230:	13180300 	tstne	r8, #0, 6
 234:	0000002c 	andeq	r0, r0, ip, lsr #32
 238:	0000f803 	andeq	pc, r0, r3, lsl #16
 23c:	14300300 	ldrtne	r0, [r0], #-768	; 0xfffffd00
 240:	00000054 	andeq	r0, r0, r4, asr r0
 244:	00025e05 	andeq	r5, r2, r5, lsl #28
 248:	11150100 	tstne	r5, r0, lsl #2
 24c:	0000008f 	andeq	r0, r0, pc, lsl #1
 250:	0002a205 	andeq	sl, r2, r5, lsl #4
 254:	11160100 	tstne	r6, r0, lsl #2
 258:	0000008f 	andeq	r0, r0, pc, lsl #1
 25c:	0002c105 	andeq	ip, r2, r5, lsl #2
 260:	11170100 	tstne	r7, r0, lsl #2
 264:	0000008f 	andeq	r0, r0, pc, lsl #1
 268:	0002b105 	andeq	fp, r2, r5, lsl #2
 26c:	11190100 	tstne	r9, r0, lsl #2
 270:	0000008f 	andeq	r0, r0, pc, lsl #1
 274:	00026f05 	andeq	r6, r2, r5, lsl #30
 278:	111a0100 	tstne	sl, r0, lsl #2
 27c:	0000008f 	andeq	r0, r0, pc, lsl #1
 280:	00008f06 	andeq	r8, r0, r6, lsl #30
 284:	0000e700 	andeq	lr, r0, r0, lsl #14
 288:	007c0700 	rsbseq	r0, ip, r0, lsl #14
 28c:	00010000 	andeq	r0, r1, r0
 290:	0002a908 	andeq	sl, r2, r8, lsl #18
 294:	0a2b0100 	beq	ac069c <vectors-0x753f964>
 298:	000000d7 	ldrdeq	r0, [r0], -r7
 29c:	00000305 	andeq	r0, r0, r5, lsl #6
 2a0:	94090800 	strls	r0, [r9], #-2048	; 0xfffff800
 2a4:	01000002 	tsteq	r0, r2
 2a8:	008c0631 	addeq	r0, ip, r1, lsr r6
 2ac:	00840800 	addeq	r0, r4, r0, lsl #16
 2b0:	9c010000 	stcls	0, cr0, [r1], {-0}
 2b4:	00000173 	andeq	r0, r0, r3, ror r1
 2b8:	0002750a 	andeq	r7, r2, sl, lsl #10
 2bc:	0b340100 	bleq	d006c4 <vectors-0x72ff93c>
 2c0:	0000008f 	andeq	r0, r0, pc, lsl #1
 2c4:	0a649102 	beq	19246d4 <vectors-0x66db92c>
 2c8:	000002bc 			; <UNDEFINED> instruction: 0x000002bc
 2cc:	730b3901 	movwvc	r3, #47361	; 0xb901
 2d0:	02000001 	andeq	r0, r0, #1
 2d4:	b70a7491 			; <UNDEFINED> instruction: 0xb70a7491
 2d8:	01000002 	tsteq	r0, r2
 2dc:	01730b3a 	cmneq	r3, sl, lsr fp
 2e0:	91020000 	mrsls	r0, (UNDEF: 2)
 2e4:	00a20b70 	adceq	r0, r2, r0, ror fp
 2e8:	00240800 	eoreq	r0, r4, r0, lsl #16
 2ec:	01590000 	cmpeq	r9, r0
 2f0:	ca0a0000 	bgt	2802f8 <vectors-0x7d7fd08>
 2f4:	01000002 	tsteq	r0, r2
 2f8:	008f103d 	addeq	r1, pc, sp, lsr r0	; <UNPREDICTABLE>
 2fc:	91020000 	mrsls	r0, (UNDEF: 2)
 300:	d20c006c 	andle	r0, ip, #108	; 0x6c
 304:	1e080000 	cdpne	0, 0, cr0, cr8, cr0, {0}
 308:	0a000000 	beq	310 <vectors-0x7fffcf0>
 30c:	000002ca 	andeq	r0, r0, sl, asr #5
 310:	8f104801 	svchi	0x00104801
 314:	02000000 	andeq	r0, r0, #0
 318:	00006891 	muleq	r0, r1, r8
 31c:	0083040d 	addeq	r0, r3, sp, lsl #8
 320:	Address 0x00000320 is out of bounds.


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
  40:	0b3e0104 	bleq	f80458 <vectors-0x707fba8>
  44:	13490b0b 	movtne	r0, #39691	; 0x9b0b
  48:	0b3b0b3a 	bleq	ec2d38 <vectors-0x713d2c8>
  4c:	13010b39 	movwne	r0, #6969	; 0x1b39
  50:	28070000 	stmdacs	r7, {}	; <UNPREDICTABLE>
  54:	1c0e0300 	stcne	3, cr0, [lr], {-0}
  58:	0800000b 	stmdaeq	r0, {r0, r1, r3}
  5c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  60:	0b3a0e03 	bleq	e83874 <vectors-0x717c78c>
  64:	0b390b3b 	bleq	e42d58 <vectors-0x71bd2a8>
  68:	13491927 	movtne	r1, #39207	; 0x9927
  6c:	06120111 			; <UNDEFINED> instruction: 0x06120111
  70:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  74:	00130119 	andseq	r0, r3, r9, lsl r1
  78:	00340900 	eorseq	r0, r4, r0, lsl #18
  7c:	0b3a0e03 	bleq	e83890 <vectors-0x717c770>
  80:	0b390b3b 	bleq	e42d74 <vectors-0x71bd28c>
  84:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  88:	0f0a0000 	svceq	0x000a0000
  8c:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  90:	00000013 	andeq	r0, r0, r3, lsl r0
  94:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
  98:	030b130e 	movweq	r1, #45838	; 0xb30e
  9c:	110e1b0e 	tstne	lr, lr, lsl #22
  a0:	10061201 	andne	r1, r6, r1, lsl #4
  a4:	02000017 	andeq	r0, r0, #23
  a8:	0b0b0024 	bleq	2c0140 <vectors-0x7d3fec0>
  ac:	0e030b3e 	vmoveq.16	d3[0], r0
  b0:	16030000 	strne	r0, [r3], -r0
  b4:	3a0e0300 	bcc	380cbc <vectors-0x7c7f344>
  b8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  bc:	0013490b 	andseq	r4, r3, fp, lsl #18
  c0:	00240400 	eoreq	r0, r4, r0, lsl #8
  c4:	0b3e0b0b 	bleq	f82cf8 <vectors-0x707d308>
  c8:	00000803 	andeq	r0, r0, r3, lsl #16
  cc:	03003405 	movweq	r3, #1029	; 0x405
  d0:	3b0b3a0e 	blcc	2ce910 <vectors-0x7d316f0>
  d4:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  d8:	3c193f13 	ldccc	15, cr3, [r9], {19}
  dc:	06000019 			; <UNDEFINED> instruction: 0x06000019
  e0:	13490101 	movtne	r0, #37121	; 0x9101
  e4:	00001301 	andeq	r1, r0, r1, lsl #6
  e8:	49002107 	stmdbmi	r0, {r0, r1, r2, r8, sp}
  ec:	000b2f13 	andeq	r2, fp, r3, lsl pc
  f0:	00340800 	eorseq	r0, r4, r0, lsl #16
  f4:	0b3a0e03 	bleq	e83908 <vectors-0x717c6f8>
  f8:	0b390b3b 	bleq	e42dec <vectors-0x71bd214>
  fc:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
 100:	00001802 	andeq	r1, r0, r2, lsl #16
 104:	3f012e09 	svccc	0x00012e09
 108:	3a0e0319 	bcc	380d74 <vectors-0x7c7f28c>
 10c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 110:	1119270b 	tstne	r9, fp, lsl #14
 114:	40061201 	andmi	r1, r6, r1, lsl #4
 118:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 11c:	00001301 	andeq	r1, r0, r1, lsl #6
 120:	0300340a 	movweq	r3, #1034	; 0x40a
 124:	3b0b3a0e 	blcc	2ce964 <vectors-0x7d3169c>
 128:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 12c:	00180213 	andseq	r0, r8, r3, lsl r2
 130:	010b0b00 	tsteq	fp, r0, lsl #22
 134:	06120111 			; <UNDEFINED> instruction: 0x06120111
 138:	00001301 	andeq	r1, r0, r1, lsl #6
 13c:	11010b0c 	tstne	r1, ip, lsl #22
 140:	00061201 	andeq	r1, r6, r1, lsl #4
 144:	000f0d00 	andeq	r0, pc, r0, lsl #26
 148:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 14c:	Address 0x0000014c is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000008 	stmdaeq	r0, {r3}
  14:	00000084 	andeq	r0, r0, r4, lsl #1
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01a90002 			; <UNDEFINED> instruction: 0x01a90002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0800008c 	stmdaeq	r0, {r2, r3, r7}
  34:	00000084 	andeq	r0, r0, r4, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0000010b 	andeq	r0, r0, fp, lsl #2
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
  cc:	012c0308 			; <UNDEFINED> instruction: 0x012c0308
  d0:	2f3f1805 	svccs	0x003f1805
  d4:	3214052f 	andscc	r0, r4, #197132288	; 0xbc00000
  d8:	05681a05 	strbeq	r1, [r8, #-2565]!	; 0xfffff5fb
  dc:	1105851f 	tstne	r5, pc, lsl r5
  e0:	2e1e054b 	cfmac32cs	mvfx0, mvfx14, mvfx11
  e4:	053f1005 	ldreq	r1, [pc, #-5]!	; e7 <vectors-0x7ffff19>
  e8:	10052e1d 	andne	r2, r5, sp, lsl lr
  ec:	2e1d052f 	cfmul64cs	mvdx0, mvdx13, mvdx15
  f0:	053d1005 	ldreq	r1, [sp, #-5]!
  f4:	10052e1d 	andne	r2, r5, sp, lsl lr
  f8:	2e1d053d 	mrccs	5, 0, r0, cr13, cr13, {1}
  fc:	053d1005 	ldreq	r1, [sp, #-5]!
 100:	053d2e1d 	ldreq	r2, [sp, #-3613]!	; 0xfffff1e3
 104:	0402000b 	streq	r0, [r2], #-11
 108:	07023f01 	streq	r3, [r2, -r1, lsl #30]
 10c:	49010100 	stmdbmi	r1, {r8}
 110:	03000001 	movweq	r0, #1
 114:	0000c300 	andeq	ip, r0, r0, lsl #6
 118:	fb010200 	blx	40922 <vectors-0x7fbf6de>
 11c:	01000d0e 	tsteq	r0, lr, lsl #26
 120:	00010101 	andeq	r0, r1, r1, lsl #2
 124:	00010000 	andeq	r0, r1, r0
 128:	72730100 	rsbsvc	r0, r3, #0, 2
 12c:	3a640063 	bcc	19002c0 <vectors-0x66ffd40>
 130:	5f77735c 	svcpl	0x0077735c
 134:	72615c38 	rsbvc	r5, r1, #56, 24	; 0x3800
 138:	63675f6d 	cmnvs	r7, #436	; 0x1b4
 13c:	30315f63 	eorscc	r5, r1, r3, ror #30
 140:	315c332e 	cmpcc	ip, lr, lsr #6
 144:	30322030 	eorscc	r2, r2, r0, lsr r0
 148:	312e3132 			; <UNDEFINED> instruction: 0x312e3132
 14c:	72615c30 	rsbvc	r5, r1, #48, 24	; 0x3000
 150:	6f6e2d6d 	svcvs	0x006e2d6d
 154:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 158:	5c696261 	sfmpl	f6, 2, [r9], #-388	; 0xfffffe7c
 15c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 160:	5c656475 	cfstrdpl	mvd6, [r5], #-468	; 0xfffffe2c
 164:	6863616d 	stmdavs	r3!, {r0, r2, r3, r5, r6, r8, sp, lr}^
 168:	00656e69 	rsbeq	r6, r5, r9, ror #28
 16c:	735c3a64 	cmpvc	ip, #100, 20	; 0x64000
 170:	5c385f77 	ldcpl	15, cr5, [r8], #-476	; 0xfffffe24
 174:	5f6d7261 	svcpl	0x006d7261
 178:	5f636367 	svcpl	0x00636367
 17c:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
 180:	2030315c 	eorscs	r3, r0, ip, asr r1
 184:	31323032 	teqcc	r2, r2, lsr r0
 188:	5c30312e 	ldfpls	f3, [r0], #-184	; 0xffffff48
 18c:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 190:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 194:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 198:	6e695c69 	cdpvs	12, 6, cr5, cr9, cr9, {3}
 19c:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 1a0:	79735c65 	ldmdbvc	r3!, {r0, r2, r5, r6, sl, fp, ip, lr}^
 1a4:	73000073 	movwvc	r0, #115	; 0x73
 1a8:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
 1ac:	6174735f 	cmnvs	r4, pc, asr r3
 1b0:	70757472 	rsbsvc	r7, r5, r2, ror r4
 1b4:	0100632e 	tsteq	r0, lr, lsr #6
 1b8:	645f0000 	ldrbvs	r0, [pc], #-0	; 1c0 <vectors-0x7fffe40>
 1bc:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
 1c0:	745f746c 	ldrbvc	r7, [pc], #-1132	; 1c8 <vectors-0x7fffe38>
 1c4:	73657079 	cmnvc	r5, #121	; 0x79
 1c8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 1cc:	735f0000 	cmpvc	pc, #0
 1d0:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 1d4:	00682e74 	rsbeq	r2, r8, r4, ror lr
 1d8:	00000003 	andeq	r0, r0, r3
 1dc:	05001d05 	streq	r1, [r0, #-3333]	; 0xfffff2fb
 1e0:	00008c02 	andeq	r8, r0, r2, lsl #24
 1e4:	01300308 	teqeq	r0, r8, lsl #6
 1e8:	053f1805 	ldreq	r1, [pc, #-2053]!	; fffff9eb <__bss_end__+0xdffff9eb>
 1ec:	0b05202c 	bleq	1482a4 <vectors-0x7eb7d5c>
 1f0:	052f3320 	streq	r3, [pc, #-800]!	; fffffed8 <__bss_end__+0xdffffed8>
 1f4:	02053110 	andeq	r3, r5, #16, 2
 1f8:	0012052e 	andseq	r0, r2, lr, lsr #10
 1fc:	21030402 	tstcs	r3, r2, lsl #8
 200:	02000805 	andeq	r0, r0, #327680	; 0x50000
 204:	053c0304 	ldreq	r0, [ip, #-772]!	; 0xfffffcfc
 208:	0402000d 	streq	r0, [r2], #-13
 20c:	0b053c03 	bleq	14f220 <vectors-0x7eb0de0>
 210:	03040200 	movweq	r0, #16896	; 0x4200
 214:	00310520 	eorseq	r0, r1, r0, lsr #10
 218:	1f030402 	svcne	0x00030402
 21c:	02000205 	andeq	r0, r0, #1342177280	; 0x50000000
 220:	053c0104 	ldreq	r0, [ip, #-260]!	; 0xfffffefc
 224:	22054f0f 	andcs	r4, r5, #15, 30	; 0x3c
 228:	200d0520 	andcs	r0, sp, r0, lsr #10
 22c:	05310705 	ldreq	r0, [r1, #-1797]!	; 0xfffff8fb
 230:	02053110 	andeq	r3, r5, #16, 2
 234:	0008052e 	andeq	r0, r8, lr, lsr #10
 238:	21030402 	tstcs	r3, r2, lsl #8
 23c:	02000b05 	andeq	r0, r0, #5120	; 0x1400
 240:	053c0304 	ldreq	r0, [ip, #-772]!	; 0xfffffcfc
 244:	04020031 	streq	r0, [r2], #-49	; 0xffffffcf
 248:	02052d03 	andeq	r2, r5, #3, 26	; 0xc0
 24c:	01040200 	mrseq	r0, R12_usr
 250:	4a09033c 	bmi	240f48 <vectors-0x7dbf0b8>
 254:	02300105 	eorseq	r0, r0, #1073741825	; 0x40000001
 258:	0101000e 	tsteq	r1, lr

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
   4:	544e435f 	strbpl	r4, [lr], #-863	; 0xfffffca1
   8:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
   c:	52535f78 	subspl	r5, r3, #120, 30	; 0x1e0
  10:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  14:	5c73736f 	ldclpl	3, cr7, [r3], #-444	; 0xfffffe44
  18:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  1c:	75622d32 	strbvc	r2, [r2, #-3378]!	; 0xfffff2ce
  20:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  24:	696c622d 	stmdbvs	ip!, {r0, r2, r3, r5, r9, sp, lr}^
  28:	2d796b6e 	vldmdbcs	r9!, {d22-<overflow reg d76>}
  2c:	722d6f6e 	eorvc	r6, sp, #440	; 0x1b8
  30:	745c6d61 	ldrbvc	r6, [ip], #-3425	; 0xfffff29f
  34:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
  38:	696c625f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
  3c:	5f796b6e 	svcpl	0x00796b6e
  40:	54003731 	strpl	r3, [r0], #-1841	; 0xfffff8cf
  44:	5f784d49 	svcpl	0x00784d49
  48:	524d4343 	subpl	r4, sp, #201326593	; 0xc000001
  4c:	49540031 	ldmdbmi	r4, {r0, r4, r5}^
  50:	435f784d 	cmpmi	pc, #5046272	; 0x4d0000
  54:	32524d43 	subscc	r4, r2, #4288	; 0x10c0
  58:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  5c:	49445f78 	stmdbmi	r4, {r3, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
  60:	47005245 	strmi	r5, [r0, -r5, asr #4]
  64:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
  68:	52444f5f 	subpl	r4, r4, #380	; 0x17c
  6c:	525f7000 	subspl	r7, pc, #0
  70:	415f4343 	cmpmi	pc, r3, asr #6
  74:	45314248 	ldrmi	r4, [r1, #-584]!	; 0xfffffdb8
  78:	7500524e 	strvc	r5, [r0, #-590]	; 0xfffffdb2
  7c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  80:	2064656e 	rsbcs	r6, r4, lr, ror #10
  84:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
  88:	6f687300 	svcvs	0x00687300
  8c:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  90:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  94:	2064656e 	rsbcs	r6, r4, lr, ror #10
  98:	00746e69 	rsbseq	r6, r4, r9, ror #28
  9c:	4f495047 	svcmi	0x00495047
  a0:	4f4d5f78 	svcmi	0x004d5f78
  a4:	00524544 	subseq	r4, r2, r4, asr #10
  a8:	4f495047 	svcmi	0x00495047
  ac:	544f5f78 	strbpl	r5, [pc], #-3960	; b4 <vectors-0x7ffff4c>
  b0:	52455059 	subpl	r5, r5, #89	; 0x59
  b4:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  b8:	52415f78 	subpl	r5, r1, #120, 30	; 0x1e0
  bc:	5f700052 	svcpl	0x00700052
  c0:	4f495047 	svcmi	0x00495047
  c4:	41425f44 	cmpmi	r2, r4, asr #30
  c8:	54004553 	strpl	r4, [r0], #-1363	; 0xfffffaad
  cc:	5f784d49 	svcpl	0x00784d49
  d0:	52414d44 	subpl	r4, r1, #68, 26	; 0x1100
  d4:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  d8:	53525f78 	cmppl	r2, #120, 30	; 0x1e0
  dc:	31445652 	cmpcc	r4, r2, asr r6
  e0:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  e4:	53525f78 	cmppl	r2, #120, 30	; 0x1e0
  e8:	32445652 	subcc	r5, r4, #85983232	; 0x5200000
  ec:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
  f0:	53505f78 	cmppl	r0, #120, 30	; 0x1e0
  f4:	5f5f0043 	svcpl	0x005f0043
  f8:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
  fc:	745f3233 	ldrbvc	r3, [pc], #-563	; 104 <vectors-0x7fffefc>
 100:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 104:	43435f78 	movtmi	r5, #16248	; 0x3f78
 108:	54003352 	strpl	r3, [r0], #-850	; 0xfffffcae
 10c:	5f784d49 	svcpl	0x00784d49
 110:	34524343 	ldrbcc	r4, [r2], #-835	; 0xfffffcbd
 114:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 118:	4c5f784f 	mrrcmi	8, 4, r7, pc, cr15	; <UNPREDICTABLE>
 11c:	00524b43 	subseq	r4, r2, r3, asr #22
 120:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 124:	5243445f 	subpl	r4, r3, #1593835520	; 0x5f000000
 128:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
 12c:	6f6c006e 	svcvs	0x006c006e
 130:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
 134:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 138:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 13c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 140:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 144:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 148:	425f784f 	subsmi	r7, pc, #5177344	; 0x4f0000
 14c:	00525253 	subseq	r5, r2, r3, asr r2
 150:	49545f70 	ldmdbmi	r4, {r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 154:	425f344d 	subsmi	r3, pc, #1291845632	; 0x4d000000
 158:	00455341 	subeq	r5, r5, r1, asr #6
 15c:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 160:	5243435f 	subpl	r4, r3, #2080374785	; 0x7c000001
 164:	50470031 	subpl	r0, r7, r1, lsr r0
 168:	5f784f49 	svcpl	0x00784f49
 16c:	00524449 	subseq	r4, r2, r9, asr #8
 170:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 174:	5243435f 	subpl	r4, r3, #2080374785	; 0x7c000001
 178:	49540032 	ldmdbmi	r4, {r1, r4, r5}^
 17c:	535f784d 	cmppl	pc, #5046272	; 0x4d0000
 180:	0052434d 	subseq	r4, r2, sp, asr #6
 184:	4f495047 	svcmi	0x00495047
 188:	55505f78 	ldrbpl	r5, [r0, #-3960]	; 0xfffff088
 18c:	00524450 	subseq	r4, r2, r0, asr r4
 190:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 194:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
 198:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
 19c:	72730074 	rsbsvc	r0, r3, #116	; 0x74
 1a0:	616d2f63 	cmnvs	sp, r3, ror #30
 1a4:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
 1a8:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
 1ac:	37314320 	ldrcc	r4, [r1, -r0, lsr #6]!
 1b0:	2e303120 	rsfcssp	f3, f0, f0
 1b4:	20312e33 	eorscs	r2, r1, r3, lsr lr
 1b8:	31323032 	teqcc	r2, r2, lsr r0
 1bc:	34323830 	ldrtcc	r3, [r2], #-2096	; 0xfffff7d0
 1c0:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
 1c4:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
 1c8:	2d202965 			; <UNDEFINED> instruction: 0x2d202965
 1cc:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
 1d0:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
 1d4:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
 1d8:	2d20346d 	cfstrscs	mvf3, [r0, #-436]!	; 0xfffffe4c
 1dc:	7568746d 	strbvc	r7, [r8, #-1133]!	; 0xfffffb93
 1e0:	2d20626d 	sfmcs	f6, 4, [r0, #-436]!	; 0xfffffe4c
 1e4:	6f6c666d 	svcvs	0x006c666d
 1e8:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
 1ec:	733d6962 	teqvc	sp, #1605632	; 0x188000
 1f0:	2074666f 	rsbscs	r6, r4, pc, ror #12
 1f4:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
 1f8:	613d6863 	teqvs	sp, r3, ror #16
 1fc:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
 200:	206d2d65 	rsbcs	r2, sp, r5, ror #26
 204:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 208:	7300304f 	movwvc	r3, #79	; 0x4f
 20c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 210:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 214:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 218:	415f784f 	cmpmi	pc, pc, asr #16
 21c:	00485246 	subeq	r5, r8, r6, asr #4
 220:	784d4954 	stmdavc	sp, {r2, r4, r6, r8, fp, lr}^
 224:	3152435f 	cmpcc	r2, pc, asr r3
 228:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 22c:	52435f78 	subpl	r5, r3, #120, 30	; 0x1e0
 230:	50470032 	subpl	r0, r7, r2, lsr r0
 234:	5f784f49 	svcpl	0x00784f49
 238:	4c524641 	mrrcmi	6, 4, r4, r2, cr1
 23c:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 240:	43435f78 	movtmi	r5, #16248	; 0x3f78
 244:	47005245 	strmi	r5, [r0, -r5, asr #4]
 248:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 24c:	50534f5f 	subspl	r4, r3, pc, asr pc
 250:	52444545 	subpl	r4, r4, #289406976	; 0x11400000
 254:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 258:	47455f78 	smlsldxmi	r5, r5, r8, pc	; <UNPREDICTABLE>
 25c:	735f0052 	cmpvc	pc, #82	; 0x52
 260:	61746164 	cmnvs	r4, r4, ror #2
 264:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff36c <__bss_end__+0xdffff36c>
 268:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 26c:	5f00745f 	svcpl	0x0000745f
 270:	73736265 	cmnvc	r3, #1342177286	; 0x50000006
 274:	7a697300 	bvc	1a5ce7c <vectors-0x65a3184>
 278:	79625f65 	stmdbvc	r2!, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
 27c:	00736574 	rsbseq	r6, r3, r4, ror r5
 280:	2f637273 	svccs	0x00637273
 284:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
 288:	74735f32 	ldrbtvc	r5, [r3], #-3890	; 0xfffff0ce
 28c:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0xfffffd9f
 290:	00632e70 	rsbeq	r2, r3, r0, ror lr
 294:	65736552 	ldrbvs	r6, [r3, #-1362]!	; 0xfffffaae
 298:	61485f74 	hvcvs	34292	; 0x85f4
 29c:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 2a0:	655f0072 	ldrbvs	r0, [pc, #-114]	; 236 <vectors-0x7fffdca>
 2a4:	61746164 	cmnvs	r4, r4, ror #2
 2a8:	63657600 	cmnvs	r5, #0, 12
 2ac:	73726f74 	cmnvc	r2, #116, 30	; 0x1d0
 2b0:	62735f00 	rsbsvs	r5, r3, #0, 30
 2b4:	70007373 	andvc	r7, r0, r3, ror r3
 2b8:	00435253 	subeq	r5, r3, r3, asr r2
 2bc:	74734470 	ldrbtvc	r4, [r3], #-1136	; 0xfffffb90
 2c0:	616c5f00 	cmnvs	ip, r0, lsl #30
 2c4:	7461645f 	strbtvc	r6, [r1], #-1119	; 0xfffffba1
 2c8:	6e430061 	cdpvs	0, 4, cr0, cr3, cr1, {3}
 2cc:	Address 0x000002cc is out of bounds.


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
  1c:	00000084 	andeq	r0, r0, r4, lsl #1
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	180e4101 	stmdane	lr, {r0, r8, lr}
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000020 	andeq	r0, r0, r0, lsr #32
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	0800008c 	stmdaeq	r0, {r2, r3, r7}
  48:	00000084 	andeq	r0, r0, r4, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	080e7307 	stmdaeq	lr, {r0, r1, r2, r8, r9, ip, sp, lr}
  5c:	000d0d41 	andeq	r0, sp, r1, asr #26
