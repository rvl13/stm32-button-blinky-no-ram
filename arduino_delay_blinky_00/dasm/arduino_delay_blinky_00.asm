
obj/arduino_delay_blinky_00.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20020000 	andcs	r0, r2, r0
 8000004:	0800024d 	stmdaeq	r0, {r0, r2, r3, r6, r9}

08000008 <initGpio>:
 8000008:	b480      	push	{r7}
 800000a:	af00      	add	r7, sp, #0
 800000c:	4b06      	ldr	r3, [pc, #24]	; (8000028 <initGpio+0x20>)
 800000e:	681b      	ldr	r3, [r3, #0]
 8000010:	3330      	adds	r3, #48	; 0x30
 8000012:	681a      	ldr	r2, [r3, #0]
 8000014:	4b04      	ldr	r3, [pc, #16]	; (8000028 <initGpio+0x20>)
 8000016:	681b      	ldr	r3, [r3, #0]
 8000018:	3330      	adds	r3, #48	; 0x30
 800001a:	f042 0209 	orr.w	r2, r2, #9
 800001e:	601a      	str	r2, [r3, #0]
 8000020:	bf00      	nop
 8000022:	46bd      	mov	sp, r7
 8000024:	bc80      	pop	{r7}
 8000026:	4770      	bx	lr
 8000028:	20000000 	andcs	r0, r0, r0

0800002c <pinMode>:
 800002c:	b480      	push	{r7}
 800002e:	b083      	sub	sp, #12
 8000030:	af00      	add	r7, sp, #0
 8000032:	4603      	mov	r3, r0
 8000034:	460a      	mov	r2, r1
 8000036:	71fb      	strb	r3, [r7, #7]
 8000038:	4613      	mov	r3, r2
 800003a:	71bb      	strb	r3, [r7, #6]
 800003c:	79fb      	ldrb	r3, [r7, #7]
 800003e:	2b00      	cmp	r3, #0
 8000040:	d002      	beq.n	8000048 <pinMode+0x1c>
 8000042:	2b0e      	cmp	r3, #14
 8000044:	d016      	beq.n	8000074 <pinMode+0x48>
 8000046:	e02b      	b.n	80000a0 <pinMode+0x74>
 8000048:	4b18      	ldr	r3, [pc, #96]	; (80000ac <pinMode+0x80>)
 800004a:	681b      	ldr	r3, [r3, #0]
 800004c:	681a      	ldr	r2, [r3, #0]
 800004e:	79fb      	ldrb	r3, [r7, #7]
 8000050:	005b      	lsls	r3, r3, #1
 8000052:	2103      	movs	r1, #3
 8000054:	fa01 f303 	lsl.w	r3, r1, r3
 8000058:	43db      	mvns	r3, r3
 800005a:	ea02 0103 	and.w	r1, r2, r3
 800005e:	79bb      	ldrb	r3, [r7, #6]
 8000060:	f003 0203 	and.w	r2, r3, #3
 8000064:	79fb      	ldrb	r3, [r7, #7]
 8000066:	005b      	lsls	r3, r3, #1
 8000068:	409a      	lsls	r2, r3
 800006a:	4b10      	ldr	r3, [pc, #64]	; (80000ac <pinMode+0x80>)
 800006c:	681b      	ldr	r3, [r3, #0]
 800006e:	430a      	orrs	r2, r1
 8000070:	601a      	str	r2, [r3, #0]
 8000072:	e015      	b.n	80000a0 <pinMode+0x74>
 8000074:	4b0e      	ldr	r3, [pc, #56]	; (80000b0 <pinMode+0x84>)
 8000076:	681b      	ldr	r3, [r3, #0]
 8000078:	681a      	ldr	r2, [r3, #0]
 800007a:	79fb      	ldrb	r3, [r7, #7]
 800007c:	005b      	lsls	r3, r3, #1
 800007e:	2103      	movs	r1, #3
 8000080:	fa01 f303 	lsl.w	r3, r1, r3
 8000084:	43db      	mvns	r3, r3
 8000086:	ea02 0103 	and.w	r1, r2, r3
 800008a:	79bb      	ldrb	r3, [r7, #6]
 800008c:	f003 0203 	and.w	r2, r3, #3
 8000090:	79fb      	ldrb	r3, [r7, #7]
 8000092:	005b      	lsls	r3, r3, #1
 8000094:	409a      	lsls	r2, r3
 8000096:	4b06      	ldr	r3, [pc, #24]	; (80000b0 <pinMode+0x84>)
 8000098:	681b      	ldr	r3, [r3, #0]
 800009a:	430a      	orrs	r2, r1
 800009c:	601a      	str	r2, [r3, #0]
 800009e:	bf00      	nop
 80000a0:	bf00      	nop
 80000a2:	370c      	adds	r7, #12
 80000a4:	46bd      	mov	sp, r7
 80000a6:	bc80      	pop	{r7}
 80000a8:	4770      	bx	lr
 80000aa:	bf00      	nop
 80000ac:	20000004 	andcs	r0, r0, r4
 80000b0:	20000008 	andcs	r0, r0, r8

080000b4 <digitalRead>:
 80000b4:	b480      	push	{r7}
 80000b6:	b083      	sub	sp, #12
 80000b8:	af00      	add	r7, sp, #0
 80000ba:	4603      	mov	r3, r0
 80000bc:	71fb      	strb	r3, [r7, #7]
 80000be:	79fb      	ldrb	r3, [r7, #7]
 80000c0:	2b00      	cmp	r3, #0
 80000c2:	d002      	beq.n	80000ca <digitalRead+0x16>
 80000c4:	2b0e      	cmp	r3, #14
 80000c6:	d00f      	beq.n	80000e8 <digitalRead+0x34>
 80000c8:	e01d      	b.n	8000106 <digitalRead+0x52>
 80000ca:	4b12      	ldr	r3, [pc, #72]	; (8000114 <digitalRead+0x60>)
 80000cc:	681b      	ldr	r3, [r3, #0]
 80000ce:	3310      	adds	r3, #16
 80000d0:	681b      	ldr	r3, [r3, #0]
 80000d2:	79fa      	ldrb	r2, [r7, #7]
 80000d4:	2101      	movs	r1, #1
 80000d6:	fa01 f202 	lsl.w	r2, r1, r2
 80000da:	4013      	ands	r3, r2
 80000dc:	2b00      	cmp	r3, #0
 80000de:	bf14      	ite	ne
 80000e0:	2301      	movne	r3, #1
 80000e2:	2300      	moveq	r3, #0
 80000e4:	b2db      	uxtb	r3, r3
 80000e6:	e00f      	b.n	8000108 <digitalRead+0x54>
 80000e8:	4b0b      	ldr	r3, [pc, #44]	; (8000118 <digitalRead+0x64>)
 80000ea:	681b      	ldr	r3, [r3, #0]
 80000ec:	3310      	adds	r3, #16
 80000ee:	681b      	ldr	r3, [r3, #0]
 80000f0:	79fa      	ldrb	r2, [r7, #7]
 80000f2:	2101      	movs	r1, #1
 80000f4:	fa01 f202 	lsl.w	r2, r1, r2
 80000f8:	4013      	ands	r3, r2
 80000fa:	2b00      	cmp	r3, #0
 80000fc:	bf14      	ite	ne
 80000fe:	2301      	movne	r3, #1
 8000100:	2300      	moveq	r3, #0
 8000102:	b2db      	uxtb	r3, r3
 8000104:	e000      	b.n	8000108 <digitalRead+0x54>
 8000106:	2300      	movs	r3, #0
 8000108:	4618      	mov	r0, r3
 800010a:	370c      	adds	r7, #12
 800010c:	46bd      	mov	sp, r7
 800010e:	bc80      	pop	{r7}
 8000110:	4770      	bx	lr
 8000112:	bf00      	nop
 8000114:	20000004 	andcs	r0, r0, r4
 8000118:	20000008 	andcs	r0, r0, r8

0800011c <digitalWrite>:
 800011c:	b480      	push	{r7}
 800011e:	b083      	sub	sp, #12
 8000120:	af00      	add	r7, sp, #0
 8000122:	4603      	mov	r3, r0
 8000124:	460a      	mov	r2, r1
 8000126:	71fb      	strb	r3, [r7, #7]
 8000128:	4613      	mov	r3, r2
 800012a:	71bb      	strb	r3, [r7, #6]
 800012c:	79fb      	ldrb	r3, [r7, #7]
 800012e:	2b00      	cmp	r3, #0
 8000130:	d002      	beq.n	8000138 <digitalWrite+0x1c>
 8000132:	2b0e      	cmp	r3, #14
 8000134:	d022      	beq.n	800017c <digitalWrite+0x60>
 8000136:	e043      	b.n	80001c0 <digitalWrite+0xa4>
 8000138:	79bb      	ldrb	r3, [r7, #6]
 800013a:	2b01      	cmp	r3, #1
 800013c:	d10e      	bne.n	800015c <digitalWrite+0x40>
 800013e:	4b23      	ldr	r3, [pc, #140]	; (80001cc <digitalWrite+0xb0>)
 8000140:	681b      	ldr	r3, [r3, #0]
 8000142:	3314      	adds	r3, #20
 8000144:	681a      	ldr	r2, [r3, #0]
 8000146:	79fb      	ldrb	r3, [r7, #7]
 8000148:	2101      	movs	r1, #1
 800014a:	fa01 f303 	lsl.w	r3, r1, r3
 800014e:	4619      	mov	r1, r3
 8000150:	4b1e      	ldr	r3, [pc, #120]	; (80001cc <digitalWrite+0xb0>)
 8000152:	681b      	ldr	r3, [r3, #0]
 8000154:	3314      	adds	r3, #20
 8000156:	430a      	orrs	r2, r1
 8000158:	601a      	str	r2, [r3, #0]
 800015a:	e031      	b.n	80001c0 <digitalWrite+0xa4>
 800015c:	4b1b      	ldr	r3, [pc, #108]	; (80001cc <digitalWrite+0xb0>)
 800015e:	681b      	ldr	r3, [r3, #0]
 8000160:	3314      	adds	r3, #20
 8000162:	681a      	ldr	r2, [r3, #0]
 8000164:	79fb      	ldrb	r3, [r7, #7]
 8000166:	2101      	movs	r1, #1
 8000168:	fa01 f303 	lsl.w	r3, r1, r3
 800016c:	43db      	mvns	r3, r3
 800016e:	4619      	mov	r1, r3
 8000170:	4b16      	ldr	r3, [pc, #88]	; (80001cc <digitalWrite+0xb0>)
 8000172:	681b      	ldr	r3, [r3, #0]
 8000174:	3314      	adds	r3, #20
 8000176:	400a      	ands	r2, r1
 8000178:	601a      	str	r2, [r3, #0]
 800017a:	e021      	b.n	80001c0 <digitalWrite+0xa4>
 800017c:	79bb      	ldrb	r3, [r7, #6]
 800017e:	2b01      	cmp	r3, #1
 8000180:	d10e      	bne.n	80001a0 <digitalWrite+0x84>
 8000182:	4b13      	ldr	r3, [pc, #76]	; (80001d0 <digitalWrite+0xb4>)
 8000184:	681b      	ldr	r3, [r3, #0]
 8000186:	3314      	adds	r3, #20
 8000188:	681a      	ldr	r2, [r3, #0]
 800018a:	79fb      	ldrb	r3, [r7, #7]
 800018c:	2101      	movs	r1, #1
 800018e:	fa01 f303 	lsl.w	r3, r1, r3
 8000192:	4619      	mov	r1, r3
 8000194:	4b0e      	ldr	r3, [pc, #56]	; (80001d0 <digitalWrite+0xb4>)
 8000196:	681b      	ldr	r3, [r3, #0]
 8000198:	3314      	adds	r3, #20
 800019a:	430a      	orrs	r2, r1
 800019c:	601a      	str	r2, [r3, #0]
 800019e:	e00e      	b.n	80001be <digitalWrite+0xa2>
 80001a0:	4b0b      	ldr	r3, [pc, #44]	; (80001d0 <digitalWrite+0xb4>)
 80001a2:	681b      	ldr	r3, [r3, #0]
 80001a4:	3314      	adds	r3, #20
 80001a6:	681a      	ldr	r2, [r3, #0]
 80001a8:	79fb      	ldrb	r3, [r7, #7]
 80001aa:	2101      	movs	r1, #1
 80001ac:	fa01 f303 	lsl.w	r3, r1, r3
 80001b0:	43db      	mvns	r3, r3
 80001b2:	4619      	mov	r1, r3
 80001b4:	4b06      	ldr	r3, [pc, #24]	; (80001d0 <digitalWrite+0xb4>)
 80001b6:	681b      	ldr	r3, [r3, #0]
 80001b8:	3314      	adds	r3, #20
 80001ba:	400a      	ands	r2, r1
 80001bc:	601a      	str	r2, [r3, #0]
 80001be:	bf00      	nop
 80001c0:	bf00      	nop
 80001c2:	370c      	adds	r7, #12
 80001c4:	46bd      	mov	sp, r7
 80001c6:	bc80      	pop	{r7}
 80001c8:	4770      	bx	lr
 80001ca:	bf00      	nop
 80001cc:	20000004 	andcs	r0, r0, r4
 80001d0:	20000008 	andcs	r0, r0, r8

080001d4 <delay>:
 80001d4:	b480      	push	{r7}
 80001d6:	b085      	sub	sp, #20
 80001d8:	af00      	add	r7, sp, #0
 80001da:	6078      	str	r0, [r7, #4]
 80001dc:	f240 72d4 	movw	r2, #2004	; 0x7d4
 80001e0:	687b      	ldr	r3, [r7, #4]
 80001e2:	fb02 f303 	mul.w	r3, r2, r3
 80001e6:	60fb      	str	r3, [r7, #12]
 80001e8:	bf00      	nop
 80001ea:	68fb      	ldr	r3, [r7, #12]
 80001ec:	1e5a      	subs	r2, r3, #1
 80001ee:	60fa      	str	r2, [r7, #12]
 80001f0:	2b00      	cmp	r3, #0
 80001f2:	d1fa      	bne.n	80001ea <delay+0x16>
 80001f4:	bf00      	nop
 80001f6:	bf00      	nop
 80001f8:	3714      	adds	r7, #20
 80001fa:	46bd      	mov	sp, r7
 80001fc:	bc80      	pop	{r7}
 80001fe:	4770      	bx	lr

08000200 <setup>:
 8000200:	b580      	push	{r7, lr}
 8000202:	af00      	add	r7, sp, #0
 8000204:	2101      	movs	r1, #1
 8000206:	200e      	movs	r0, #14
 8000208:	f7ff ff10 	bl	800002c <pinMode>
 800020c:	bf00      	nop
 800020e:	bd80      	pop	{r7, pc}

08000210 <loop>:
 8000210:	b580      	push	{r7, lr}
 8000212:	af00      	add	r7, sp, #0
 8000214:	2101      	movs	r1, #1
 8000216:	200e      	movs	r0, #14
 8000218:	f7ff ff80 	bl	800011c <digitalWrite>
 800021c:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8000220:	f7ff ffd8 	bl	80001d4 <delay>
 8000224:	2100      	movs	r1, #0
 8000226:	200e      	movs	r0, #14
 8000228:	f7ff ff78 	bl	800011c <digitalWrite>
 800022c:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8000230:	f7ff ffd0 	bl	80001d4 <delay>
 8000234:	bf00      	nop
 8000236:	bd80      	pop	{r7, pc}

08000238 <main>:
 8000238:	b580      	push	{r7, lr}
 800023a:	af00      	add	r7, sp, #0
 800023c:	f7ff fee4 	bl	8000008 <initGpio>
 8000240:	f7ff ffde 	bl	8000200 <setup>
 8000244:	f7ff ffe4 	bl	8000210 <loop>
 8000248:	e7fc      	b.n	8000244 <main+0xc>
	...

0800024c <Reset_Handler>:
 800024c:	b580      	push	{r7, lr}
 800024e:	b086      	sub	sp, #24
 8000250:	af00      	add	r7, sp, #0
 8000252:	4a1a      	ldr	r2, [pc, #104]	; (80002bc <Reset_Handler+0x70>)
 8000254:	4b1a      	ldr	r3, [pc, #104]	; (80002c0 <Reset_Handler+0x74>)
 8000256:	1ad3      	subs	r3, r2, r3
 8000258:	607b      	str	r3, [r7, #4]
 800025a:	4b19      	ldr	r3, [pc, #100]	; (80002c0 <Reset_Handler+0x74>)
 800025c:	617b      	str	r3, [r7, #20]
 800025e:	4b19      	ldr	r3, [pc, #100]	; (80002c4 <Reset_Handler+0x78>)
 8000260:	613b      	str	r3, [r7, #16]
 8000262:	2300      	movs	r3, #0
 8000264:	60fb      	str	r3, [r7, #12]
 8000266:	e00a      	b.n	800027e <Reset_Handler+0x32>
 8000268:	693a      	ldr	r2, [r7, #16]
 800026a:	1c53      	adds	r3, r2, #1
 800026c:	613b      	str	r3, [r7, #16]
 800026e:	697b      	ldr	r3, [r7, #20]
 8000270:	1c59      	adds	r1, r3, #1
 8000272:	6179      	str	r1, [r7, #20]
 8000274:	7812      	ldrb	r2, [r2, #0]
 8000276:	701a      	strb	r2, [r3, #0]
 8000278:	68fb      	ldr	r3, [r7, #12]
 800027a:	3301      	adds	r3, #1
 800027c:	60fb      	str	r3, [r7, #12]
 800027e:	68fa      	ldr	r2, [r7, #12]
 8000280:	687b      	ldr	r3, [r7, #4]
 8000282:	429a      	cmp	r2, r3
 8000284:	d3f0      	bcc.n	8000268 <Reset_Handler+0x1c>
 8000286:	4a10      	ldr	r2, [pc, #64]	; (80002c8 <Reset_Handler+0x7c>)
 8000288:	4b10      	ldr	r3, [pc, #64]	; (80002cc <Reset_Handler+0x80>)
 800028a:	1ad3      	subs	r3, r2, r3
 800028c:	607b      	str	r3, [r7, #4]
 800028e:	4b0f      	ldr	r3, [pc, #60]	; (80002cc <Reset_Handler+0x80>)
 8000290:	617b      	str	r3, [r7, #20]
 8000292:	2300      	movs	r3, #0
 8000294:	60bb      	str	r3, [r7, #8]
 8000296:	e007      	b.n	80002a8 <Reset_Handler+0x5c>
 8000298:	697b      	ldr	r3, [r7, #20]
 800029a:	1c5a      	adds	r2, r3, #1
 800029c:	617a      	str	r2, [r7, #20]
 800029e:	2200      	movs	r2, #0
 80002a0:	701a      	strb	r2, [r3, #0]
 80002a2:	68bb      	ldr	r3, [r7, #8]
 80002a4:	3301      	adds	r3, #1
 80002a6:	60bb      	str	r3, [r7, #8]
 80002a8:	68ba      	ldr	r2, [r7, #8]
 80002aa:	687b      	ldr	r3, [r7, #4]
 80002ac:	429a      	cmp	r2, r3
 80002ae:	d3f3      	bcc.n	8000298 <Reset_Handler+0x4c>
 80002b0:	f7ff ffc2 	bl	8000238 <main>
 80002b4:	bf00      	nop
 80002b6:	3718      	adds	r7, #24
 80002b8:	46bd      	mov	sp, r7
 80002ba:	bd80      	pop	{r7, pc}
 80002bc:	2000000c 	andcs	r0, r0, ip
 80002c0:	20000000 	andcs	r0, r0, r0
 80002c4:	080002d4 	stmdaeq	r0, {r2, r4, r6, r7, r9}
 80002c8:	2000000c 	andcs	r0, r0, ip
 80002cc:	2000000c 	andcs	r0, r0, ip

080002d0 <CountsPerMs>:
 80002d0:	000007d4 	ldrdeq	r0, [r0], -r4

Disassembly of section .data:

20000000 <RCC_PRPH>:
20000000:	40023800 	andmi	r3, r2, r0, lsl #16

20000004 <GPIOA_PRPH>:
20000004:	40020000 	andmi	r0, r2, r0

20000008 <GPIOD_PRPH>:
20000008:	40020c00 	andmi	r0, r2, r0, lsl #24

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000306 	andeq	r0, r0, r6, lsl #6
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000267 	andeq	r0, r0, r7, ror #4
  10:	0002c90c 	andeq	ip, r2, ip, lsl #18
  14:	0000b300 	andeq	fp, r0, r0, lsl #6
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	0001f808 	andeq	pc, r1, r8, lsl #16
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	000001e3 	andeq	r0, r0, r3, ror #3
  2c:	0001ab03 	andeq	sl, r1, r3, lsl #22
  30:	182b0200 	stmdane	fp!, {r9}
  34:	00000038 	andeq	r0, r0, r8, lsr r0
  38:	e1080102 	tst	r8, r2, lsl #2
  3c:	02000001 	andeq	r0, r0, #1
  40:	004a0502 	subeq	r0, sl, r2, lsl #10
  44:	02020000 	andeq	r0, r2, #0
  48:	00025407 	andeq	r5, r2, r7, lsl #8
  4c:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  50:	00000146 	andeq	r0, r0, r6, asr #2
  54:	00008403 	andeq	r8, r0, r3, lsl #8
  58:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  5c:	00000060 	andeq	r0, r0, r0, rrx
  60:	1a070402 	bne	1c1070 <vectors-0x7e3ef90>
  64:	02000002 	andeq	r0, r0, #2
  68:	01410508 	cmpeq	r1, r8, lsl #10
  6c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  70:	00021507 	andeq	r1, r2, r7, lsl #10
  74:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  78:	00746e69 	rsbseq	r6, r4, r9, ror #28
  7c:	1f070402 	svcne	0x00070402
  80:	03000002 	movweq	r0, #2
  84:	000001ad 	andeq	r0, r0, sp, lsr #3
  88:	2c131803 	ldccs	8, cr1, [r3], {3}
  8c:	03000000 	movweq	r0, #0
  90:	00000086 	andeq	r0, r0, r6, lsl #1
  94:	54143003 	ldrpl	r3, [r4], #-3
  98:	05000000 	streq	r0, [r0, #-0]
  9c:	0000008f 	andeq	r0, r0, pc, lsl #1
  a0:	38010706 	stmdacc	r1, {r1, r2, r8, r9, sl}
  a4:	04000000 	streq	r0, [r0], #-0
  a8:	017b010a 	cmneq	fp, sl, lsl #2
  ac:	65070000 	strvs	r0, [r7, #-0]
  b0:	00000001 	andeq	r0, r0, r1
  b4:	00011607 	andeq	r1, r1, r7, lsl #12
  b8:	54070100 	strpl	r0, [r7], #-256	; 0xffffff00
  bc:	02000000 	andeq	r0, r0, #0
  c0:	0002ed07 	andeq	lr, r2, r7, lsl #26
  c4:	d4070300 	strle	r0, [r7], #-768	; 0xfffffd00
  c8:	04000001 	streq	r0, [r0], #-1
  cc:	00032d07 	andeq	r2, r3, r7, lsl #26
  d0:	9a070500 	bls	1c14d8 <vectors-0x7e3eb28>
  d4:	06000000 	streq	r0, [r0], -r0
  d8:	00014f07 	andeq	r4, r1, r7, lsl #30
  dc:	34070700 	strcc	r0, [r7], #-1792	; 0xfffff900
  e0:	08000001 	stmdaeq	r0, {r0}
  e4:	0000f307 	andeq	pc, r0, r7, lsl #6
  e8:	5a070900 	bpl	1c24f0 <vectors-0x7e3db10>
  ec:	0a000001 	beq	f8 <vectors-0x7ffff08>
  f0:	00001c07 	andeq	r1, r0, r7, lsl #24
  f4:	7c070b00 			; <UNDEFINED> instruction: 0x7c070b00
  f8:	0c000003 	stceq	0, cr0, [r0], {3}
  fc:	00010007 	andeq	r0, r1, r7
 100:	fb070d00 	blx	1c350a <vectors-0x7e3caf6>
 104:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
 108:	00016c07 	andeq	r6, r1, r7, lsl #24
 10c:	55070f00 	strpl	r0, [r7, #-3840]	; 0xfffff100
 110:	10000003 	andne	r0, r0, r3
 114:	0000a707 	andeq	sl, r0, r7, lsl #14
 118:	77071100 	strvc	r1, [r7, -r0, lsl #2]
 11c:	12000001 	andne	r0, r0, #1
 120:	00018207 	andeq	r8, r1, r7, lsl #4
 124:	5d071300 	stcpl	3, cr1, [r7, #-0]
 128:	14000000 	strne	r0, [r0], #-0
 12c:	00024607 	andeq	r4, r2, r7, lsl #12
 130:	6b071500 	blvs	1c5538 <vectors-0x7e3aac8>
 134:	16000000 	strne	r0, [r0], -r0
 138:	00018d07 	andeq	r8, r1, r7, lsl #26
 13c:	07071700 	streq	r1, [r7, -r0, lsl #14]
 140:	18000002 	stmdane	r0, {r1}
 144:	00033a07 	andeq	r3, r3, r7, lsl #20
 148:	3f071900 	svccc	0x00071900
 14c:	1a000000 	bne	154 <vectors-0x7fffeac>
 150:	00019807 	andeq	r9, r1, r7, lsl #16
 154:	0b071b00 	bleq	1c6d5c <vectors-0x7e392a4>
 158:	1c000000 	stcne	0, cr0, [r0], {-0}
 15c:	0001a307 	andeq	sl, r1, r7, lsl #6
 160:	27071d00 	strcs	r1, [r7, -r0, lsl #26]
 164:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
 168:	00003307 	andeq	r3, r0, r7, lsl #6
 16c:	b5071f00 	strlt	r1, [r7, #-3840]	; 0xfffff100
 170:	20000001 	andcs	r0, r0, r1
 174:	00022c07 	andeq	r2, r2, r7, lsl #24
 178:	06002100 	streq	r2, [r0], -r0, lsl #2
 17c:	00380107 	eorseq	r0, r8, r7, lsl #2
 180:	31040000 	mrscc	r0, (UNDEF: 4)
 184:	0001c601 	andeq	ip, r1, r1, lsl #12
 188:	01ef0700 	mvneq	r0, r0, lsl #14
 18c:	07000000 	streq	r0, [r0, -r0]
 190:	00000348 	andeq	r0, r0, r8, asr #6
 194:	02df0701 	sbcseq	r0, pc, #262144	; 0x40000
 198:	07020000 	streq	r0, [r2, -r0]
 19c:	000001c8 	andeq	r0, r0, r8, asr #3
 1a0:	03660703 	cmneq	r6, #786432	; 0xc0000
 1a4:	07040000 	streq	r0, [r4, -r0]
 1a8:	0000010c 	andeq	r0, r0, ip, lsl #2
 1ac:	03190705 	tsteq	r9, #1310720	; 0x140000
 1b0:	07060000 	streq	r0, [r6, -r0]
 1b4:	00000302 	andeq	r0, r0, r2, lsl #6
 1b8:	00000707 	andeq	r0, r0, r7, lsl #14
 1bc:	07080000 	streq	r0, [r8, -r0]
 1c0:	0000023b 	andeq	r0, r0, fp, lsr r2
 1c4:	07060009 	streq	r0, [r6, -r9]
 1c8:	00003801 	andeq	r3, r0, r1, lsl #16
 1cc:	010d0500 	tsteq	sp, r0, lsl #10
 1d0:	000001e1 	andeq	r0, r0, r1, ror #3
 1d4:	574f4c08 	strbpl	r4, [pc, -r8, lsl #24]
 1d8:	61070000 	mrsvs	r0, (UNDEF: 7)
 1dc:	01000003 	tsteq	r0, r3
 1e0:	01bf0900 			; <UNDEFINED> instruction: 0x01bf0900
 1e4:	09010000 	stmdbeq	r1, {}	; <UNPREDICTABLE>
 1e8:	0001f30b 	andeq	pc, r1, fp, lsl #6
 1ec:	00030500 	andeq	r0, r3, r0, lsl #10
 1f0:	0a200000 	beq	8001f8 <vectors-0x77ffe08>
 1f4:	00008f04 	andeq	r8, r0, r4, lsl #30
 1f8:	00790900 	rsbseq	r0, r9, r0, lsl #18
 1fc:	0a010000 	beq	40204 <vectors-0x7fbfdfc>
 200:	0001f30b 	andeq	pc, r1, fp, lsl #6
 204:	04030500 	streq	r0, [r3], #-1280	; 0xfffffb00
 208:	09200000 	stmdbeq	r0!, {}	; <UNPREDICTABLE>
 20c:	00000129 	andeq	r0, r0, r9, lsr #2
 210:	f30b0b01 	vqrdmulh.s<illegal width 8>	d0, d11, d1
 214:	05000001 	streq	r0, [r0, #-1]
 218:	00000803 	andeq	r0, r0, r3, lsl #16
 21c:	03700920 	cmneq	r0, #32, 18	; 0x80000
 220:	0e010000 	cdpeq	0, 0, cr0, cr1, cr0, {0}
 224:	00009b10 	andeq	r9, r0, r0, lsl fp
 228:	d0030500 	andle	r0, r3, r0, lsl #10
 22c:	0b080002 	bleq	20023c <vectors-0x7dffdc4>
 230:	0000008f 	andeq	r0, r0, pc, lsl #1
 234:	d4065101 	strle	r5, [r6], #-257	; 0xfffffeff
 238:	2c080001 	stccs	0, cr0, [r8], {1}
 23c:	01000000 	mrseq	r0, (UNDEF: 0)
 240:	0002639c 	muleq	r2, ip, r3
 244:	736d0c00 	cmnvc	sp, #0, 24
 248:	15510100 	ldrbne	r0, [r1, #-256]	; 0xffffff00
 24c:	0000008f 	andeq	r0, r0, pc, lsl #1
 250:	0d6c9102 	stfeqp	f1, [ip, #-8]!
 254:	00000122 	andeq	r0, r0, r2, lsr #2
 258:	8f0e5301 	svchi	0x000e5301
 25c:	02000000 	andeq	r0, r0, #0
 260:	0b007491 	bleq	1d4ac <vectors-0x7fe2b54>
 264:	000002f5 	strdeq	r0, [r0], -r5
 268:	1c063e01 	stcne	14, cr3, [r6], {1}
 26c:	b8080001 	stmdalt	r8, {r0}
 270:	01000000 	mrseq	r0, (UNDEF: 0)
 274:	0002989c 	muleq	r2, ip, r8
 278:	69700c00 	ldmdbvs	r0!, {sl, fp}^
 27c:	3e01006e 	cdpcc	0, 0, cr0, cr1, cr14, {3}
 280:	0000831b 	andeq	r8, r0, fp, lsl r3
 284:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
 288:	0000ed0e 	andeq	lr, r0, lr, lsl #26
 28c:	283e0100 	ldmdacs	lr!, {r8}
 290:	00000083 	andeq	r0, r0, r3, lsl #1
 294:	00769102 	rsbseq	r9, r6, r2, lsl #2
 298:	00030d0f 	andeq	r0, r3, pc, lsl #26
 29c:	092a0100 	stmdbeq	sl!, {r8}
 2a0:	00000083 	andeq	r0, r0, r3, lsl #1
 2a4:	080000b4 	stmdaeq	r0, {r2, r4, r5, r7}
 2a8:	00000068 	andeq	r0, r0, r8, rrx
 2ac:	02c29c01 	sbceq	r9, r2, #256	; 0x100
 2b0:	700c0000 	andvc	r0, ip, r0
 2b4:	01006e69 	tsteq	r0, r9, ror #28
 2b8:	00831d2a 	addeq	r1, r3, sl, lsr #26
 2bc:	91020000 	mrsls	r0, (UNDEF: 2)
 2c0:	140b0077 	strne	r0, [fp], #-119	; 0xffffff89
 2c4:	01000000 	mrseq	r0, (UNDEF: 0)
 2c8:	002c0617 	eoreq	r0, ip, r7, lsl r6
 2cc:	00880800 	addeq	r0, r8, r0, lsl #16
 2d0:	9c010000 	stcls	0, cr0, [r1], {-0}
 2d4:	000002f7 	strdeq	r0, [r0], -r7
 2d8:	6e69700c 	cdpvs	0, 6, cr7, cr9, cr12, {0}
 2dc:	16170100 	ldrne	r0, [r7], -r0, lsl #2
 2e0:	00000083 	andeq	r0, r0, r3, lsl #1
 2e4:	0e779102 	expeqs	f1, f2
 2e8:	00000095 	muleq	r0, r5, r0
 2ec:	83231701 			; <UNDEFINED> instruction: 0x83231701
 2f0:	02000000 	andeq	r0, r0, #0
 2f4:	10007691 	mulne	r0, r1, r6
 2f8:	00000324 	andeq	r0, r0, r4, lsr #6
 2fc:	08061001 	stmdaeq	r6, {r0, ip}
 300:	24080000 	strcs	r0, [r8], #-0
 304:	01000000 	mrseq	r0, (UNDEF: 0)
 308:	00d8009c 	smullseq	r0, r8, ip, r0
 30c:	00040000 	andeq	r0, r4, r0
 310:	00000108 	andeq	r0, r0, r8, lsl #2
 314:	02670104 	rsbeq	r0, r7, #4, 2
 318:	9e0c0000 	cdpls	0, 0, cr0, cr12, cr0, {0}
 31c:	b3000003 	movwlt	r0, #3
 320:	00000000 	andeq	r0, r0, r0
 324:	4a080002 	bmi	200334 <vectors-0x7dffccc>
 328:	2e000000 	cdpcs	0, 0, cr0, cr0, cr0, {0}
 32c:	02000002 	andeq	r0, r0, #2
 330:	01e30601 	mvneq	r0, r1, lsl #12
 334:	01020000 	mrseq	r0, (UNDEF: 2)
 338:	0001e108 	andeq	lr, r1, r8, lsl #2
 33c:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
 340:	0000004a 	andeq	r0, r0, sl, asr #32
 344:	54070202 	strpl	r0, [r7], #-514	; 0xfffffdfe
 348:	02000002 	andeq	r0, r0, #2
 34c:	01460504 	cmpeq	r6, r4, lsl #10
 350:	04020000 	streq	r0, [r2], #-0
 354:	00021a07 	andeq	r1, r2, r7, lsl #20
 358:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
 35c:	00000141 	andeq	r0, r0, r1, asr #2
 360:	15070802 	strne	r0, [r7, #-2050]	; 0xfffff7fe
 364:	03000002 	movweq	r0, #2
 368:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 36c:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
 370:	00021f07 	andeq	r1, r2, r7, lsl #30
 374:	01070400 	tsteq	r7, r0, lsl #8
 378:	0000002c 	andeq	r0, r0, ip, lsr #32
 37c:	86010d02 	strhi	r0, [r1], -r2, lsl #26
 380:	05000000 	streq	r0, [r0, #-0]
 384:	00574f4c 	subseq	r4, r7, ip, asr #30
 388:	03610600 	cmneq	r1, #0, 12
 38c:	00010000 	andeq	r0, r1, r0
 390:	2c010704 	stccs	7, cr0, [r1], {4}
 394:	02000000 	andeq	r0, r0, #0
 398:	00a10114 	adceq	r0, r1, r4, lsl r1
 39c:	93060000 	movwls	r0, #24576	; 0x6000
 3a0:	00000003 	andeq	r0, r0, r3
 3a4:	0003a906 	andeq	sl, r3, r6, lsl #18
 3a8:	07000100 	streq	r0, [r0, -r0, lsl #2]
 3ac:	00000399 	muleq	r0, r9, r3
 3b0:	5d051601 	stcpl	6, cr1, [r5, #-4]
 3b4:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 3b8:	12080002 	andne	r0, r8, #2
 3bc:	01000000 	mrseq	r0, (UNDEF: 0)
 3c0:	038e089c 	orreq	r0, lr, #156, 16	; 0x9c0000
 3c4:	0b010000 	bleq	403cc <vectors-0x7fbfc34>
 3c8:	00021006 	andeq	r1, r2, r6
 3cc:	00002808 	andeq	r2, r0, r8, lsl #16
 3d0:	089c0100 	ldmeq	ip, {r8}
 3d4:	00000388 	andeq	r0, r0, r8, lsl #7
 3d8:	00060501 	andeq	r0, r6, r1, lsl #10
 3dc:	10080002 	andne	r0, r8, r2
 3e0:	01000000 	mrseq	r0, (UNDEF: 0)
 3e4:	0176009c 			; <UNDEFINED> instruction: 0x0176009c
 3e8:	00040000 	andeq	r0, r4, r0
 3ec:	0000018d 	andeq	r0, r0, sp, lsl #3
 3f0:	02670104 	rsbeq	r0, r7, #4, 2
 3f4:	c80c0000 	stmdagt	ip, {}	; <UNPREDICTABLE>
 3f8:	b3000003 	movwlt	r0, #3
 3fc:	4c000000 	stcmi	0, cr0, [r0], {-0}
 400:	84080002 	strhi	r0, [r8], #-2
 404:	99000000 	stmdbls	r0, {}	; <UNPREDICTABLE>
 408:	02000002 	andeq	r0, r0, #2
 40c:	01e30601 	mvneq	r0, r1, lsl #12
 410:	ab030000 	blge	c0418 <vectors-0x7f3fbe8>
 414:	02000001 	andeq	r0, r0, #1
 418:	0038182b 	eorseq	r1, r8, fp, lsr #16
 41c:	01020000 	mrseq	r0, (UNDEF: 2)
 420:	0001e108 	andeq	lr, r1, r8, lsl #2
 424:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
 428:	0000004a 	andeq	r0, r0, sl, asr #32
 42c:	54070202 	strpl	r0, [r7], #-514	; 0xfffffdfe
 430:	02000002 	andeq	r0, r0, #2
 434:	01460504 	cmpeq	r6, r4, lsl #10
 438:	84030000 	strhi	r0, [r3], #-0
 43c:	02000000 	andeq	r0, r0, #0
 440:	0060194f 	rsbeq	r1, r0, pc, asr #18
 444:	04020000 	streq	r0, [r2], #-0
 448:	00021a07 	andeq	r1, r2, r7, lsl #20
 44c:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
 450:	00000141 	andeq	r0, r0, r1, asr #2
 454:	15070802 	strne	r0, [r7, #-2050]	; 0xfffff7fe
 458:	04000002 	streq	r0, [r0], #-2
 45c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 460:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
 464:	00021f07 	andeq	r1, r2, r7, lsl #30
 468:	01ad0300 			; <UNDEFINED> instruction: 0x01ad0300
 46c:	18030000 	stmdane	r3, {}	; <UNPREDICTABLE>
 470:	00002c13 	andeq	r2, r0, r3, lsl ip
 474:	00860300 	addeq	r0, r6, r0, lsl #6
 478:	30030000 	andcc	r0, r3, r0
 47c:	00005414 	andeq	r5, r0, r4, lsl r4
 480:	03b00500 	movseq	r0, #0, 10
 484:	15010000 	strne	r0, [r1, #-0]
 488:	00008f11 	andeq	r8, r0, r1, lsl pc
 48c:	03ea0500 	mvneq	r0, #0, 10
 490:	16010000 	strne	r0, [r1], -r0
 494:	00008f11 	andeq	r8, r0, r1, lsl pc
 498:	04090500 	streq	r0, [r9], #-1280	; 0xfffffb00
 49c:	17010000 	strne	r0, [r1, -r0]
 4a0:	00008f11 	andeq	r8, r0, r1, lsl pc
 4a4:	03f90500 	mvnseq	r0, #0, 10
 4a8:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
 4ac:	00008f11 	andeq	r8, r0, r1, lsl pc
 4b0:	03b70500 			; <UNDEFINED> instruction: 0x03b70500
 4b4:	1a010000 	bne	404bc <vectors-0x7fbfb44>
 4b8:	00008f11 	andeq	r8, r0, r1, lsl pc
 4bc:	008f0600 	addeq	r0, pc, r0, lsl #12
 4c0:	00e70000 	rsceq	r0, r7, r0
 4c4:	7c070000 	stcvc	0, cr0, [r7], {-0}
 4c8:	01000000 	mrseq	r0, (UNDEF: 0)
 4cc:	03f10800 	mvnseq	r0, #0, 16
 4d0:	2b010000 	blcs	404d8 <vectors-0x7fbfb28>
 4d4:	0000d70a 	andeq	sp, r0, sl, lsl #14
 4d8:	00030500 	andeq	r0, r3, r0, lsl #10
 4dc:	09080000 	stmdbeq	r8, {}	; <UNPREDICTABLE>
 4e0:	000003dc 	ldrdeq	r0, [r0], -ip
 4e4:	4c063101 	stfmis	f3, [r6], {1}
 4e8:	84080002 	strhi	r0, [r8], #-2
 4ec:	01000000 	mrseq	r0, (UNDEF: 0)
 4f0:	0001739c 	muleq	r1, ip, r3
 4f4:	03bd0a00 			; <UNDEFINED> instruction: 0x03bd0a00
 4f8:	34010000 	strcc	r0, [r1], #-0
 4fc:	00008f0b 	andeq	r8, r0, fp, lsl #30
 500:	64910200 	ldrvs	r0, [r1], #512	; 0x200
 504:	0004040a 	andeq	r0, r4, sl, lsl #8
 508:	0b390100 	bleq	e40910 <vectors-0x71bf6f0>
 50c:	00000173 	andeq	r0, r0, r3, ror r1
 510:	0a749102 	beq	1d24920 <vectors-0x62db6e0>
 514:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
 518:	730b3a01 	movwvc	r3, #47617	; 0xba01
 51c:	02000001 	andeq	r0, r0, #1
 520:	620b7091 	andvs	r7, fp, #145	; 0x91
 524:	24080002 	strcs	r0, [r8], #-2
 528:	59000000 	stmdbpl	r0, {}	; <UNPREDICTABLE>
 52c:	0a000001 	beq	538 <vectors-0x7fffac8>
 530:	00000412 	andeq	r0, r0, r2, lsl r4
 534:	8f103d01 	svchi	0x00103d01
 538:	02000000 	andeq	r0, r0, #0
 53c:	0c006c91 	stceq	12, cr6, [r0], {145}	; 0x91
 540:	08000292 	stmdaeq	r0, {r1, r4, r7, r9}
 544:	0000001e 	andeq	r0, r0, lr, lsl r0
 548:	0004120a 	andeq	r1, r4, sl, lsl #4
 54c:	10480100 	subne	r0, r8, r0, lsl #2
 550:	0000008f 	andeq	r0, r0, pc, lsl #1
 554:	00689102 	rsbeq	r9, r8, r2, lsl #2
 558:	83040d00 	movwhi	r0, #19712	; 0x4d00
 55c:	00000000 	andeq	r0, r0, r0

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
  38:	49002605 	stmdbmi	r0, {r0, r2, r9, sl, sp}
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0b3e0104 	bleq	f80458 <vectors-0x707fba8>
  44:	13490b0b 	movtne	r0, #39691	; 0x9b0b
  48:	0b3b0b3a 	bleq	ec2d38 <vectors-0x713d2c8>
  4c:	13010b39 	movwne	r0, #6969	; 0x1b39
  50:	28070000 	stmdacs	r7, {}	; <UNPREDICTABLE>
  54:	1c0e0300 	stcne	3, cr0, [lr], {-0}
  58:	0800000b 	stmdaeq	r0, {r0, r1, r3}
  5c:	08030028 	stmdaeq	r3, {r3, r5}
  60:	00000b1c 	andeq	r0, r0, ip, lsl fp
  64:	03003409 	movweq	r3, #1033	; 0x409
  68:	3b0b3a0e 	blcc	2ce8a8 <vectors-0x7d31758>
  6c:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  70:	02193f13 	andseq	r3, r9, #19, 30	; 0x4c
  74:	0a000018 	beq	dc <vectors-0x7ffff24>
  78:	0b0b000f 	bleq	2c00bc <vectors-0x7d3ff44>
  7c:	00001349 	andeq	r1, r0, r9, asr #6
  80:	3f012e0b 	svccc	0x00012e0b
  84:	3a0e0319 	bcc	380cf0 <vectors-0x7c7f310>
  88:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  8c:	1119270b 	tstne	r9, fp, lsl #14
  90:	40061201 	andmi	r1, r6, r1, lsl #4
  94:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
  98:	00001301 	andeq	r1, r0, r1, lsl #6
  9c:	0300050c 	movweq	r0, #1292	; 0x50c
  a0:	3b0b3a08 	blcc	2ce8c8 <vectors-0x7d31738>
  a4:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  a8:	00180213 	andseq	r0, r8, r3, lsl r2
  ac:	00340d00 	eorseq	r0, r4, r0, lsl #26
  b0:	0b3a0e03 	bleq	e838c4 <vectors-0x717c73c>
  b4:	0b390b3b 	bleq	e42da8 <vectors-0x71bd258>
  b8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  bc:	050e0000 	streq	r0, [lr, #-0]
  c0:	3a0e0300 	bcc	380cc8 <vectors-0x7c7f338>
  c4:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  c8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  cc:	0f000018 	svceq	0x00000018
  d0:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  d4:	0b3a0e03 	bleq	e838e8 <vectors-0x717c718>
  d8:	0b390b3b 	bleq	e42dcc <vectors-0x71bd234>
  dc:	13491927 	movtne	r1, #39207	; 0x9927
  e0:	06120111 			; <UNDEFINED> instruction: 0x06120111
  e4:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  e8:	00130119 	andseq	r0, r3, r9, lsl r1
  ec:	002e1000 	eoreq	r1, lr, r0
  f0:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  f4:	0b3b0b3a 	bleq	ec2de4 <vectors-0x713d21c>
  f8:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  fc:	06120111 			; <UNDEFINED> instruction: 0x06120111
 100:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 104:	00000019 	andeq	r0, r0, r9, lsl r0
 108:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 10c:	030b130e 	movweq	r1, #45838	; 0xb30e
 110:	110e1b0e 	tstne	lr, lr, lsl #22
 114:	10061201 	andne	r1, r6, r1, lsl #4
 118:	02000017 	andeq	r0, r0, #23
 11c:	0b0b0024 	bleq	2c01b4 <vectors-0x7d3fe4c>
 120:	0e030b3e 	vmoveq.16	d3[0], r0
 124:	24030000 	strcs	r0, [r3], #-0
 128:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 12c:	0008030b 	andeq	r0, r8, fp, lsl #6
 130:	01040400 	tsteq	r4, r0, lsl #8
 134:	0b0b0b3e 	bleq	2c2e34 <vectors-0x7d3d1cc>
 138:	0b3a1349 	bleq	e84e64 <vectors-0x717b19c>
 13c:	0b390b3b 	bleq	e42e30 <vectors-0x71bd1d0>
 140:	00001301 	andeq	r1, r0, r1, lsl #6
 144:	03002805 	movweq	r2, #2053	; 0x805
 148:	000b1c08 	andeq	r1, fp, r8, lsl #24
 14c:	00280600 	eoreq	r0, r8, r0, lsl #12
 150:	0b1c0e03 	bleq	703964 <vectors-0x78fc69c>
 154:	2e070000 	cdpcs	0, 0, cr0, cr7, cr0, {0}
 158:	03193f00 	tsteq	r9, #0, 30
 15c:	3b0b3a0e 	blcc	2ce99c <vectors-0x7d31664>
 160:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
 164:	11134919 	tstne	r3, r9, lsl r9
 168:	40061201 	andmi	r1, r6, r1, lsl #4
 16c:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 170:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
 174:	03193f00 	tsteq	r9, #0, 30
 178:	3b0b3a0e 	blcc	2ce9b8 <vectors-0x7d31648>
 17c:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
 180:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 184:	96184006 	ldrls	r4, [r8], -r6
 188:	00001942 	andeq	r1, r0, r2, asr #18
 18c:	01110100 	tsteq	r1, r0, lsl #2
 190:	0b130e25 	bleq	4c3a2c <vectors-0x7b3c5d4>
 194:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 198:	06120111 			; <UNDEFINED> instruction: 0x06120111
 19c:	00001710 	andeq	r1, r0, r0, lsl r7
 1a0:	0b002402 	bleq	91b0 <vectors-0x7ff6e50>
 1a4:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 1a8:	0300000e 	movweq	r0, #14
 1ac:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 1b0:	0b3b0b3a 	bleq	ec2ea0 <vectors-0x713d160>
 1b4:	13490b39 	movtne	r0, #39737	; 0x9b39
 1b8:	24040000 	strcs	r0, [r4], #-0
 1bc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 1c0:	0008030b 	andeq	r0, r8, fp, lsl #6
 1c4:	00340500 	eorseq	r0, r4, r0, lsl #10
 1c8:	0b3a0e03 	bleq	e839dc <vectors-0x717c624>
 1cc:	0b390b3b 	bleq	e42ec0 <vectors-0x71bd140>
 1d0:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
 1d4:	0000193c 	andeq	r1, r0, ip, lsr r9
 1d8:	49010106 	stmdbmi	r1, {r1, r2, r8}
 1dc:	00130113 	andseq	r0, r3, r3, lsl r1
 1e0:	00210700 	eoreq	r0, r1, r0, lsl #14
 1e4:	0b2f1349 	bleq	bc4f10 <vectors-0x743b0f0>
 1e8:	34080000 	strcc	r0, [r8], #-0
 1ec:	3a0e0300 	bcc	380df4 <vectors-0x7c7f20c>
 1f0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 1f4:	3f13490b 	svccc	0x0013490b
 1f8:	00180219 	andseq	r0, r8, r9, lsl r2
 1fc:	012e0900 			; <UNDEFINED> instruction: 0x012e0900
 200:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
 204:	0b3b0b3a 	bleq	ec2ef4 <vectors-0x713d10c>
 208:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
 20c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 210:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 214:	00130119 	andseq	r0, r3, r9, lsl r1
 218:	00340a00 	eorseq	r0, r4, r0, lsl #20
 21c:	0b3a0e03 	bleq	e83a30 <vectors-0x717c5d0>
 220:	0b390b3b 	bleq	e42f14 <vectors-0x71bd0ec>
 224:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 228:	0b0b0000 	bleq	2c0230 <vectors-0x7d3fdd0>
 22c:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 230:	00130106 	andseq	r0, r3, r6, lsl #2
 234:	010b0c00 	tsteq	fp, r0, lsl #24
 238:	06120111 			; <UNDEFINED> instruction: 0x06120111
 23c:	0f0d0000 	svceq	0x000d0000
 240:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 244:	00000013 	andeq	r0, r0, r3, lsl r0

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000008 	stmdaeq	r0, {r3}
  14:	000001f8 	strdeq	r0, [r0], -r8
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	030a0002 	movweq	r0, #40962	; 0xa002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	08000200 	stmdaeq	r0, {r9}
  34:	0000004a 	andeq	r0, r0, sl, asr #32
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	03e60002 	mvneq	r0, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	0800024c 	stmdaeq	r0, {r2, r3, r6, r9}
  54:	00000084 	andeq	r0, r0, r4, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0000022a 	andeq	r0, r0, sl, lsr #4
   4:	00ec0003 	rsceq	r0, ip, r3
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
  98:	696e696d 	stmdbvs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
  9c:	5f6c616d 	svcpl	0x006c616d
  a0:	75647261 	strbvc	r7, [r4, #-609]!	; 0xfffffd9f
  a4:	2e6f6e69 	cdpcs	14, 6, cr6, cr15, cr9, {3}
  a8:	00010063 	andeq	r0, r1, r3, rrx
  ac:	65645f00 	strbvs	r5, [r4, #-3840]!	; 0xfffff100
  b0:	6c756166 	ldfvse	f6, [r5], #-408	; 0xfffffe68
  b4:	79745f74 	ldmdbvc	r4!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
  b8:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
  bc:	00020068 	andeq	r0, r2, r8, rrx
  c0:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xfffff100
  c4:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
  c8:	0300682e 	movweq	r6, #2094	; 0x82e
  cc:	74730000 	ldrbtvc	r0, [r3], #-0
  d0:	6632336d 	ldrtvs	r3, [r2], -sp, ror #6
  d4:	65725f34 	ldrbvs	r5, [r2, #-3892]!	; 0xfffff0cc
  d8:	682e7367 	stmdavs	lr!, {r0, r1, r2, r5, r6, r8, r9, ip, sp, lr}
  dc:	00000100 	andeq	r0, r0, r0, lsl #2
  e0:	696e696d 	stmdbvs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
  e4:	5f6c616d 	svcpl	0x006c616d
  e8:	75647261 	strbvc	r7, [r4, #-609]!	; 0xfffffd9f
  ec:	2e6f6e69 	cdpcs	14, 6, cr6, cr15, cr9, {3}
  f0:	00010068 	andeq	r0, r1, r8, rrx
  f4:	01050000 	mrseq	r0, (UNDEF: 5)
  f8:	08020500 	stmdaeq	r2, {r8, sl}
  fc:	03080000 	movweq	r0, #32768	; 0x8000
 100:	1b050110 	blne	140548 <vectors-0x7ebfab8>
 104:	9f010530 	svcls	0x00010530
 108:	8305056a 	movwhi	r0, #21866	; 0x556a
 10c:	0c030d05 	stceq	13, cr0, [r3], {5}
 110:	03320558 	teqeq	r2, #88, 10	; 0x16000000
 114:	4c052077 	stcmi	0, cr2, [r5], {119}	; 0x77
 118:	2e47053c 	mcrcs	5, 2, r0, cr7, cr12, {1}
 11c:	053c4205 	ldreq	r4, [ip, #-517]!	; 0xfffffdfb
 120:	5d052040 	stcpl	0, cr2, [r5, #-256]	; 0xffffff00
 124:	3c68052e 	cfstr64cc	mvdx0, [r8], #-184	; 0xffffff48
 128:	052e6305 	streq	r6, [lr, #-773]!	; 0xfffffcfb
 12c:	54052017 	strpl	r2, [r5], #-23	; 0xffffffe9
 130:	2025052e 	eorcs	r0, r5, lr, lsr #10
 134:	05210d05 	streq	r0, [r1, #-3333]!	; 0xfffff2fb
 138:	4c052332 	stcmi	3, cr2, [r5], {50}	; 0x32
 13c:	2e47053c 	mcrcs	5, 2, r0, cr7, cr12, {1}
 140:	053c4205 	ldreq	r4, [ip, #-517]!	; 0xfffffdfb
 144:	5d052040 	stcpl	0, cr2, [r5, #-256]	; 0xffffff00
 148:	3c68052e 	cfstr64cc	mvdx0, [r8], #-184	; 0xffffff48
 14c:	052e6305 	streq	r6, [lr, #-773]!	; 0xfffffcfb
 150:	54052017 	strpl	r2, [r5], #-23	; 0xffffffe9
 154:	2025052e 	eorcs	r0, r5, lr, lsr #10
 158:	05210d05 	streq	r0, [r1, #-3333]!	; 0xfffff2fb
 15c:	05a22601 	streq	r2, [r2, #1537]!	; 0x601
 160:	27055905 	strcs	r5, [r5, -r5, lsl #18]
 164:	4a380569 	bmi	e01710 <vectors-0x71fe8f0>
 168:	054a3305 	strbeq	r3, [sl, #-773]	; 0xfffffcfb
 16c:	27052052 	smlsdcs	r5, r2, r0, r2
 170:	4a38056a 	bmi	e01720 <vectors-0x71fe8e0>
 174:	054a3305 	strbeq	r3, [sl, #-773]	; 0xfffffcfb
 178:	14052052 	strne	r2, [r5], #-82	; 0xffffffae
 17c:	2301056b 	movwcs	r0, #5483	; 0x156b
 180:	830505a2 	movwhi	r0, #21922	; 0x55a2
 184:	0c030d05 	stceq	13, cr0, [r3], {5}
 188:	034e0558 	movteq	r0, #58712	; 0xe558
 18c:	3f052077 	svccc	0x00052077
 190:	01040200 	mrseq	r0, R12_usr
 194:	0045053c 	subeq	r0, r5, ip, lsr r5
 198:	4a010402 	bmi	411a8 <vectors-0x7fbee58>
 19c:	02003f05 	andeq	r3, r0, #5, 30
 1a0:	05580104 	ldrbeq	r0, [r8, #-260]	; 0xfffffefc
 1a4:	0402000d 	streq	r0, [r2], #-13
 1a8:	67055901 	strvs	r5, [r5, -r1, lsl #18]
 1ac:	02040200 	andeq	r0, r4, #0, 4
 1b0:	006e051f 	rsbeq	r0, lr, pc, lsl r5
 1b4:	4a020402 	bmi	811c4 <vectors-0x7f7ee3c>
 1b8:	02006a05 	andeq	r6, r0, #20480	; 0x5000
 1bc:	054a0204 	strbeq	r0, [sl, #-516]	; 0xfffffdfc
 1c0:	04020067 	streq	r0, [r2], #-103	; 0xffffff99
 1c4:	0d052e02 	stceq	14, cr2, [r5, #-8]
 1c8:	02040200 	andeq	r0, r4, #0, 4
 1cc:	234e0559 	movtcs	r0, #58713	; 0xe559
 1d0:	02003f05 	andeq	r3, r0, #5, 30
 1d4:	053c0104 	ldreq	r0, [ip, #-260]!	; 0xfffffefc
 1d8:	04020045 	streq	r0, [r2], #-69	; 0xffffffbb
 1dc:	3f054a01 	svccc	0x00054a01
 1e0:	01040200 	mrseq	r0, R12_usr
 1e4:	000d0558 	andeq	r0, sp, r8, asr r5
 1e8:	59010402 	stmdbpl	r1, {r1, sl}
 1ec:	02006705 	andeq	r6, r0, #1310720	; 0x140000
 1f0:	051f0204 	ldreq	r0, [pc, #-516]	; fffffff4 <__bss_end__+0xdfffffe8>
 1f4:	0402006e 	streq	r0, [r2], #-110	; 0xffffff92
 1f8:	6a054a02 	bvs	152a08 <vectors-0x7ead5f8>
 1fc:	02040200 	andeq	r0, r4, #0, 4
 200:	0067054a 	rsbeq	r0, r7, sl, asr #10
 204:	2e020402 	cdpcs	4, 0, cr0, cr2, cr2, {0}
 208:	05590d05 	ldrbeq	r0, [r9, #-3333]	; 0xfffff2fb
 20c:	05a22601 	streq	r2, [r2, #1537]!	; 0x601
 210:	0e054b1a 	vmoveq.32	d5[0], r4
 214:	4c0a052e 	cfstr32mi	mvfx0, [sl], {46}	; 0x2e
 218:	02001105 	andeq	r1, r0, #1073741825	; 0x40000001
 21c:	05200104 	streq	r0, [r0, #-260]!	; 0xfffffefc
 220:	0402000a 	streq	r0, [r2], #-10
 224:	01053c01 	tsteq	r5, r1, lsl #24
 228:	0006022f 	andeq	r0, r6, pc, lsr #4
 22c:	00670101 	rsbeq	r0, r7, r1, lsl #2
 230:	00030000 	andeq	r0, r3, r0
 234:	00000036 	andeq	r0, r0, r6, lsr r0
 238:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 23c:	0101000d 	tsteq	r1, sp
 240:	00000101 	andeq	r0, r0, r1, lsl #2
 244:	00000100 	andeq	r0, r0, r0, lsl #2
 248:	63727301 	cmnvs	r2, #67108864	; 0x4000000
 24c:	616d0000 	cmnvs	sp, r0
 250:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
 254:	00000100 	andeq	r0, r0, r0, lsl #2
 258:	696e696d 	stmdbvs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
 25c:	5f6c616d 	svcpl	0x006c616d
 260:	75647261 	strbvc	r7, [r4, #-609]!	; 0xfffffd9f
 264:	2e6f6e69 	cdpcs	14, 6, cr6, cr15, cr9, {3}
 268:	00010068 	andeq	r0, r1, r8, rrx
 26c:	01050000 	mrseq	r0, (UNDEF: 5)
 270:	00020500 	andeq	r0, r2, r0, lsl #10
 274:	17080002 	strne	r0, [r8, -r2]
 278:	052f0505 	streq	r0, [pc, #-1285]!	; fffffd7b <__bss_end__+0xdffffd6f>
 27c:	05324b01 	ldreq	r4, [r2, #-2817]!	; 0xfffff4ff
 280:	4b4b2f05 	blmi	12cbe9c <vectors-0x6d34164>
 284:	4b01054b 	blmi	417b8 <vectors-0x7fbe848>
 288:	30050534 	andcc	r0, r5, r4, lsr r5
 28c:	00090531 	andeq	r0, r9, r1, lsr r5
 290:	33010402 	movwcc	r0, #5122	; 0x1402
 294:	01000302 	tsteq	r0, r2, lsl #6
 298:	00014901 	andeq	r4, r1, r1, lsl #18
 29c:	c3000300 	movwgt	r0, #768	; 0x300
 2a0:	02000000 	andeq	r0, r0, #0
 2a4:	0d0efb01 	vstreq	d15, [lr, #-4]
 2a8:	01010100 	mrseq	r0, (UNDEF: 17)
 2ac:	00000001 	andeq	r0, r0, r1
 2b0:	01000001 	tsteq	r0, r1
 2b4:	00637273 	rsbeq	r7, r3, r3, ror r2
 2b8:	735c3a64 	cmpvc	ip, #100, 20	; 0x64000
 2bc:	5c385f77 	ldcpl	15, cr5, [r8], #-476	; 0xfffffe24
 2c0:	5f6d7261 	svcpl	0x006d7261
 2c4:	5f636367 	svcpl	0x00636367
 2c8:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
 2cc:	2030315c 	eorscs	r3, r0, ip, asr r1
 2d0:	31323032 	teqcc	r2, r2, lsr r0
 2d4:	5c30312e 	ldfpls	f3, [r0], #-184	; 0xffffff48
 2d8:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 2dc:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 2e0:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 2e4:	6e695c69 	cdpvs	12, 6, cr5, cr9, cr9, {3}
 2e8:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 2ec:	616d5c65 	cmnvs	sp, r5, ror #24
 2f0:	6e696863 	cdpvs	8, 6, cr6, cr9, cr3, {3}
 2f4:	3a640065 	bcc	1900490 <vectors-0x66ffb70>
 2f8:	5f77735c 	svcpl	0x0077735c
 2fc:	72615c38 	rsbvc	r5, r1, #56, 24	; 0x3800
 300:	63675f6d 	cmnvs	r7, #436	; 0x1b4
 304:	30315f63 	eorscc	r5, r1, r3, ror #30
 308:	315c332e 	cmpcc	ip, lr, lsr #6
 30c:	30322030 	eorscc	r2, r2, r0, lsr r0
 310:	312e3132 			; <UNDEFINED> instruction: 0x312e3132
 314:	72615c30 	rsbvc	r5, r1, #48, 24	; 0x3000
 318:	6f6e2d6d 	svcvs	0x006e2d6d
 31c:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 320:	5c696261 	sfmpl	f6, 2, [r9], #-388	; 0xfffffe7c
 324:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 328:	5c656475 	cfstrdpl	mvd6, [r5], #-468	; 0xfffffe2c
 32c:	00737973 	rsbseq	r7, r3, r3, ror r9
 330:	6d747300 	ldclvs	3, cr7, [r4, #-0]
 334:	735f3233 	cmpvc	pc, #805306371	; 0x30000003
 338:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 33c:	632e7075 			; <UNDEFINED> instruction: 0x632e7075
 340:	00000100 	andeq	r0, r0, r0, lsl #2
 344:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
 348:	746c7561 	strbtvc	r7, [ip], #-1377	; 0xfffffa9f
 34c:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 350:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 354:	00000200 	andeq	r0, r0, r0, lsl #4
 358:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
 35c:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 360:	00030068 	andeq	r0, r3, r8, rrx
 364:	1d050000 	stcne	0, cr0, [r5, #-0]
 368:	4c020500 	cfstr32mi	mvfx0, [r2], {-0}
 36c:	03080002 	movweq	r0, #32770	; 0x8002
 370:	18050130 	stmdane	r5, {r4, r5, r8}
 374:	202c053f 	eorcs	r0, ip, pc, lsr r5
 378:	33200b05 			; <UNDEFINED> instruction: 0x33200b05
 37c:	3110052f 	tstcc	r0, pc, lsr #10
 380:	052e0205 	streq	r0, [lr, #-517]!	; 0xfffffdfb
 384:	04020012 	streq	r0, [r2], #-18	; 0xffffffee
 388:	08052103 	stmdaeq	r5, {r0, r1, r8, sp}
 38c:	03040200 	movweq	r0, #16896	; 0x4200
 390:	000d053c 	andeq	r0, sp, ip, lsr r5
 394:	3c030402 	cfstrscc	mvf0, [r3], {2}
 398:	02000b05 	andeq	r0, r0, #5120	; 0x1400
 39c:	05200304 	streq	r0, [r0, #-772]!	; 0xfffffcfc
 3a0:	04020031 	streq	r0, [r2], #-49	; 0xffffffcf
 3a4:	02051f03 	andeq	r1, r5, #3, 30
 3a8:	01040200 	mrseq	r0, R12_usr
 3ac:	4f0f053c 	svcmi	0x000f053c
 3b0:	05202205 	streq	r2, [r0, #-517]!	; 0xfffffdfb
 3b4:	0705200d 	streq	r2, [r5, -sp]
 3b8:	31100531 	tstcc	r0, r1, lsr r5
 3bc:	052e0205 	streq	r0, [lr, #-517]!	; 0xfffffdfb
 3c0:	04020008 	streq	r0, [r2], #-8
 3c4:	0b052103 	bleq	1487d8 <vectors-0x7eb7828>
 3c8:	03040200 	movweq	r0, #16896	; 0x4200
 3cc:	0031053c 	eorseq	r0, r1, ip, lsr r5
 3d0:	2d030402 	cfstrscs	mvf0, [r3, #-8]
 3d4:	02000205 	andeq	r0, r0, #1342177280	; 0x50000000
 3d8:	033c0104 	teqeq	ip, #4, 2
 3dc:	01054a09 	tsteq	r5, r9, lsl #20
 3e0:	000e0230 	andeq	r0, lr, r0, lsr r2
 3e4:	Address 0x000003e4 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	4f495047 	svcmi	0x00495047
   4:	46415f78 			; <UNDEFINED> instruction: 0x46415f78
   8:	52004c52 	andpl	r4, r0, #20992	; 0x5200
   c:	425f4343 	subsmi	r4, pc, #201326593	; 0xc000001
  10:	00524344 	subseq	r4, r2, r4, asr #6
  14:	4d6e6970 			; <UNDEFINED> instruction: 0x4d6e6970
  18:	0065646f 	rsbeq	r6, r5, pc, ror #8
  1c:	5f434352 	svcpl	0x00434352
  20:	56525352 			; <UNDEFINED> instruction: 0x56525352
  24:	52003344 	andpl	r3, r0, #68, 6	; 0x10000001
  28:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
  2c:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
  30:	52003031 	andpl	r3, r0, #49	; 0x31
  34:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
  38:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
  3c:	52003131 	andpl	r3, r0, #1073741836	; 0x4000000c
  40:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
  44:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
  48:	68730038 	ldmdavs	r3!, {r3, r4, r5}^
  4c:	2074726f 	rsbscs	r7, r4, pc, ror #4
  50:	00746e69 	rsbseq	r6, r4, r9, ror #28
  54:	5f434352 	svcpl	0x00434352
  58:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
  5c:	43435200 	movtmi	r5, #12800	; 0x3200
  60:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
  64:	45504c31 	ldrbmi	r4, [r0, #-3121]	; 0xfffff3cf
  68:	5200524e 	andpl	r5, r0, #-536870908	; 0xe0000004
  6c:	415f4343 	cmpmi	pc, r3, asr #6
  70:	4c334248 	lfmmi	f4, 4, [r3], #-288	; 0xfffffee0
  74:	524e4550 	subpl	r4, lr, #80, 10	; 0x14000000
  78:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
  7c:	505f414f 	subspl	r4, pc, pc, asr #2
  80:	00485052 	subeq	r5, r8, r2, asr r0
  84:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
  88:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  8c:	6400745f 	strvs	r7, [r0], #-1119	; 0xfffffba1
  90:	79616c65 	stmdbvc	r1!, {r0, r2, r5, r6, sl, fp, sp, lr}^
  94:	646f6d00 	strbtvs	r6, [pc], #-3328	; 9c <vectors-0x7ffff64>
  98:	43520065 	cmpmi	r2, #101	; 0x65
  9c:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
  a0:	53523342 	cmppl	r2, #134217729	; 0x8000001
  a4:	52005254 	andpl	r5, r0, #84, 4	; 0x40000005
  a8:	415f4343 	cmpmi	pc, r3, asr #6
  ac:	45324250 	ldrmi	r4, [r2, #-592]!	; 0xfffffdb0
  b0:	4500524e 	strmi	r5, [r0, #-590]	; 0xfffffdb2
  b4:	736f5c3a 	cmnvc	pc, #14848	; 0x3a00
  b8:	74735c73 	ldrbtvc	r5, [r3], #-3187	; 0xfffff38d
  bc:	2d32336d 	ldccs	3, cr3, [r2, #-436]!	; 0xfffffe4c
  c0:	74747562 	ldrbtvc	r7, [r4], #-1378	; 0xfffffa9e
  c4:	622d6e6f 	eorvs	r6, sp, #1776	; 0x6f0
  c8:	6b6e696c 	blvs	1b9a680 <vectors-0x6465980>
  cc:	6f6e2d79 	svcvs	0x006e2d79
  d0:	6d61722d 	sfmvs	f7, 2, [r1, #-180]!	; 0xffffff4c
  d4:	6472615c 	ldrbtvs	r6, [r2], #-348	; 0xfffffea4
  d8:	6f6e6975 	svcvs	0x006e6975
  dc:	6c65645f 	cfstrdvs	mvd6, [r5], #-380	; 0xfffffe84
  e0:	625f7961 	subsvs	r7, pc, #1589248	; 0x184000
  e4:	6b6e696c 	blvs	1b9a69c <vectors-0x6465964>
  e8:	30305f79 	eorscc	r5, r0, r9, ror pc
  ec:	6c617600 	stclvs	6, cr7, [r1], #-0
  f0:	52006575 	andpl	r6, r0, #490733568	; 0x1d400000
  f4:	415f4343 	cmpmi	pc, r3, asr #6
  f8:	52324250 	eorspl	r4, r2, #80, 4
  fc:	00525453 	subseq	r5, r2, r3, asr r4
 100:	5f434352 	svcpl	0x00434352
 104:	32424841 	subcc	r4, r2, #4259840	; 0x410000
 108:	00524e45 	subseq	r4, r2, r5, asr #28
 10c:	4f495047 	svcmi	0x00495047
 110:	444f5f78 	strbmi	r5, [pc], #-3960	; 118 <vectors-0x7fffee8>
 114:	43520052 	cmpmi	r2, #82	; 0x52
 118:	4c505f43 	mrrcmi	15, 4, r5, r0, cr3
 11c:	4746434c 	strbmi	r4, [r6, -ip, asr #6]
 120:	6f430052 	svcvs	0x00430052
 124:	73746e75 	cmnvc	r4, #1872	; 0x750
 128:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 12c:	505f444f 	subspl	r4, pc, pc, asr #8
 130:	00485052 	subeq	r5, r8, r2, asr r0
 134:	5f434352 	svcpl	0x00434352
 138:	31425041 	cmpcc	r2, r1, asr #32
 13c:	52545352 	subspl	r5, r4, #1207959553	; 0x48000001
 140:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 144:	6f6c2067 	svcvs	0x006c2067
 148:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
 14c:	5200746e 	andpl	r7, r0, #1845493760	; 0x6e000000
 150:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 154:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 158:	43520031 	cmpmi	r2, #49	; 0x31
 15c:	53525f43 	cmppl	r2, #268	; 0x10c
 160:	32445652 	subcc	r5, r4, #85983232	; 0x5200000
 164:	43435200 	movtmi	r5, #12800	; 0x3200
 168:	0052435f 	subseq	r4, r2, pc, asr r3
 16c:	5f434352 	svcpl	0x00434352
 170:	56525352 			; <UNDEFINED> instruction: 0x56525352
 174:	52003444 	andpl	r3, r0, #68, 8	; 0x44000000
 178:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 17c:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 180:	43520035 	cmpmi	r2, #53	; 0x35
 184:	53525f43 	cmppl	r2, #268	; 0x10c
 188:	36445652 			; <UNDEFINED> instruction: 0x36445652
 18c:	43435200 	movtmi	r5, #12800	; 0x3200
 190:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
 194:	00374456 	eorseq	r4, r7, r6, asr r4
 198:	5f434352 	svcpl	0x00434352
 19c:	56525352 			; <UNDEFINED> instruction: 0x56525352
 1a0:	52003944 	andpl	r3, r0, #68, 18	; 0x110000
 1a4:	435f4343 	cmpmi	pc, #201326593	; 0xc000001
 1a8:	5f005253 	svcpl	0x00005253
 1ac:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
 1b0:	745f3874 	ldrbvc	r3, [pc], #-2164	; 1b8 <vectors-0x7fffe48>
 1b4:	43435200 	movtmi	r5, #12800	; 0x3200
 1b8:	4353535f 	cmpmi	r3, #2080374785	; 0x7c000001
 1bc:	52005247 	andpl	r5, r0, #1879048196	; 0x70000004
 1c0:	505f4343 	subspl	r4, pc, r3, asr #6
 1c4:	00485052 	subeq	r5, r8, r2, asr r0
 1c8:	4f495047 	svcmi	0x00495047
 1cc:	55505f78 	ldrbpl	r5, [r0, #-3960]	; 0xfffff088
 1d0:	00524450 	subseq	r4, r2, r0, asr r4
 1d4:	5f434352 	svcpl	0x00434352
 1d8:	31424841 	cmpcc	r2, r1, asr #16
 1dc:	52545352 	subspl	r5, r4, #1207959553	; 0x48000001
 1e0:	736e7500 	cmnvc	lr, #0, 10
 1e4:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 1e8:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
 1ec:	47007261 	strmi	r7, [r0, -r1, ror #4]
 1f0:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 1f4:	444f4d5f 	strbmi	r4, [pc], #-3423	; 1fc <vectors-0x7fffe04>
 1f8:	52005245 	andpl	r5, r0, #1342177284	; 0x50000004
 1fc:	415f4343 	cmpmi	pc, r3, asr #6
 200:	45334248 	ldrmi	r4, [r3, #-584]!	; 0xfffffdb8
 204:	5200524e 	andpl	r5, r0, #-536870908	; 0xe0000004
 208:	415f4343 	cmpmi	pc, r3, asr #6
 20c:	4c314250 	lfmmi	f4, 4, [r1], #-320	; 0xfffffec0
 210:	524e4550 	subpl	r4, lr, #80, 10	; 0x14000000
 214:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 218:	6f6c2067 	svcvs	0x006c2067
 21c:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
 220:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
 224:	2064656e 	rsbcs	r6, r4, lr, ror #10
 228:	00746e69 	rsbseq	r6, r4, r9, ror #28
 22c:	5f434352 	svcpl	0x00434352
 230:	494c4c50 	stmdbmi	ip, {r4, r6, sl, fp, lr}^
 234:	46435332 			; <UNDEFINED> instruction: 0x46435332
 238:	47005247 	strmi	r5, [r0, -r7, asr #4]
 23c:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 240:	5246415f 	subpl	r4, r6, #-1073741801	; 0xc0000017
 244:	43520048 	cmpmi	r2, #72	; 0x48
 248:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
 24c:	504c3242 	subpl	r3, ip, r2, asr #4
 250:	00524e45 	subseq	r4, r2, r5, asr #28
 254:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 258:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
 25c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 260:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
 264:	4700746e 	strmi	r7, [r0, -lr, ror #8]
 268:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
 26c:	31203731 			; <UNDEFINED> instruction: 0x31203731
 270:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
 274:	30322031 	eorscc	r2, r2, r1, lsr r0
 278:	38303132 	ldmdacc	r0!, {r1, r4, r5, r8, ip, sp}
 27c:	28203432 	stmdacs	r0!, {r1, r4, r5, sl, ip, sp}
 280:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
 284:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 288:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
 28c:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 290:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 294:	346d2d78 	strbtcc	r2, [sp], #-3448	; 0xfffff288
 298:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 29c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 2a0:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
 2a4:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 2a8:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
 2ac:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
 2b0:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
 2b4:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
 2b8:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 2bc:	2d653776 	stclcs	7, cr3, [r5, #-472]!	; 0xfffffe28
 2c0:	672d206d 	strvs	r2, [sp, -sp, rrx]!
 2c4:	304f2d20 	subcc	r2, pc, r0, lsr #26
 2c8:	63727300 	cmnvs	r2, #0, 6
 2cc:	6e696d2f 	cdpvs	13, 6, cr6, cr9, cr15, {1}
 2d0:	6c616d69 	stclvs	13, cr6, [r1], #-420	; 0xfffffe5c
 2d4:	6472615f 	ldrbtvs	r6, [r2], #-351	; 0xfffffea1
 2d8:	6f6e6975 	svcvs	0x006e6975
 2dc:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
 2e0:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 2e4:	50534f5f 	subspl	r4, r3, pc, asr pc
 2e8:	52444545 	subpl	r4, r4, #289406976	; 0x11400000
 2ec:	43435200 	movtmi	r5, #12800	; 0x3200
 2f0:	5249435f 	subpl	r4, r9, #2080374785	; 0x7c000001
 2f4:	67696400 	strbvs	r6, [r9, -r0, lsl #8]!
 2f8:	6c617469 	cfstrdvs	mvd7, [r1], #-420	; 0xfffffe5c
 2fc:	74697257 	strbtvc	r7, [r9], #-599	; 0xfffffda9
 300:	50470065 	subpl	r0, r7, r5, rrx
 304:	5f784f49 	svcpl	0x00784f49
 308:	524b434c 	subpl	r4, fp, #76, 6	; 0x30000001
 30c:	67696400 	strbvs	r6, [r9, -r0, lsl #8]!
 310:	6c617469 	cfstrdvs	mvd7, [r1], #-420	; 0xfffffe5c
 314:	64616552 	strbtvs	r6, [r1], #-1362	; 0xfffffaae
 318:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 31c:	425f784f 	subsmi	r7, pc, #5177344	; 0x4f0000
 320:	00525253 	subseq	r5, r2, r3, asr r2
 324:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
 328:	6f697047 	svcvs	0x00697047
 32c:	43435200 	movtmi	r5, #12800	; 0x3200
 330:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 334:	54535232 	ldrbpl	r5, [r3], #-562	; 0xfffffdce
 338:	43520052 	cmpmi	r2, #82	; 0x52
 33c:	50415f43 	subpl	r5, r1, r3, asr #30
 340:	504c3242 	subpl	r3, ip, r2, asr #4
 344:	00524e45 	subseq	r4, r2, r5, asr #28
 348:	4f495047 	svcmi	0x00495047
 34c:	544f5f78 	strbpl	r5, [pc], #-3960	; 354 <vectors-0x7fffcac>
 350:	52455059 	subpl	r5, r5, #89	; 0x59
 354:	43435200 	movtmi	r5, #12800	; 0x3200
 358:	4250415f 	subsmi	r4, r0, #-1073741801	; 0xc0000017
 35c:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
 360:	47494800 	strbmi	r4, [r9, -r0, lsl #16]
 364:	50470048 	subpl	r0, r7, r8, asr #32
 368:	5f784f49 	svcpl	0x00784f49
 36c:	00524449 	subseq	r4, r2, r9, asr #8
 370:	6e756f43 	cdpvs	15, 7, cr6, cr5, cr3, {2}
 374:	65507374 	ldrbvs	r7, [r0, #-884]	; 0xfffffc8c
 378:	00734d72 	rsbseq	r4, r3, r2, ror sp
 37c:	5f434352 	svcpl	0x00434352
 380:	31424841 	cmpcc	r2, r1, asr #16
 384:	00524e45 	subseq	r4, r2, r5, asr #28
 388:	75746573 	ldrbvc	r6, [r4, #-1395]!	; 0xfffffa8d
 38c:	6f6c0070 	svcvs	0x006c0070
 390:	4900706f 	stmdbmi	r0, {r0, r1, r2, r3, r5, r6, ip, sp, lr}
 394:	5455504e 	ldrbpl	r5, [r5], #-78	; 0xffffffb2
 398:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
 39c:	7273006e 	rsbsvc	r0, r3, #110	; 0x6e
 3a0:	616d2f63 	cmnvs	sp, r3, ror #30
 3a4:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
 3a8:	54554f00 	ldrbpl	r4, [r5], #-3840	; 0xfffff100
 3ac:	00545550 	subseq	r5, r4, r0, asr r5
 3b0:	6164735f 	cmnvs	r4, pc, asr r3
 3b4:	5f006174 	svcpl	0x00006174
 3b8:	73736265 	cmnvc	r3, #1342177286	; 0x50000006
 3bc:	7a697300 	bvc	1a5cfc4 <vectors-0x65a303c>
 3c0:	79625f65 	stmdbvc	r2!, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
 3c4:	00736574 	rsbseq	r6, r3, r4, ror r5
 3c8:	2f637273 	svccs	0x00637273
 3cc:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
 3d0:	74735f32 	ldrbtvc	r5, [r3], #-3890	; 0xfffff0ce
 3d4:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0xfffffd9f
 3d8:	00632e70 	rsbeq	r2, r3, r0, ror lr
 3dc:	65736552 	ldrbvs	r6, [r3, #-1362]!	; 0xfffffaae
 3e0:	61485f74 	hvcvs	34292	; 0x85f4
 3e4:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 3e8:	655f0072 	ldrbvs	r0, [pc, #-114]	; 37e <vectors-0x7fffc82>
 3ec:	61746164 	cmnvs	r4, r4, ror #2
 3f0:	63657600 	cmnvs	r5, #0, 12
 3f4:	73726f74 	cmnvc	r2, #116, 30	; 0x1d0
 3f8:	62735f00 	rsbsvs	r5, r3, #0, 30
 3fc:	70007373 	andvc	r7, r0, r3, ror r3
 400:	00435253 	subeq	r5, r3, r3, asr r2
 404:	74734470 	ldrbtvc	r4, [r3], #-1136	; 0xfffffb90
 408:	616c5f00 	cmnvs	ip, r0, lsl #30
 40c:	7461645f 	strbtvc	r6, [r1], #-1119	; 0xfffffba1
 410:	6e430061 	cdpvs	0, 4, cr0, cr3, cr1, {3}
 414:	Address 0x00000414 is out of bounds.


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
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000008 	stmdaeq	r0, {r3}
  1c:	00000024 	andeq	r0, r0, r4, lsr #32
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	070d4101 	streq	r4, [sp, -r1, lsl #2]
  28:	410d0d4c 	tstmi	sp, ip, asr #26
  2c:	00000ec7 	andeq	r0, r0, r7, asr #29
  30:	00000024 	andeq	r0, r0, r4, lsr #32
  34:	00000000 	andeq	r0, r0, r0
  38:	0800002c 	stmdaeq	r0, {r2, r3, r5}
  3c:	00000088 	andeq	r0, r0, r8, lsl #1
  40:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  44:	100e4101 	andne	r4, lr, r1, lsl #2
  48:	79070d41 	stmdbvc	r7, {r0, r6, r8, sl, fp}
  4c:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  50:	0ec7410d 	poleqs	f4, f7, #5.0
  54:	00000000 	andeq	r0, r0, r0
  58:	00000024 	andeq	r0, r0, r4, lsr #32
  5c:	00000000 	andeq	r0, r0, r0
  60:	080000b4 	stmdaeq	r0, {r2, r4, r5, r7}
  64:	00000068 	andeq	r0, r0, r8, rrx
  68:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  6c:	100e4101 	andne	r4, lr, r1, lsl #2
  70:	69070d41 	stmdbvs	r7, {r0, r6, r8, sl, fp}
  74:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  78:	0ec7410d 	poleqs	f4, f7, #5.0
  7c:	00000000 	andeq	r0, r0, r0
  80:	00000024 	andeq	r0, r0, r4, lsr #32
  84:	00000000 	andeq	r0, r0, r0
  88:	0800011c 	stmdaeq	r0, {r2, r3, r4, r8}
  8c:	000000b8 	strheq	r0, [r0], -r8
  90:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  94:	100e4101 	andne	r4, lr, r1, lsl #2
  98:	02070d41 	andeq	r0, r7, #4160	; 0x1040
  9c:	41040e51 	tstmi	r4, r1, asr lr
  a0:	c7410d0d 	strbgt	r0, [r1, -sp, lsl #26]
  a4:	0000000e 	andeq	r0, r0, lr
  a8:	00000024 	andeq	r0, r0, r4, lsr #32
  ac:	00000000 	andeq	r0, r0, r0
  b0:	080001d4 	stmdaeq	r0, {r2, r4, r6, r7, r8}
  b4:	0000002c 	andeq	r0, r0, ip, lsr #32
  b8:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  bc:	180e4101 	stmdane	lr, {r0, r8, lr}
  c0:	50070d41 	andpl	r0, r7, r1, asr #26
  c4:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  c8:	0ec7410d 	poleqs	f4, f7, #5.0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	0000000c 	andeq	r0, r0, ip
  d4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  d8:	7c020001 	stcvc	0, cr0, [r2], {1}
  dc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  e0:	00000018 	andeq	r0, r0, r8, lsl r0
  e4:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
  e8:	08000200 	stmdaeq	r0, {r9}
  ec:	00000010 	andeq	r0, r0, r0, lsl r0
  f0:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  f4:	41018e02 	tstmi	r1, r2, lsl #28
  f8:	0000070d 	andeq	r0, r0, sp, lsl #14
  fc:	00000018 	andeq	r0, r0, r8, lsl r0
 100:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 104:	08000210 	stmdaeq	r0, {r4, r9}
 108:	00000028 	andeq	r0, r0, r8, lsr #32
 10c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 110:	41018e02 	tstmi	r1, r2, lsl #28
 114:	0000070d 	andeq	r0, r0, sp, lsl #14
 118:	00000018 	andeq	r0, r0, r8, lsl r0
 11c:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 120:	08000238 	stmdaeq	r0, {r3, r4, r5, r9}
 124:	00000012 	andeq	r0, r0, r2, lsl r0
 128:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 12c:	41018e02 	tstmi	r1, r2, lsl #28
 130:	0000070d 	andeq	r0, r0, sp, lsl #14
 134:	0000000c 	andeq	r0, r0, ip
 138:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 13c:	7c020001 	stcvc	0, cr0, [r2], {1}
 140:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 144:	00000020 	andeq	r0, r0, r0, lsr #32
 148:	00000134 	andeq	r0, r0, r4, lsr r1
 14c:	0800024c 	stmdaeq	r0, {r2, r3, r6, r9}
 150:	00000084 	andeq	r0, r0, r4, lsl #1
 154:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 158:	41018e02 	tstmi	r1, r2, lsl #28
 15c:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
 160:	080e7307 	stmdaeq	lr, {r0, r1, r2, r8, r9, ip, sp, lr}
 164:	000d0d41 	andeq	r0, sp, r1, asr #26
