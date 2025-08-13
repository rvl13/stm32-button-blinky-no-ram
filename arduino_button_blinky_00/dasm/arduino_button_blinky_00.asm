
obj/arduino_button_blinky_00.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20020000 	andcs	r0, r2, r0
 8000004:	08000225 	stmdaeq	r0, {r0, r2, r5, r9}

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

080001d4 <setup>:
 80001d4:	b580      	push	{r7, lr}
 80001d6:	af00      	add	r7, sp, #0
 80001d8:	2100      	movs	r1, #0
 80001da:	2000      	movs	r0, #0
 80001dc:	f7ff ff26 	bl	800002c <pinMode>
 80001e0:	2101      	movs	r1, #1
 80001e2:	200e      	movs	r0, #14
 80001e4:	f7ff ff22 	bl	800002c <pinMode>
 80001e8:	bf00      	nop
 80001ea:	bd80      	pop	{r7, pc}

080001ec <loop>:
 80001ec:	b580      	push	{r7, lr}
 80001ee:	af00      	add	r7, sp, #0
 80001f0:	2000      	movs	r0, #0
 80001f2:	f7ff ff5f 	bl	80000b4 <digitalRead>
 80001f6:	4603      	mov	r3, r0
 80001f8:	2b01      	cmp	r3, #1
 80001fa:	d104      	bne.n	8000206 <loop+0x1a>
 80001fc:	2101      	movs	r1, #1
 80001fe:	200e      	movs	r0, #14
 8000200:	f7ff ff8c 	bl	800011c <digitalWrite>
 8000204:	e003      	b.n	800020e <loop+0x22>
 8000206:	2100      	movs	r1, #0
 8000208:	200e      	movs	r0, #14
 800020a:	f7ff ff87 	bl	800011c <digitalWrite>
 800020e:	bf00      	nop
 8000210:	bd80      	pop	{r7, pc}

08000212 <main>:
 8000212:	b580      	push	{r7, lr}
 8000214:	af00      	add	r7, sp, #0
 8000216:	f7ff fef7 	bl	8000008 <initGpio>
 800021a:	f7ff ffdb 	bl	80001d4 <setup>
 800021e:	f7ff ffe5 	bl	80001ec <loop>
 8000222:	e7fc      	b.n	800021e <main+0xc>

08000224 <Reset_Handler>:
 8000224:	b580      	push	{r7, lr}
 8000226:	b086      	sub	sp, #24
 8000228:	af00      	add	r7, sp, #0
 800022a:	4a1a      	ldr	r2, [pc, #104]	; (8000294 <Reset_Handler+0x70>)
 800022c:	4b1a      	ldr	r3, [pc, #104]	; (8000298 <Reset_Handler+0x74>)
 800022e:	1ad3      	subs	r3, r2, r3
 8000230:	607b      	str	r3, [r7, #4]
 8000232:	4b19      	ldr	r3, [pc, #100]	; (8000298 <Reset_Handler+0x74>)
 8000234:	617b      	str	r3, [r7, #20]
 8000236:	4b19      	ldr	r3, [pc, #100]	; (800029c <Reset_Handler+0x78>)
 8000238:	613b      	str	r3, [r7, #16]
 800023a:	2300      	movs	r3, #0
 800023c:	60fb      	str	r3, [r7, #12]
 800023e:	e00a      	b.n	8000256 <Reset_Handler+0x32>
 8000240:	693a      	ldr	r2, [r7, #16]
 8000242:	1c53      	adds	r3, r2, #1
 8000244:	613b      	str	r3, [r7, #16]
 8000246:	697b      	ldr	r3, [r7, #20]
 8000248:	1c59      	adds	r1, r3, #1
 800024a:	6179      	str	r1, [r7, #20]
 800024c:	7812      	ldrb	r2, [r2, #0]
 800024e:	701a      	strb	r2, [r3, #0]
 8000250:	68fb      	ldr	r3, [r7, #12]
 8000252:	3301      	adds	r3, #1
 8000254:	60fb      	str	r3, [r7, #12]
 8000256:	68fa      	ldr	r2, [r7, #12]
 8000258:	687b      	ldr	r3, [r7, #4]
 800025a:	429a      	cmp	r2, r3
 800025c:	d3f0      	bcc.n	8000240 <Reset_Handler+0x1c>
 800025e:	4a10      	ldr	r2, [pc, #64]	; (80002a0 <Reset_Handler+0x7c>)
 8000260:	4b10      	ldr	r3, [pc, #64]	; (80002a4 <Reset_Handler+0x80>)
 8000262:	1ad3      	subs	r3, r2, r3
 8000264:	607b      	str	r3, [r7, #4]
 8000266:	4b0f      	ldr	r3, [pc, #60]	; (80002a4 <Reset_Handler+0x80>)
 8000268:	617b      	str	r3, [r7, #20]
 800026a:	2300      	movs	r3, #0
 800026c:	60bb      	str	r3, [r7, #8]
 800026e:	e007      	b.n	8000280 <Reset_Handler+0x5c>
 8000270:	697b      	ldr	r3, [r7, #20]
 8000272:	1c5a      	adds	r2, r3, #1
 8000274:	617a      	str	r2, [r7, #20]
 8000276:	2200      	movs	r2, #0
 8000278:	701a      	strb	r2, [r3, #0]
 800027a:	68bb      	ldr	r3, [r7, #8]
 800027c:	3301      	adds	r3, #1
 800027e:	60bb      	str	r3, [r7, #8]
 8000280:	68ba      	ldr	r2, [r7, #8]
 8000282:	687b      	ldr	r3, [r7, #4]
 8000284:	429a      	cmp	r2, r3
 8000286:	d3f3      	bcc.n	8000270 <Reset_Handler+0x4c>
 8000288:	f7ff ffc3 	bl	8000212 <main>
 800028c:	bf00      	nop
 800028e:	3718      	adds	r7, #24
 8000290:	46bd      	mov	sp, r7
 8000292:	bd80      	pop	{r7, pc}
 8000294:	2000000c 	andcs	r0, r0, ip
 8000298:	20000000 	andcs	r0, r0, r0
 800029c:	080002a8 	stmdaeq	r0, {r3, r5, r7, r9}
 80002a0:	2000000c 	andcs	r0, r0, ip
 80002a4:	2000000c 	andcs	r0, r0, ip

Disassembly of section .data:

20000000 <RCC_PRPH>:
20000000:	40023800 	andmi	r3, r2, r0, lsl #16

20000004 <GPIOA_PRPH>:
20000004:	40020000 	andmi	r0, r2, r0

20000008 <GPIOD_PRPH>:
20000008:	40020c00 	andmi	r0, r2, r0, lsl #24

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000002bb 			; <UNDEFINED> instruction: 0x000002bb
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	0000025b 	andeq	r0, r0, fp, asr r2
  10:	0002bd0c 	andeq	fp, r2, ip, lsl #26
  14:	00007900 	andeq	r7, r0, r0, lsl #18
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	0001cc08 	andeq	ip, r1, r8, lsl #24
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	000001d7 	ldrdeq	r0, [r0], -r7
  2c:	00019f03 	andeq	r9, r1, r3, lsl #30
  30:	182b0200 	stmdane	fp!, {r9}
  34:	00000038 	andeq	r0, r0, r8, lsr r0
  38:	d5080102 	strle	r0, [r8, #-258]	; 0xfffffefe
  3c:	02000001 	andeq	r0, r0, #1
  40:	004a0502 	subeq	r0, sl, r2, lsl #10
  44:	02020000 	andeq	r0, r2, #0
  48:	00024807 	andeq	r4, r2, r7, lsl #16
  4c:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  50:	0000013a 	andeq	r0, r0, sl, lsr r1
  54:	0000bf03 	andeq	fp, r0, r3, lsl #30
  58:	194f0200 	stmdbne	pc, {r9}^	; <UNPREDICTABLE>
  5c:	00000060 	andeq	r0, r0, r0, rrx
  60:	0e070402 	cdpeq	4, 0, cr0, cr7, cr2, {0}
  64:	02000002 	andeq	r0, r0, #2
  68:	01350508 	teqeq	r5, r8, lsl #10
  6c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  70:	00020907 	andeq	r0, r2, r7, lsl #18
  74:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
  78:	00746e69 	rsbseq	r6, r4, r9, ror #28
  7c:	13070402 	movwne	r0, #29698	; 0x7402
  80:	03000002 	movweq	r0, #2
  84:	000001a1 	andeq	r0, r0, r1, lsr #3
  88:	2c131803 	ldccs	8, cr1, [r3], {3}
  8c:	03000000 	movweq	r0, #0
  90:	000000c1 	andeq	r0, r0, r1, asr #1
  94:	54143003 	ldrpl	r3, [r4], #-3
  98:	05000000 	streq	r0, [r0, #-0]
  9c:	00380107 	eorseq	r0, r8, r7, lsl #2
  a0:	0a040000 	beq	1000a8 <vectors-0x7efff58>
  a4:	00017601 	andeq	r7, r1, r1, lsl #12
  a8:	01590600 	cmpeq	r9, r0, lsl #12
  ac:	06000000 	streq	r0, [r0], -r0
  b0:	00000111 	andeq	r0, r0, r1, lsl r1
  b4:	00540601 	subseq	r0, r4, r1, lsl #12
  b8:	06020000 	streq	r0, [r2], -r0
  bc:	000002e1 	andeq	r0, r0, r1, ror #5
  c0:	01c80603 	biceq	r0, r8, r3, lsl #12
  c4:	06040000 	streq	r0, [r4], -r0
  c8:	00000321 	andeq	r0, r0, r1, lsr #6
  cc:	00cf0605 	sbceq	r0, pc, r5, lsl #12
  d0:	06060000 	streq	r0, [r6], -r0
  d4:	00000143 	andeq	r0, r0, r3, asr #2
  d8:	01280607 			; <UNDEFINED> instruction: 0x01280607
  dc:	06080000 	streq	r0, [r8], -r0
  e0:	000000ee 	andeq	r0, r0, lr, ror #1
  e4:	014e0609 	cmpeq	lr, r9, lsl #12
  e8:	060a0000 	streq	r0, [sl], -r0
  ec:	0000001c 	andeq	r0, r0, ip, lsl r0
  f0:	0364060b 	cmneq	r4, #11534336	; 0xb00000
  f4:	060c0000 	streq	r0, [ip], -r0
  f8:	000000fb 	strdeq	r0, [r0], -fp
  fc:	01ef060d 	mvneq	r0, sp, lsl #12
 100:	060e0000 	streq	r0, [lr], -r0
 104:	00000160 	andeq	r0, r0, r0, ror #2
 108:	0349060f 	movteq	r0, #38415	; 0x960f
 10c:	06100000 	ldreq	r0, [r0], -r0
 110:	000000dc 	ldrdeq	r0, [r0], -ip
 114:	016b0611 	cmneq	fp, r1, lsl r6
 118:	06120000 	ldreq	r0, [r2], -r0
 11c:	00000176 	andeq	r0, r0, r6, ror r1
 120:	005d0613 	subseq	r0, sp, r3, lsl r6
 124:	06140000 	ldreq	r0, [r4], -r0
 128:	0000023a 	andeq	r0, r0, sl, lsr r2
 12c:	006b0615 	rsbeq	r0, fp, r5, lsl r6
 130:	06160000 	ldreq	r0, [r6], -r0
 134:	00000181 	andeq	r0, r0, r1, lsl #3
 138:	01fb0617 	mvnseq	r0, r7, lsl r6
 13c:	06180000 	ldreq	r0, [r8], -r0
 140:	0000032e 	andeq	r0, r0, lr, lsr #6
 144:	003f0619 	eorseq	r0, pc, r9, lsl r6	; <UNPREDICTABLE>
 148:	061a0000 	ldreq	r0, [sl], -r0
 14c:	0000018c 	andeq	r0, r0, ip, lsl #3
 150:	000b061b 	andeq	r0, fp, fp, lsl r6
 154:	061c0000 	ldreq	r0, [ip], -r0
 158:	00000197 	muleq	r0, r7, r1
 15c:	0027061d 	eoreq	r0, r7, sp, lsl r6
 160:	061e0000 	ldreq	r0, [lr], -r0
 164:	00000033 	andeq	r0, r0, r3, lsr r0
 168:	01a9061f 			; <UNDEFINED> instruction: 0x01a9061f
 16c:	06200000 	strteq	r0, [r0], -r0
 170:	00000220 	andeq	r0, r0, r0, lsr #4
 174:	07050021 	streq	r0, [r5, -r1, lsr #32]
 178:	00003801 	andeq	r3, r0, r1, lsl #16
 17c:	01310400 	teqeq	r1, r0, lsl #8
 180:	000001c1 	andeq	r0, r0, r1, asr #3
 184:	0001e306 	andeq	lr, r1, r6, lsl #6
 188:	3c060000 	stccc	0, cr0, [r6], {-0}
 18c:	01000003 	tsteq	r0, r3
 190:	0002d306 	andeq	sp, r2, r6, lsl #6
 194:	bc060200 	sfmlt	f0, 4, [r6], {-0}
 198:	03000001 	movweq	r0, #1
 19c:	00035a06 	andeq	r5, r3, r6, lsl #20
 1a0:	07060400 	streq	r0, [r6, -r0, lsl #8]
 1a4:	05000001 	streq	r0, [r0, #-1]
 1a8:	00030d06 	andeq	r0, r3, r6, lsl #26
 1ac:	f6060600 			; <UNDEFINED> instruction: 0xf6060600
 1b0:	07000002 	streq	r0, [r0, -r2]
 1b4:	00000006 	andeq	r0, r0, r6
 1b8:	2f060800 	svccs	0x00060800
 1bc:	09000002 	stmdbeq	r0, {r1}
 1c0:	01070500 	tsteq	r7, r0, lsl #10
 1c4:	00000038 	andeq	r0, r0, r8, lsr r0
 1c8:	dc010d05 	stcle	13, cr0, [r1], {5}
 1cc:	07000001 	streq	r0, [r0, -r1]
 1d0:	00574f4c 	subseq	r4, r7, ip, asr #30
 1d4:	03550600 	cmpeq	r5, #0, 12
 1d8:	00010000 	andeq	r0, r1, r0
 1dc:	0001b308 	andeq	fp, r1, r8, lsl #6
 1e0:	0b090100 	bleq	2405e8 <vectors-0x7dbfa18>
 1e4:	000001ee 	andeq	r0, r0, lr, ror #3
 1e8:	00000305 	andeq	r0, r0, r5, lsl #6
 1ec:	04092000 	streq	r2, [r9], #-0
 1f0:	0000008f 	andeq	r0, r0, pc, lsl #1
 1f4:	0000b408 	andeq	fp, r0, r8, lsl #8
 1f8:	0b0a0100 	bleq	280600 <vectors-0x7d7fa00>
 1fc:	000001ee 	andeq	r0, r0, lr, ror #3
 200:	00040305 	andeq	r0, r4, r5, lsl #6
 204:	1d082000 	stcne	0, cr2, [r8, #-0]
 208:	01000001 	tsteq	r0, r1
 20c:	01ee0b0b 	mvneq	r0, fp, lsl #22
 210:	03050000 	movweq	r0, #20480	; 0x5000
 214:	20000008 	andcs	r0, r0, r8
 218:	0002e90a 	andeq	lr, r2, sl, lsl #18
 21c:	063b0100 	ldrteq	r0, [fp], -r0, lsl #2
 220:	0800011c 	stmdaeq	r0, {r2, r3, r4, r8}
 224:	000000b8 	strheq	r0, [r0], -r8
 228:	024d9c01 	subeq	r9, sp, #256	; 0x100
 22c:	700b0000 	andvc	r0, fp, r0
 230:	01006e69 	tsteq	r0, r9, ror #28
 234:	00831b3b 	addeq	r1, r3, fp, lsr fp
 238:	91020000 	mrsls	r0, (UNDEF: 2)
 23c:	00e80c77 	rsceq	r0, r8, r7, ror ip
 240:	3b010000 	blcc	40248 <vectors-0x7fbfdb8>
 244:	00008328 	andeq	r8, r0, r8, lsr #6
 248:	76910200 	ldrvc	r0, [r1], r0, lsl #4
 24c:	03010d00 	movweq	r0, #7424	; 0x1d00
 250:	27010000 	strcs	r0, [r1, -r0]
 254:	00008309 	andeq	r8, r0, r9, lsl #6
 258:	0000b400 	andeq	fp, r0, r0, lsl #8
 25c:	00006808 	andeq	r6, r0, r8, lsl #16
 260:	779c0100 	ldrvc	r0, [ip, r0, lsl #2]
 264:	0b000002 	bleq	274 <vectors-0x7fffd8c>
 268:	006e6970 	rsbeq	r6, lr, r0, ror r9
 26c:	831d2701 	tsthi	sp, #262144	; 0x40000
 270:	02000000 	andeq	r0, r0, #0
 274:	0a007791 	beq	1e0c0 <vectors-0x7fe1f40>
 278:	00000014 	andeq	r0, r0, r4, lsl r0
 27c:	2c061401 	cfstrscs	mvf1, [r6], {1}
 280:	88080000 	stmdahi	r8, {}	; <UNPREDICTABLE>
 284:	01000000 	mrseq	r0, (UNDEF: 0)
 288:	0002ac9c 	muleq	r2, ip, ip
 28c:	69700b00 	ldmdbvs	r0!, {r8, r9, fp}^
 290:	1401006e 	strne	r0, [r1], #-110	; 0xffffff92
 294:	00008316 	andeq	r8, r0, r6, lsl r3
 298:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
 29c:	0000ca0c 	andeq	ip, r0, ip, lsl #20
 2a0:	23140100 	tstcs	r4, #0, 2
 2a4:	00000083 	andeq	r0, r0, r3, lsl #1
 2a8:	00769102 	rsbseq	r9, r6, r2, lsl #2
 2ac:	0003180e 	andeq	r1, r3, lr, lsl #16
 2b0:	060d0100 	streq	r0, [sp], -r0, lsl #2
 2b4:	08000008 	stmdaeq	r0, {r3}
 2b8:	00000024 	andeq	r0, r0, r4, lsr #32
 2bc:	d8009c01 	stmdale	r0, {r0, sl, fp, ip, pc}
 2c0:	04000000 	streq	r0, [r0], #-0
 2c4:	0000f000 	andeq	pc, r0, r0
 2c8:	5b010400 	blpl	412d0 <vectors-0x7fbed30>
 2cc:	0c000002 	stceq	0, cr0, [r0], {2}
 2d0:	00000386 	andeq	r0, r0, r6, lsl #7
 2d4:	00000079 	andeq	r0, r0, r9, ror r0
 2d8:	080001d4 	stmdaeq	r0, {r2, r4, r6, r7, r8}
 2dc:	00000050 	andeq	r0, r0, r0, asr r0
 2e0:	00000213 	andeq	r0, r0, r3, lsl r2
 2e4:	d7060102 	strle	r0, [r6, -r2, lsl #2]
 2e8:	02000001 	andeq	r0, r0, #1
 2ec:	01d50801 	bicseq	r0, r5, r1, lsl #16
 2f0:	02020000 	andeq	r0, r2, #0
 2f4:	00004a05 	andeq	r4, r0, r5, lsl #20
 2f8:	07020200 	streq	r0, [r2, -r0, lsl #4]
 2fc:	00000248 	andeq	r0, r0, r8, asr #4
 300:	3a050402 	bcc	141310 <vectors-0x7ebecf0>
 304:	02000001 	andeq	r0, r0, #1
 308:	020e0704 	andeq	r0, lr, #4, 14	; 0x100000
 30c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 310:	00013505 	andeq	r3, r1, r5, lsl #10
 314:	07080200 	streq	r0, [r8, -r0, lsl #4]
 318:	00000209 	andeq	r0, r0, r9, lsl #4
 31c:	69050403 	stmdbvs	r5, {r0, r1, sl}
 320:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
 324:	02130704 	andseq	r0, r3, #4, 14	; 0x100000
 328:	07040000 	streq	r0, [r4, -r0]
 32c:	00002c01 	andeq	r2, r0, r1, lsl #24
 330:	010d0200 	mrseq	r0, SP_fiq
 334:	00000086 	andeq	r0, r0, r6, lsl #1
 338:	574f4c05 	strbpl	r4, [pc, -r5, lsl #24]
 33c:	55060000 	strpl	r0, [r6, #-0]
 340:	01000003 	tsteq	r0, r3
 344:	01070400 	tsteq	r7, r0, lsl #8
 348:	0000002c 	andeq	r0, r0, ip, lsr #32
 34c:	a1011402 	tstge	r1, r2, lsl #8
 350:	06000000 	streq	r0, [r0], -r0
 354:	0000037b 	andeq	r0, r0, fp, ror r3
 358:	03910600 	orrseq	r0, r1, #0, 12
 35c:	00010000 	andeq	r0, r1, r0
 360:	00038107 	andeq	r8, r3, r7, lsl #2
 364:	051b0100 	ldreq	r0, [fp, #-256]	; 0xffffff00
 368:	0000005d 	andeq	r0, r0, sp, asr r0
 36c:	08000212 	stmdaeq	r0, {r1, r4, r9}
 370:	00000012 	andeq	r0, r0, r2, lsl r0
 374:	76089c01 	strvc	r9, [r8], -r1, lsl #24
 378:	01000003 	tsteq	r0, r3
 37c:	01ec060c 	mvneq	r0, ip, lsl #12
 380:	00260800 	eoreq	r0, r6, r0, lsl #16
 384:	9c010000 	stcls	0, cr0, [r1], {-0}
 388:	00037008 	andeq	r7, r3, r8
 38c:	06050100 	streq	r0, [r5], -r0, lsl #2
 390:	080001d4 	stmdaeq	r0, {r2, r4, r6, r7, r8}
 394:	00000018 	andeq	r0, r0, r8, lsl r0
 398:	76009c01 	strvc	r9, [r0], -r1, lsl #24
 39c:	04000001 	streq	r0, [r0], #-1
 3a0:	00017500 	andeq	r7, r1, r0, lsl #10
 3a4:	5b010400 	blpl	413ac <vectors-0x7fbec54>
 3a8:	0c000002 	stceq	0, cr0, [r0], {2}
 3ac:	000003b0 			; <UNDEFINED> instruction: 0x000003b0
 3b0:	00000079 	andeq	r0, r0, r9, ror r0
 3b4:	08000224 	stmdaeq	r0, {r2, r5, r9}
 3b8:	00000084 	andeq	r0, r0, r4, lsl #1
 3bc:	00000288 	andeq	r0, r0, r8, lsl #5
 3c0:	d7060102 	strle	r0, [r6, -r2, lsl #2]
 3c4:	03000001 	movweq	r0, #1
 3c8:	0000019f 	muleq	r0, pc, r1	; <UNPREDICTABLE>
 3cc:	38182b02 	ldmdacc	r8, {r1, r8, r9, fp, sp}
 3d0:	02000000 	andeq	r0, r0, #0
 3d4:	01d50801 	bicseq	r0, r5, r1, lsl #16
 3d8:	02020000 	andeq	r0, r2, #0
 3dc:	00004a05 	andeq	r4, r0, r5, lsl #20
 3e0:	07020200 	streq	r0, [r2, -r0, lsl #4]
 3e4:	00000248 	andeq	r0, r0, r8, asr #4
 3e8:	3a050402 	bcc	1413f8 <vectors-0x7ebec08>
 3ec:	03000001 	movweq	r0, #1
 3f0:	000000bf 	strheq	r0, [r0], -pc	; <UNPREDICTABLE>
 3f4:	60194f02 	andsvs	r4, r9, r2, lsl #30
 3f8:	02000000 	andeq	r0, r0, #0
 3fc:	020e0704 	andeq	r0, lr, #4, 14	; 0x100000
 400:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 404:	00013505 	andeq	r3, r1, r5, lsl #10
 408:	07080200 	streq	r0, [r8, -r0, lsl #4]
 40c:	00000209 	andeq	r0, r0, r9, lsl #4
 410:	69050404 	stmdbvs	r5, {r2, sl}
 414:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
 418:	02130704 	andseq	r0, r3, #4, 14	; 0x100000
 41c:	a1030000 	mrsge	r0, (UNDEF: 3)
 420:	03000001 	movweq	r0, #1
 424:	002c1318 	eoreq	r1, ip, r8, lsl r3
 428:	c1030000 	mrsgt	r0, (UNDEF: 3)
 42c:	03000000 	movweq	r0, #0
 430:	00541430 	subseq	r1, r4, r0, lsr r4
 434:	98050000 	stmdals	r5, {}	; <UNPREDICTABLE>
 438:	01000003 	tsteq	r0, r3
 43c:	008f1115 	addeq	r1, pc, r5, lsl r1	; <UNPREDICTABLE>
 440:	d2050000 	andle	r0, r5, #0
 444:	01000003 	tsteq	r0, r3
 448:	008f1116 	addeq	r1, pc, r6, lsl r1	; <UNPREDICTABLE>
 44c:	f1050000 			; <UNDEFINED> instruction: 0xf1050000
 450:	01000003 	tsteq	r0, r3
 454:	008f1117 	addeq	r1, pc, r7, lsl r1	; <UNPREDICTABLE>
 458:	e1050000 	mrs	r0, (UNDEF: 5)
 45c:	01000003 	tsteq	r0, r3
 460:	008f1119 	addeq	r1, pc, r9, lsl r1	; <UNPREDICTABLE>
 464:	9f050000 	svcls	0x00050000
 468:	01000003 	tsteq	r0, r3
 46c:	008f111a 	addeq	r1, pc, sl, lsl r1	; <UNPREDICTABLE>
 470:	8f060000 	svchi	0x00060000
 474:	e7000000 	str	r0, [r0, -r0]
 478:	07000000 	streq	r0, [r0, -r0]
 47c:	0000007c 	andeq	r0, r0, ip, ror r0
 480:	d9080001 	stmdble	r8, {r0}
 484:	01000003 	tsteq	r0, r3
 488:	00d70a2b 	sbcseq	r0, r7, fp, lsr #20
 48c:	03050000 	movweq	r0, #20480	; 0x5000
 490:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 494:	0003c409 	andeq	ip, r3, r9, lsl #8
 498:	06310100 	ldrteq	r0, [r1], -r0, lsl #2
 49c:	08000224 	stmdaeq	r0, {r2, r5, r9}
 4a0:	00000084 	andeq	r0, r0, r4, lsl #1
 4a4:	01739c01 	cmneq	r3, r1, lsl #24
 4a8:	a50a0000 	strge	r0, [sl, #-0]
 4ac:	01000003 	tsteq	r0, r3
 4b0:	008f0b34 	addeq	r0, pc, r4, lsr fp	; <UNPREDICTABLE>
 4b4:	91020000 	mrsls	r0, (UNDEF: 2)
 4b8:	03ec0a64 	mvneq	r0, #100, 20	; 0x64000
 4bc:	39010000 	stmdbcc	r1, {}	; <UNPREDICTABLE>
 4c0:	0001730b 	andeq	r7, r1, fp, lsl #6
 4c4:	74910200 	ldrvc	r0, [r1], #512	; 0x200
 4c8:	0003e70a 	andeq	lr, r3, sl, lsl #14
 4cc:	0b3a0100 	bleq	e808d4 <vectors-0x717f72c>
 4d0:	00000173 	andeq	r0, r0, r3, ror r1
 4d4:	0b709102 	bleq	1c248e4 <vectors-0x63db71c>
 4d8:	0800023a 	stmdaeq	r0, {r1, r3, r4, r5, r9}
 4dc:	00000024 	andeq	r0, r0, r4, lsr #32
 4e0:	00000159 	andeq	r0, r0, r9, asr r1
 4e4:	0003fa0a 	andeq	pc, r3, sl, lsl #20
 4e8:	103d0100 	eorsne	r0, sp, r0, lsl #2
 4ec:	0000008f 	andeq	r0, r0, pc, lsl #1
 4f0:	006c9102 	rsbeq	r9, ip, r2, lsl #2
 4f4:	00026a0c 	andeq	r6, r2, ip, lsl #20
 4f8:	00001e08 	andeq	r1, r0, r8, lsl #28
 4fc:	03fa0a00 	mvnseq	r0, #0, 20
 500:	48010000 	stmdami	r1, {}	; <UNPREDICTABLE>
 504:	00008f10 	andeq	r8, r0, r0, lsl pc
 508:	68910200 	ldmvs	r1, {r9}
 50c:	040d0000 	streq	r0, [sp], #-0
 510:	00000083 	andeq	r0, r0, r3, lsl #1
	...

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
  38:	3e010405 	cdpcc	4, 0, cr0, cr1, cr5, {0}
  3c:	490b0b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp}
  40:	3b0b3a13 	blcc	2ce894 <vectors-0x7d3176c>
  44:	010b390b 	tsteq	fp, fp, lsl #18
  48:	06000013 			; <UNDEFINED> instruction: 0x06000013
  4c:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
  50:	00000b1c 	andeq	r0, r0, ip, lsl fp
  54:	03002807 	movweq	r2, #2055	; 0x807
  58:	000b1c08 	andeq	r1, fp, r8, lsl #24
  5c:	00340800 	eorseq	r0, r4, r0, lsl #16
  60:	0b3a0e03 	bleq	e83874 <vectors-0x717c78c>
  64:	0b390b3b 	bleq	e42d58 <vectors-0x71bd2a8>
  68:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
  6c:	00001802 	andeq	r1, r0, r2, lsl #16
  70:	0b000f09 	bleq	3c9c <vectors-0x7ffc364>
  74:	0013490b 	andseq	r4, r3, fp, lsl #18
  78:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
  7c:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  80:	0b3b0b3a 	bleq	ec2d70 <vectors-0x713d290>
  84:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  88:	06120111 			; <UNDEFINED> instruction: 0x06120111
  8c:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  90:	00130119 	andseq	r0, r3, r9, lsl r1
  94:	00050b00 	andeq	r0, r5, r0, lsl #22
  98:	0b3a0803 	bleq	e820ac <vectors-0x717df54>
  9c:	0b390b3b 	bleq	e42d90 <vectors-0x71bd270>
  a0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  a4:	050c0000 	streq	r0, [ip, #-0]
  a8:	3a0e0300 	bcc	380cb0 <vectors-0x7c7f350>
  ac:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  b0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b4:	0d000018 	stceq	0, cr0, [r0, #-96]	; 0xffffffa0
  b8:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  bc:	0b3a0e03 	bleq	e838d0 <vectors-0x717c730>
  c0:	0b390b3b 	bleq	e42db4 <vectors-0x71bd24c>
  c4:	13491927 	movtne	r1, #39207	; 0x9927
  c8:	06120111 			; <UNDEFINED> instruction: 0x06120111
  cc:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  d0:	00130119 	andseq	r0, r3, r9, lsl r1
  d4:	002e0e00 	eoreq	r0, lr, r0, lsl #28
  d8:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  dc:	0b3b0b3a 	bleq	ec2dcc <vectors-0x713d234>
  e0:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  e4:	06120111 			; <UNDEFINED> instruction: 0x06120111
  e8:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  ec:	00000019 	andeq	r0, r0, r9, lsl r0
  f0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
  f4:	030b130e 	movweq	r1, #45838	; 0xb30e
  f8:	110e1b0e 	tstne	lr, lr, lsl #22
  fc:	10061201 	andne	r1, r6, r1, lsl #4
 100:	02000017 	andeq	r0, r0, #23
 104:	0b0b0024 	bleq	2c019c <vectors-0x7d3fe64>
 108:	0e030b3e 	vmoveq.16	d3[0], r0
 10c:	24030000 	strcs	r0, [r3], #-0
 110:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 114:	0008030b 	andeq	r0, r8, fp, lsl #6
 118:	01040400 	tsteq	r4, r0, lsl #8
 11c:	0b0b0b3e 	bleq	2c2e1c <vectors-0x7d3d1e4>
 120:	0b3a1349 	bleq	e84e4c <vectors-0x717b1b4>
 124:	0b390b3b 	bleq	e42e18 <vectors-0x71bd1e8>
 128:	00001301 	andeq	r1, r0, r1, lsl #6
 12c:	03002805 	movweq	r2, #2053	; 0x805
 130:	000b1c08 	andeq	r1, fp, r8, lsl #24
 134:	00280600 	eoreq	r0, r8, r0, lsl #12
 138:	0b1c0e03 	bleq	70394c <vectors-0x78fc6b4>
 13c:	2e070000 	cdpcs	0, 0, cr0, cr7, cr0, {0}
 140:	03193f00 	tsteq	r9, #0, 30
 144:	3b0b3a0e 	blcc	2ce984 <vectors-0x7d3167c>
 148:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
 14c:	11134919 	tstne	r3, r9, lsl r9
 150:	40061201 	andmi	r1, r6, r1, lsl #4
 154:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 158:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
 15c:	03193f00 	tsteq	r9, #0, 30
 160:	3b0b3a0e 	blcc	2ce9a0 <vectors-0x7d31660>
 164:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
 168:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 16c:	96184006 	ldrls	r4, [r8], -r6
 170:	00001942 	andeq	r1, r0, r2, asr #18
 174:	01110100 	tsteq	r1, r0, lsl #2
 178:	0b130e25 	bleq	4c3a14 <vectors-0x7b3c5ec>
 17c:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 180:	06120111 			; <UNDEFINED> instruction: 0x06120111
 184:	00001710 	andeq	r1, r0, r0, lsl r7
 188:	0b002402 	bleq	9198 <vectors-0x7ff6e68>
 18c:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 190:	0300000e 	movweq	r0, #14
 194:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 198:	0b3b0b3a 	bleq	ec2e88 <vectors-0x713d178>
 19c:	13490b39 	movtne	r0, #39737	; 0x9b39
 1a0:	24040000 	strcs	r0, [r4], #-0
 1a4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 1a8:	0008030b 	andeq	r0, r8, fp, lsl #6
 1ac:	00340500 	eorseq	r0, r4, r0, lsl #10
 1b0:	0b3a0e03 	bleq	e839c4 <vectors-0x717c63c>
 1b4:	0b390b3b 	bleq	e42ea8 <vectors-0x71bd158>
 1b8:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
 1bc:	0000193c 	andeq	r1, r0, ip, lsr r9
 1c0:	49010106 	stmdbmi	r1, {r1, r2, r8}
 1c4:	00130113 	andseq	r0, r3, r3, lsl r1
 1c8:	00210700 	eoreq	r0, r1, r0, lsl #14
 1cc:	0b2f1349 	bleq	bc4ef8 <vectors-0x743b108>
 1d0:	34080000 	strcc	r0, [r8], #-0
 1d4:	3a0e0300 	bcc	380ddc <vectors-0x7c7f224>
 1d8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 1dc:	3f13490b 	svccc	0x0013490b
 1e0:	00180219 	andseq	r0, r8, r9, lsl r2
 1e4:	012e0900 			; <UNDEFINED> instruction: 0x012e0900
 1e8:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
 1ec:	0b3b0b3a 	bleq	ec2edc <vectors-0x713d124>
 1f0:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
 1f4:	06120111 			; <UNDEFINED> instruction: 0x06120111
 1f8:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 1fc:	00130119 	andseq	r0, r3, r9, lsl r1
 200:	00340a00 	eorseq	r0, r4, r0, lsl #20
 204:	0b3a0e03 	bleq	e83a18 <vectors-0x717c5e8>
 208:	0b390b3b 	bleq	e42efc <vectors-0x71bd104>
 20c:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 210:	0b0b0000 	bleq	2c0218 <vectors-0x7d3fde8>
 214:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 218:	00130106 	andseq	r0, r3, r6, lsl #2
 21c:	010b0c00 	tsteq	fp, r0, lsl #24
 220:	06120111 			; <UNDEFINED> instruction: 0x06120111
 224:	0f0d0000 	svceq	0x000d0000
 228:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 22c:	00000013 	andeq	r0, r0, r3, lsl r0

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000008 	stmdaeq	r0, {r3}
  14:	000001cc 	andeq	r0, r0, ip, asr #3
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	02bf0002 	adcseq	r0, pc, #2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080001d4 	stmdaeq	r0, {r2, r4, r6, r7, r8}
  34:	00000050 	andeq	r0, r0, r0, asr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	039b0002 	orrseq	r0, fp, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	08000224 	stmdaeq	r0, {r2, r5, r9}
  54:	00000084 	andeq	r0, r0, r4, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0000020f 	andeq	r0, r0, pc, lsl #4
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
 100:	1b05010d 	blne	14053c <vectors-0x7ebfac4>
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
 20c:	0a022601 	beq	89a18 <vectors-0x7f765e8>
 210:	71010100 	mrsvc	r0, (UNDEF: 17)
 214:	03000000 	movweq	r0, #0
 218:	00003600 	andeq	r3, r0, r0, lsl #12
 21c:	fb010200 	blx	40a26 <vectors-0x7fbf5da>
 220:	01000d0e 	tsteq	r0, lr, lsl #26
 224:	00010101 	andeq	r0, r1, r1, lsl #2
 228:	00010000 	andeq	r0, r1, r0
 22c:	72730100 	rsbsvc	r0, r3, #0, 2
 230:	6d000063 	stcvs	0, cr0, [r0, #-396]	; 0xfffffe74
 234:	2e6e6961 	vnmulcs.f16	s13, s28, s3	; <UNPREDICTABLE>
 238:	00010063 	andeq	r0, r1, r3, rrx
 23c:	6e696d00 	cdpvs	13, 6, cr6, cr9, cr0, {0}
 240:	6c616d69 	stclvs	13, cr6, [r1], #-420	; 0xfffffe5c
 244:	6472615f 	ldrbtvs	r6, [r2], #-351	; 0xfffffea1
 248:	6f6e6975 	svcvs	0x006e6975
 24c:	0100682e 	tsteq	r0, lr, lsr #16
 250:	05000000 	streq	r0, [r0, #-0]
 254:	02050001 	andeq	r0, r5, #1
 258:	080001d4 	stmdaeq	r0, {r2, r4, r6, r7, r8}
 25c:	2f050517 	svccs	0x00050517
 260:	4b01054b 	blmi	41794 <vectors-0x7fbe86c>
 264:	2f110532 	svccs	0x00110532
 268:	054a0805 	strbeq	r0, [sl, #-2053]	; 0xfffff7fb
 26c:	01053009 	tsteq	r5, r9
 270:	1e090550 	cfrshl32ne	mvfx9, mvfx0, r0
 274:	344c0105 	strbcc	r0, [ip], #-261	; 0xfffffefb
 278:	31300505 	teqcc	r0, r5, lsl #10
 27c:	02000905 	andeq	r0, r0, #81920	; 0x14000
 280:	02330104 	eorseq	r0, r3, #4, 2
 284:	01010003 	tsteq	r1, r3
 288:	00000149 	andeq	r0, r0, r9, asr #2
 28c:	00c30003 	sbceq	r0, r3, r3
 290:	01020000 	mrseq	r0, (UNDEF: 2)
 294:	000d0efb 	strdeq	r0, [sp], -fp
 298:	01010101 	tsteq	r1, r1, lsl #2
 29c:	01000000 	mrseq	r0, (UNDEF: 0)
 2a0:	73010000 	movwvc	r0, #4096	; 0x1000
 2a4:	64006372 	strvs	r6, [r0], #-882	; 0xfffffc8e
 2a8:	77735c3a 			; <UNDEFINED> instruction: 0x77735c3a
 2ac:	615c385f 	cmpvs	ip, pc, asr r8
 2b0:	675f6d72 			; <UNDEFINED> instruction: 0x675f6d72
 2b4:	315f6363 	cmpcc	pc, r3, ror #6
 2b8:	5c332e30 	ldcpl	14, cr2, [r3], #-192	; 0xffffff40
 2bc:	32203031 	eorcc	r3, r0, #49	; 0x31
 2c0:	2e313230 	mrccs	2, 1, r3, cr1, cr0, {1}
 2c4:	615c3031 	cmpvs	ip, r1, lsr r0
 2c8:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 2cc:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 2d0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 2d4:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
 2d8:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 2dc:	63616d5c 	cmnvs	r1, #92, 26	; 0x1700
 2e0:	656e6968 	strbvs	r6, [lr, #-2408]!	; 0xfffff698
 2e4:	5c3a6400 	cfldrspl	mvf6, [sl], #-0
 2e8:	385f7773 	ldmdacc	pc, {r0, r1, r4, r5, r6, r8, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
 2ec:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
 2f0:	6363675f 	cmnvs	r3, #24903680	; 0x17c0000
 2f4:	2e30315f 	mrccs	1, 1, r3, cr0, cr15, {2}
 2f8:	30315c33 	eorscc	r5, r1, r3, lsr ip
 2fc:	32303220 	eorscc	r3, r0, #32, 4
 300:	30312e31 	eorscc	r2, r1, r1, lsr lr
 304:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
 308:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 30c:	61652d65 	cmnvs	r5, r5, ror #26
 310:	695c6962 	ldmdbvs	ip, {r1, r5, r6, r8, fp, sp, lr}^
 314:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 318:	735c6564 	cmpvc	ip, #100, 10	; 0x19000000
 31c:	00007379 	andeq	r7, r0, r9, ror r3
 320:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
 324:	74735f32 	ldrbtvc	r5, [r3], #-3890	; 0xfffff0ce
 328:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0xfffffd9f
 32c:	00632e70 	rsbeq	r2, r3, r0, ror lr
 330:	5f000001 	svcpl	0x00000001
 334:	61666564 	cmnvs	r6, r4, ror #10
 338:	5f746c75 	svcpl	0x00746c75
 33c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 340:	00682e73 	rsbeq	r2, r8, r3, ror lr
 344:	5f000002 	svcpl	0x00000002
 348:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 34c:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 350:	00000300 	andeq	r0, r0, r0, lsl #6
 354:	001d0500 	andseq	r0, sp, r0, lsl #10
 358:	02240205 	eoreq	r0, r4, #1342177280	; 0x50000000
 35c:	30030800 	andcc	r0, r3, r0, lsl #16
 360:	3f180501 	svccc	0x00180501
 364:	05202c05 	streq	r2, [r0, #-3077]!	; 0xfffff3fb
 368:	2f33200b 	svccs	0x0033200b
 36c:	05311005 	ldreq	r1, [r1, #-5]!
 370:	12052e02 	andne	r2, r5, #2, 28
 374:	03040200 	movweq	r0, #16896	; 0x4200
 378:	00080521 	andeq	r0, r8, r1, lsr #10
 37c:	3c030402 	cfstrscc	mvf0, [r3], {2}
 380:	02000d05 	andeq	r0, r0, #320	; 0x140
 384:	053c0304 	ldreq	r0, [ip, #-772]!	; 0xfffffcfc
 388:	0402000b 	streq	r0, [r2], #-11
 38c:	31052003 	tstcc	r5, r3
 390:	03040200 	movweq	r0, #16896	; 0x4200
 394:	0002051f 	andeq	r0, r2, pc, lsl r5
 398:	3c010402 	cfstrscc	mvf0, [r1], {2}
 39c:	054f0f05 	strbeq	r0, [pc, #-3845]	; fffff49f <__bss_end__+0xdffff493>
 3a0:	0d052022 	stceq	0, cr2, [r5, #-136]	; 0xffffff78
 3a4:	31070520 	tstcc	r7, r0, lsr #10
 3a8:	05311005 	ldreq	r1, [r1, #-5]!
 3ac:	08052e02 	stmdaeq	r5, {r1, r9, sl, fp, sp}
 3b0:	03040200 	movweq	r0, #16896	; 0x4200
 3b4:	000b0521 	andeq	r0, fp, r1, lsr #10
 3b8:	3c030402 	cfstrscc	mvf0, [r3], {2}
 3bc:	02003105 	andeq	r3, r0, #1073741825	; 0x40000001
 3c0:	052d0304 	streq	r0, [sp, #-772]!	; 0xfffffcfc
 3c4:	04020002 	streq	r0, [r2], #-2
 3c8:	09033c01 	stmdbeq	r3, {r0, sl, fp, ip, sp}
 3cc:	3001054a 	andcc	r0, r1, sl, asr #10
 3d0:	01000e02 	tsteq	r0, r2, lsl #28
 3d4:	Address 0x000003d4 is out of bounds.


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
  78:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  7c:	5c73736f 	ldclpl	3, cr7, [r3], #-444	; 0xfffffe44
  80:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  84:	75622d32 	strbvc	r2, [r2, #-3378]!	; 0xfffff2ce
  88:	6e6f7474 	mcrvs	4, 3, r7, cr15, cr4, {3}
  8c:	696c622d 	stmdbvs	ip!, {r0, r2, r3, r5, r9, sp, lr}^
  90:	2d796b6e 	vldmdbcs	r9!, {d22-<overflow reg d76>}
  94:	722d6f6e 	eorvc	r6, sp, #440	; 0x1b8
  98:	615c6d61 	cmpvs	ip, r1, ror #26
  9c:	69756472 	ldmdbvs	r5!, {r1, r4, r5, r6, sl, sp, lr}^
  a0:	625f6f6e 	subsvs	r6, pc, #440	; 0x1b8
  a4:	6f747475 	svcvs	0x00747475
  a8:	6c625f6e 	stclvs	15, cr5, [r2], #-440	; 0xfffffe48
  ac:	796b6e69 	stmdbvc	fp!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  b0:	0030305f 	eorseq	r3, r0, pc, asr r0
  b4:	4f495047 	svcmi	0x00495047
  b8:	52505f41 	subspl	r5, r0, #260	; 0x104
  bc:	5f004850 	svcpl	0x00004850
  c0:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
  c4:	5f323374 	svcpl	0x00323374
  c8:	6f6d0074 	svcvs	0x006d0074
  cc:	52006564 	andpl	r6, r0, #100, 10	; 0x19000000
  d0:	415f4343 	cmpmi	pc, r3, asr #6
  d4:	52334248 	eorspl	r4, r3, #72, 4	; 0x80000004
  d8:	00525453 	subseq	r5, r2, r3, asr r4
  dc:	5f434352 	svcpl	0x00434352
  e0:	32425041 	subcc	r5, r2, #65	; 0x41
  e4:	00524e45 	subseq	r4, r2, r5, asr #28
  e8:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
  ec:	43520065 	cmpmi	r2, #101	; 0x65
  f0:	50415f43 	subpl	r5, r1, r3, asr #30
  f4:	53523242 	cmppl	r2, #536870916	; 0x20000004
  f8:	52005254 	andpl	r5, r0, #84, 4	; 0x40000005
  fc:	415f4343 	cmpmi	pc, r3, asr #6
 100:	45324248 	ldrmi	r4, [r2, #-584]!	; 0xfffffdb8
 104:	4700524e 	strmi	r5, [r0, -lr, asr #4]
 108:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 10c:	52444f5f 	subpl	r4, r4, #380	; 0x17c
 110:	43435200 	movtmi	r5, #12800	; 0x3200
 114:	4c4c505f 	mcrrmi	0, 5, r5, ip, cr15
 118:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
 11c:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 120:	505f444f 	subspl	r4, pc, pc, asr #8
 124:	00485052 	subeq	r5, r8, r2, asr r0
 128:	5f434352 	svcpl	0x00434352
 12c:	31425041 	cmpcc	r2, r1, asr #32
 130:	52545352 	subspl	r5, r4, #1207959553	; 0x48000001
 134:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 138:	6f6c2067 	svcvs	0x006c2067
 13c:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
 140:	5200746e 	andpl	r7, r0, #1845493760	; 0x6e000000
 144:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 148:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 14c:	43520031 	cmpmi	r2, #49	; 0x31
 150:	53525f43 	cmppl	r2, #268	; 0x10c
 154:	32445652 	subcc	r5, r4, #85983232	; 0x5200000
 158:	43435200 	movtmi	r5, #12800	; 0x3200
 15c:	0052435f 	subseq	r4, r2, pc, asr r3
 160:	5f434352 	svcpl	0x00434352
 164:	56525352 			; <UNDEFINED> instruction: 0x56525352
 168:	52003444 	andpl	r3, r0, #68, 8	; 0x44000000
 16c:	525f4343 	subspl	r4, pc, #201326593	; 0xc000001
 170:	44565253 	ldrbmi	r5, [r6], #-595	; 0xfffffdad
 174:	43520035 	cmpmi	r2, #53	; 0x35
 178:	53525f43 	cmppl	r2, #268	; 0x10c
 17c:	36445652 			; <UNDEFINED> instruction: 0x36445652
 180:	43435200 	movtmi	r5, #12800	; 0x3200
 184:	5253525f 	subspl	r5, r3, #-268435451	; 0xf0000005
 188:	00374456 	eorseq	r4, r7, r6, asr r4
 18c:	5f434352 	svcpl	0x00434352
 190:	56525352 			; <UNDEFINED> instruction: 0x56525352
 194:	52003944 	andpl	r3, r0, #68, 18	; 0x110000
 198:	435f4343 	cmpmi	pc, #201326593	; 0xc000001
 19c:	5f005253 	svcpl	0x00005253
 1a0:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
 1a4:	745f3874 	ldrbvc	r3, [pc], #-2164	; 1ac <vectors-0x7fffe54>
 1a8:	43435200 	movtmi	r5, #12800	; 0x3200
 1ac:	4353535f 	cmpmi	r3, #2080374785	; 0x7c000001
 1b0:	52005247 	andpl	r5, r0, #1879048196	; 0x70000004
 1b4:	505f4343 	subspl	r4, pc, r3, asr #6
 1b8:	00485052 	subeq	r5, r8, r2, asr r0
 1bc:	4f495047 	svcmi	0x00495047
 1c0:	55505f78 	ldrbpl	r5, [r0, #-3960]	; 0xfffff088
 1c4:	00524450 	subseq	r4, r2, r0, asr r4
 1c8:	5f434352 	svcpl	0x00434352
 1cc:	31424841 	cmpcc	r2, r1, asr #16
 1d0:	52545352 	subspl	r5, r4, #1207959553	; 0x48000001
 1d4:	736e7500 	cmnvc	lr, #0, 10
 1d8:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 1dc:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
 1e0:	47007261 	strmi	r7, [r0, -r1, ror #4]
 1e4:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 1e8:	444f4d5f 	strbmi	r4, [pc], #-3423	; 1f0 <vectors-0x7fffe10>
 1ec:	52005245 	andpl	r5, r0, #1342177284	; 0x50000004
 1f0:	415f4343 	cmpmi	pc, r3, asr #6
 1f4:	45334248 	ldrmi	r4, [r3, #-584]!	; 0xfffffdb8
 1f8:	5200524e 	andpl	r5, r0, #-536870908	; 0xe0000004
 1fc:	415f4343 	cmpmi	pc, r3, asr #6
 200:	4c314250 	lfmmi	f4, 4, [r1], #-320	; 0xfffffec0
 204:	524e4550 	subpl	r4, lr, #80, 10	; 0x14000000
 208:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 20c:	6f6c2067 	svcvs	0x006c2067
 210:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
 214:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
 218:	2064656e 	rsbcs	r6, r4, lr, ror #10
 21c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 220:	5f434352 	svcpl	0x00434352
 224:	494c4c50 	stmdbmi	ip, {r4, r6, sl, fp, lr}^
 228:	46435332 			; <UNDEFINED> instruction: 0x46435332
 22c:	47005247 	strmi	r5, [r0, -r7, asr #4]
 230:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 234:	5246415f 	subpl	r4, r6, #-1073741801	; 0xc0000017
 238:	43520048 	cmpmi	r2, #72	; 0x48
 23c:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
 240:	504c3242 	subpl	r3, ip, r2, asr #4
 244:	00524e45 	subseq	r4, r2, r5, asr #28
 248:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 24c:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
 250:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 254:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
 258:	4700746e 	strmi	r7, [r0, -lr, ror #8]
 25c:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
 260:	31203731 			; <UNDEFINED> instruction: 0x31203731
 264:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
 268:	30322031 	eorscc	r2, r2, r1, lsr r0
 26c:	38303132 	ldmdacc	r0!, {r1, r4, r5, r8, ip, sp}
 270:	28203432 	stmdacs	r0!, {r1, r4, r5, sl, ip, sp}
 274:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
 278:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 27c:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
 280:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 284:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 288:	346d2d78 	strbtcc	r2, [sp], #-3448	; 0xfffff288
 28c:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 290:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 294:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
 298:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 29c:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
 2a0:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
 2a4:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
 2a8:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
 2ac:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 2b0:	2d653776 	stclcs	7, cr3, [r5, #-472]!	; 0xfffffe28
 2b4:	672d206d 	strvs	r2, [sp, -sp, rrx]!
 2b8:	304f2d20 	subcc	r2, pc, r0, lsr #26
 2bc:	63727300 	cmnvs	r2, #0, 6
 2c0:	6e696d2f 	cdpvs	13, 6, cr6, cr9, cr15, {1}
 2c4:	6c616d69 	stclvs	13, cr6, [r1], #-420	; 0xfffffe5c
 2c8:	6472615f 	ldrbtvs	r6, [r2], #-351	; 0xfffffea1
 2cc:	6f6e6975 	svcvs	0x006e6975
 2d0:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
 2d4:	784f4950 	stmdavc	pc, {r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 2d8:	50534f5f 	subspl	r4, r3, pc, asr pc
 2dc:	52444545 	subpl	r4, r4, #289406976	; 0x11400000
 2e0:	43435200 	movtmi	r5, #12800	; 0x3200
 2e4:	5249435f 	subpl	r4, r9, #2080374785	; 0x7c000001
 2e8:	67696400 	strbvs	r6, [r9, -r0, lsl #8]!
 2ec:	6c617469 	cfstrdvs	mvd7, [r1], #-420	; 0xfffffe5c
 2f0:	74697257 	strbtvc	r7, [r9], #-599	; 0xfffffda9
 2f4:	50470065 	subpl	r0, r7, r5, rrx
 2f8:	5f784f49 	svcpl	0x00784f49
 2fc:	524b434c 	subpl	r4, fp, #76, 6	; 0x30000001
 300:	67696400 	strbvs	r6, [r9, -r0, lsl #8]!
 304:	6c617469 	cfstrdvs	mvd7, [r1], #-420	; 0xfffffe5c
 308:	64616552 	strbtvs	r6, [r1], #-1362	; 0xfffffaae
 30c:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 310:	425f784f 	subsmi	r7, pc, #5177344	; 0x4f0000
 314:	00525253 	subseq	r5, r2, r3, asr r2
 318:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
 31c:	6f697047 	svcvs	0x00697047
 320:	43435200 	movtmi	r5, #12800	; 0x3200
 324:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
 328:	54535232 	ldrbpl	r5, [r3], #-562	; 0xfffffdce
 32c:	43520052 	cmpmi	r2, #82	; 0x52
 330:	50415f43 	subpl	r5, r1, r3, asr #30
 334:	504c3242 	subpl	r3, ip, r2, asr #4
 338:	00524e45 	subseq	r4, r2, r5, asr #28
 33c:	4f495047 	svcmi	0x00495047
 340:	544f5f78 	strbpl	r5, [pc], #-3960	; 348 <vectors-0x7fffcb8>
 344:	52455059 	subpl	r5, r5, #89	; 0x59
 348:	43435200 	movtmi	r5, #12800	; 0x3200
 34c:	4250415f 	subsmi	r4, r0, #-1073741801	; 0xc0000017
 350:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
 354:	47494800 	strbmi	r4, [r9, -r0, lsl #16]
 358:	50470048 	subpl	r0, r7, r8, asr #32
 35c:	5f784f49 	svcpl	0x00784f49
 360:	00524449 	subseq	r4, r2, r9, asr #8
 364:	5f434352 	svcpl	0x00434352
 368:	31424841 	cmpcc	r2, r1, asr #16
 36c:	00524e45 	subseq	r4, r2, r5, asr #28
 370:	75746573 	ldrbvc	r6, [r4, #-1395]!	; 0xfffffa8d
 374:	6f6c0070 	svcvs	0x006c0070
 378:	4900706f 	stmdbmi	r0, {r0, r1, r2, r3, r5, r6, ip, sp, lr}
 37c:	5455504e 	ldrbpl	r5, [r5], #-78	; 0xffffffb2
 380:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
 384:	7273006e 	rsbsvc	r0, r3, #110	; 0x6e
 388:	616d2f63 	cmnvs	sp, r3, ror #30
 38c:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
 390:	54554f00 	ldrbpl	r4, [r5], #-3840	; 0xfffff100
 394:	00545550 	subseq	r5, r4, r0, asr r5
 398:	6164735f 	cmnvs	r4, pc, asr r3
 39c:	5f006174 	svcpl	0x00006174
 3a0:	73736265 	cmnvc	r3, #1342177286	; 0x50000006
 3a4:	7a697300 	bvc	1a5cfac <vectors-0x65a3054>
 3a8:	79625f65 	stmdbvc	r2!, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
 3ac:	00736574 	rsbseq	r6, r3, r4, ror r5
 3b0:	2f637273 	svccs	0x00637273
 3b4:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
 3b8:	74735f32 	ldrbtvc	r5, [r3], #-3890	; 0xfffff0ce
 3bc:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0xfffffd9f
 3c0:	00632e70 	rsbeq	r2, r3, r0, ror lr
 3c4:	65736552 	ldrbvs	r6, [r3, #-1362]!	; 0xfffffaae
 3c8:	61485f74 	hvcvs	34292	; 0x85f4
 3cc:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 3d0:	655f0072 	ldrbvs	r0, [pc, #-114]	; 366 <vectors-0x7fffc9a>
 3d4:	61746164 	cmnvs	r4, r4, ror #2
 3d8:	63657600 	cmnvs	r5, #0, 12
 3dc:	73726f74 	cmnvc	r2, #116, 30	; 0x1d0
 3e0:	62735f00 	rsbsvs	r5, r3, #0, 30
 3e4:	70007373 	andvc	r7, r0, r3, ror r3
 3e8:	00435253 	subeq	r5, r3, r3, asr r2
 3ec:	74734470 	ldrbtvc	r4, [r3], #-1136	; 0xfffffb90
 3f0:	616c5f00 	cmnvs	ip, r0, lsl #30
 3f4:	7461645f 	strbtvc	r6, [r1], #-1119	; 0xfffffba1
 3f8:	6e430061 	cdpvs	0, 4, cr0, cr3, cr1, {3}
 3fc:	Address 0x000003fc is out of bounds.


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
  a8:	0000000c 	andeq	r0, r0, ip
  ac:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  b0:	7c020001 	stcvc	0, cr0, [r2], {1}
  b4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  b8:	00000018 	andeq	r0, r0, r8, lsl r0
  bc:	000000a8 	andeq	r0, r0, r8, lsr #1
  c0:	080001d4 	stmdaeq	r0, {r2, r4, r6, r7, r8}
  c4:	00000018 	andeq	r0, r0, r8, lsl r0
  c8:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  cc:	41018e02 	tstmi	r1, r2, lsl #28
  d0:	0000070d 	andeq	r0, r0, sp, lsl #14
  d4:	00000018 	andeq	r0, r0, r8, lsl r0
  d8:	000000a8 	andeq	r0, r0, r8, lsr #1
  dc:	080001ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8}
  e0:	00000026 	andeq	r0, r0, r6, lsr #32
  e4:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  e8:	41018e02 	tstmi	r1, r2, lsl #28
  ec:	0000070d 	andeq	r0, r0, sp, lsl #14
  f0:	00000018 	andeq	r0, r0, r8, lsl r0
  f4:	000000a8 	andeq	r0, r0, r8, lsr #1
  f8:	08000212 	stmdaeq	r0, {r1, r4, r9}
  fc:	00000012 	andeq	r0, r0, r2, lsl r0
 100:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 104:	41018e02 	tstmi	r1, r2, lsl #28
 108:	0000070d 	andeq	r0, r0, sp, lsl #14
 10c:	0000000c 	andeq	r0, r0, ip
 110:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 114:	7c020001 	stcvc	0, cr0, [r2], {1}
 118:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 11c:	00000020 	andeq	r0, r0, r0, lsr #32
 120:	0000010c 	andeq	r0, r0, ip, lsl #2
 124:	08000224 	stmdaeq	r0, {r2, r5, r9}
 128:	00000084 	andeq	r0, r0, r4, lsl #1
 12c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 130:	41018e02 	tstmi	r1, r2, lsl #28
 134:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
 138:	080e7307 	stmdaeq	lr, {r0, r1, r2, r8, r9, ip, sp, lr}
 13c:	000d0d41 	andeq	r0, sp, r1, asr #26
