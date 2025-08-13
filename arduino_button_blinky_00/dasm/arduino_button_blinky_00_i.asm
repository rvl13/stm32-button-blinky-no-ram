
obj/arduino_button_blinky_00.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	00 00 02 20 25 02 00 08                             ... %...

08000008 <initGpio>:
uint32_t *RCC_PRPH = (uint32_t *)RCC_BASE_ADDR;
uint32_t *GPIOA_PRPH = (uint32_t *)GPIOA_BASE_ADDR;
uint32_t *GPIOD_PRPH = (uint32_t *)GPIOD_BASE_ADDR;

void initGpio(void)
{
 8000008:	b480      	push	{r7}
 800000a:	af00      	add	r7, sp, #0
    // enable clock for GPIOA(Bit 0) and GPIOD(Bit 3)
    RCC_PRPH[RCC_AHB1ENR] |= (1 << 3) | (1 << 0);
 800000c:	4b06      	ldr	r3, [pc, #24]	; (8000028 <initGpio+0x20>)
 800000e:	681b      	ldr	r3, [r3, #0]
 8000010:	3330      	adds	r3, #48	; 0x30
 8000012:	681a      	ldr	r2, [r3, #0]
 8000014:	4b04      	ldr	r3, [pc, #16]	; (8000028 <initGpio+0x20>)
 8000016:	681b      	ldr	r3, [r3, #0]
 8000018:	3330      	adds	r3, #48	; 0x30
 800001a:	f042 0209 	orr.w	r2, r2, #9
 800001e:	601a      	str	r2, [r3, #0]
}
 8000020:	bf00      	nop
 8000022:	46bd      	mov	sp, r7
 8000024:	bc80      	pop	{r7}
 8000026:	4770      	bx	lr
 8000028:	20000000 	.word	0x20000000

0800002c <pinMode>:

// pinmode, first clear the both bits for given gpio pin and and set the required bits
void pinMode(uint8_t pin, uint8_t mode)
{
 800002c:	b480      	push	{r7}
 800002e:	b083      	sub	sp, #12
 8000030:	af00      	add	r7, sp, #0
 8000032:	4603      	mov	r3, r0
 8000034:	460a      	mov	r2, r1
 8000036:	71fb      	strb	r3, [r7, #7]
 8000038:	4613      	mov	r3, r2
 800003a:	71bb      	strb	r3, [r7, #6]
    switch (pin)
 800003c:	79fb      	ldrb	r3, [r7, #7]
 800003e:	2b00      	cmp	r3, #0
 8000040:	d002      	beq.n	8000048 <pinMode+0x1c>
 8000042:	2b0e      	cmp	r3, #14
 8000044:	d016      	beq.n	8000074 <pinMode+0x48>
            GPIOD_PRPH[GPIOx_MODER] = (GPIOD_PRPH[GPIOx_MODER] & ~(3U << (2*pin))) | ((mode & 3U) << (2*pin));
            break;

        default:
            //! nothing to do if incorrect pin specified
            break;
 8000046:	e02b      	b.n	80000a0 <pinMode+0x74>
            GPIOA_PRPH[GPIOx_MODER] = (GPIOA_PRPH[GPIOx_MODER] & ~(3U << (2*pin))) | ((mode & 3U) << (2*pin));
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
            break;
 8000072:	e015      	b.n	80000a0 <pinMode+0x74>
            GPIOD_PRPH[GPIOx_MODER] = (GPIOD_PRPH[GPIOx_MODER] & ~(3U << (2*pin))) | ((mode & 3U) << (2*pin));
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
            break;
 800009e:	bf00      	nop
    }
}
 80000a0:	bf00      	nop
 80000a2:	370c      	adds	r7, #12
 80000a4:	46bd      	mov	sp, r7
 80000a6:	bc80      	pop	{r7}
 80000a8:	4770      	bx	lr
 80000aa:	bf00      	nop
 80000ac:	20000004 	.word	0x20000004
 80000b0:	20000008 	.word	0x20000008

080000b4 <digitalRead>:

// digitalRead, read the IDR and bitwise & it with bit for given pin number
uint8_t digitalRead(uint8_t pin)
{
 80000b4:	b480      	push	{r7}
 80000b6:	b083      	sub	sp, #12
 80000b8:	af00      	add	r7, sp, #0
 80000ba:	4603      	mov	r3, r0
 80000bc:	71fb      	strb	r3, [r7, #7]
    switch (pin)
 80000be:	79fb      	ldrb	r3, [r7, #7]
 80000c0:	2b00      	cmp	r3, #0
 80000c2:	d002      	beq.n	80000ca <digitalRead+0x16>
 80000c4:	2b0e      	cmp	r3, #14
 80000c6:	d00f      	beq.n	80000e8 <digitalRead+0x34>
 80000c8:	e01d      	b.n	8000106 <digitalRead+0x52>
    {
        case PUSH_BTN:
            return ( (0 != (GPIOA_PRPH[GPIOx_IDR] & (1 << pin))) ? (uint8_t)HIGH : (uint8_t)LOW );
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
            break;

        case LED_RED:
            return ( (0 != (GPIOD_PRPH[GPIOx_IDR] & (1 << pin))) ? (uint8_t)HIGH : (uint8_t)LOW );
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
            break;

        default:
            //! nothing to do if incorrect pin specified, just return LOW
            return LOW;
 8000106:	2300      	movs	r3, #0
            break;
    }
}
 8000108:	4618      	mov	r0, r3
 800010a:	370c      	adds	r7, #12
 800010c:	46bd      	mov	sp, r7
 800010e:	bc80      	pop	{r7}
 8000110:	4770      	bx	lr
 8000112:	bf00      	nop
 8000114:	20000004 	.word	0x20000004
 8000118:	20000008 	.word	0x20000008

0800011c <digitalWrite>:

// digitalRead, read ODR and then set/clear the bit for given pin number
void digitalWrite(uint8_t pin, uint8_t value)
{
 800011c:	b480      	push	{r7}
 800011e:	b083      	sub	sp, #12
 8000120:	af00      	add	r7, sp, #0
 8000122:	4603      	mov	r3, r0
 8000124:	460a      	mov	r2, r1
 8000126:	71fb      	strb	r3, [r7, #7]
 8000128:	4613      	mov	r3, r2
 800012a:	71bb      	strb	r3, [r7, #6]
    switch (pin)
 800012c:	79fb      	ldrb	r3, [r7, #7]
 800012e:	2b00      	cmp	r3, #0
 8000130:	d002      	beq.n	8000138 <digitalWrite+0x1c>
 8000132:	2b0e      	cmp	r3, #14
 8000134:	d022      	beq.n	800017c <digitalWrite+0x60>
            ((uint8_t)HIGH == value) ? (GPIOD_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOD_PRPH[GPIOx_ODR] &= ~(1 << pin));
            break;

        default:
            //! nothing to do if incorrect pin specified
            break;
 8000136:	e043      	b.n	80001c0 <digitalWrite+0xa4>
            ((uint8_t)HIGH == value) ? (GPIOA_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOA_PRPH[GPIOx_ODR] &= ~(1 << pin));
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
            break;
 800015a:	e031      	b.n	80001c0 <digitalWrite+0xa4>
            ((uint8_t)HIGH == value) ? (GPIOA_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOA_PRPH[GPIOx_ODR] &= ~(1 << pin));
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
            break;
 800017a:	e021      	b.n	80001c0 <digitalWrite+0xa4>
            ((uint8_t)HIGH == value) ? (GPIOD_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOD_PRPH[GPIOx_ODR] &= ~(1 << pin));
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
            break;
 800019e:	e00e      	b.n	80001be <digitalWrite+0xa2>
            ((uint8_t)HIGH == value) ? (GPIOD_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOD_PRPH[GPIOx_ODR] &= ~(1 << pin));
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
            break;
 80001be:	bf00      	nop
    }
}
 80001c0:	bf00      	nop
 80001c2:	370c      	adds	r7, #12
 80001c4:	46bd      	mov	sp, r7
 80001c6:	bc80      	pop	{r7}
 80001c8:	4770      	bx	lr
 80001ca:	bf00      	nop
 80001cc:	20000004 	.word	0x20000004
 80001d0:	20000008 	.word	0x20000008

080001d4 <setup>:
#include <stdint.h>
#include "minimal_arduino.h"

// arduino setup function
void setup(void)
{
 80001d4:	b580      	push	{r7, lr}
 80001d6:	af00      	add	r7, sp, #0
    pinMode(PUSH_BTN, INPUT);
 80001d8:	2100      	movs	r1, #0
 80001da:	2000      	movs	r0, #0
 80001dc:	f7ff ff26 	bl	800002c <pinMode>
    pinMode(LED_RED, OUTPUT);
 80001e0:	2101      	movs	r1, #1
 80001e2:	200e      	movs	r0, #14
 80001e4:	f7ff ff22 	bl	800002c <pinMode>
}
 80001e8:	bf00      	nop
 80001ea:	bd80      	pop	{r7, pc}

080001ec <loop>:

// arduino loop function
void loop(void)
{
 80001ec:	b580      	push	{r7, lr}
 80001ee:	af00      	add	r7, sp, #0
    if (HIGH == digitalRead(PUSH_BTN))
 80001f0:	2000      	movs	r0, #0
 80001f2:	f7ff ff5f 	bl	80000b4 <digitalRead>
 80001f6:	4603      	mov	r3, r0
 80001f8:	2b01      	cmp	r3, #1
 80001fa:	d104      	bne.n	8000206 <loop+0x1a>
    {
        digitalWrite(LED_RED, HIGH);
 80001fc:	2101      	movs	r1, #1
 80001fe:	200e      	movs	r0, #14
 8000200:	f7ff ff8c 	bl	800011c <digitalWrite>
    }
    else
    {
        digitalWrite(LED_RED, LOW);
    }
}
 8000204:	e003      	b.n	800020e <loop+0x22>
        digitalWrite(LED_RED, LOW);
 8000206:	2100      	movs	r1, #0
 8000208:	200e      	movs	r0, #14
 800020a:	f7ff ff87 	bl	800011c <digitalWrite>
}
 800020e:	bf00      	nop
 8000210:	bd80      	pop	{r7, pc}

08000212 <main>:

// arduino's main function looks something similar to below.
// just that it stays hidden in main.cpp file separate from the 
// .ino sketch file
int main(void)
{
 8000212:	b580      	push	{r7, lr}
 8000214:	af00      	add	r7, sp, #0
    // initialize the required clocks
    initGpio();
 8000216:	f7ff fef7 	bl	8000008 <initGpio>

    // setup is called only once
    setup();
 800021a:	f7ff ffdb 	bl	80001d4 <setup>

    while (1)
    {
        // loop is called infinitely
        loop();
 800021e:	f7ff ffe5 	bl	80001ec <loop>
 8000222:	e7fc      	b.n	800021e <main+0xc>

08000224 <Reset_Handler>:
    STACK_START,
    (uint32_t)&Reset_Handler
};


void Reset_Handler(void)    {
 8000224:	b580      	push	{r7, lr}
 8000226:	b086      	sub	sp, #24
 8000228:	af00      	add	r7, sp, #0

	// compute the size of .data section 
	uint32_t size_bytes = (uint32_t)&_edata - (uint32_t)&_sdata;
 800022a:	4a1a      	ldr	r2, [pc, #104]	; (8000294 <Reset_Handler+0x70>)
 800022c:	4b1a      	ldr	r3, [pc, #104]	; (8000298 <Reset_Handler+0x74>)
 800022e:	1ad3      	subs	r3, r2, r3
 8000230:	607b      	str	r3, [r7, #4]

	// we are declaring the pointer with uint8_t type
	// because we intend to copy the data byte by byte
	// and not word by word
	uint8_t *pDst = (uint8_t *) &_sdata;		//SRAM
 8000232:	4b19      	ldr	r3, [pc, #100]	; (8000298 <Reset_Handler+0x74>)
 8000234:	617b      	str	r3, [r7, #20]
	uint8_t *pSRC = (uint8_t *) &_la_data;		//Flash
 8000236:	4b19      	ldr	r3, [pc, #100]	; (800029c <Reset_Handler+0x78>)
 8000238:	613b      	str	r3, [r7, #16]

    //copy .data section from ROM(Flash) to SRAM, byte by byte
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 800023a:	2300      	movs	r3, #0
 800023c:	60fb      	str	r3, [r7, #12]
 800023e:	e00a      	b.n	8000256 <Reset_Handler+0x32>
		*pDst++ = *pSRC++;
 8000240:	693a      	ldr	r2, [r7, #16]
 8000242:	1c53      	adds	r3, r2, #1
 8000244:	613b      	str	r3, [r7, #16]
 8000246:	697b      	ldr	r3, [r7, #20]
 8000248:	1c59      	adds	r1, r3, #1
 800024a:	6179      	str	r1, [r7, #20]
 800024c:	7812      	ldrb	r2, [r2, #0]
 800024e:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 8000250:	68fb      	ldr	r3, [r7, #12]
 8000252:	3301      	adds	r3, #1
 8000254:	60fb      	str	r3, [r7, #12]
 8000256:	68fa      	ldr	r2, [r7, #12]
 8000258:	687b      	ldr	r3, [r7, #4]
 800025a:	429a      	cmp	r2, r3
 800025c:	d3f0      	bcc.n	8000240 <Reset_Handler+0x1c>
	}

    //find the size of .bss section in SRAM
	size_bytes = (uint32_t)&_ebss - (uint32_t)&_sbss;
 800025e:	4a10      	ldr	r2, [pc, #64]	; (80002a0 <Reset_Handler+0x7c>)
 8000260:	4b10      	ldr	r3, [pc, #64]	; (80002a4 <Reset_Handler+0x80>)
 8000262:	1ad3      	subs	r3, r2, r3
 8000264:	607b      	str	r3, [r7, #4]

	//! get the start address of .bss section
	pDst = (uint8_t *)&_sbss;
 8000266:	4b0f      	ldr	r3, [pc, #60]	; (80002a4 <Reset_Handler+0x80>)
 8000268:	617b      	str	r3, [r7, #20]

	//! initialize the entire .bss section with 0
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 800026a:	2300      	movs	r3, #0
 800026c:	60bb      	str	r3, [r7, #8]
 800026e:	e007      	b.n	8000280 <Reset_Handler+0x5c>
		*pDst++ = 0;
 8000270:	697b      	ldr	r3, [r7, #20]
 8000272:	1c5a      	adds	r2, r3, #1
 8000274:	617a      	str	r2, [r7, #20]
 8000276:	2200      	movs	r2, #0
 8000278:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 800027a:	68bb      	ldr	r3, [r7, #8]
 800027c:	3301      	adds	r3, #1
 800027e:	60bb      	str	r3, [r7, #8]
 8000280:	68ba      	ldr	r2, [r7, #8]
 8000282:	687b      	ldr	r3, [r7, #4]
 8000284:	429a      	cmp	r2, r3
 8000286:	d3f3      	bcc.n	8000270 <Reset_Handler+0x4c>
    //Call Init function of std library
    //only required if we are making use of the std. libraries
	//__libc_init_array();

    // at the end, call the main() application
	main();
 8000288:	f7ff ffc3 	bl	8000212 <main>

}
 800028c:	bf00      	nop
 800028e:	3718      	adds	r7, #24
 8000290:	46bd      	mov	sp, r7
 8000292:	bd80      	pop	{r7, pc}
 8000294:	2000000c 	.word	0x2000000c
 8000298:	20000000 	.word	0x20000000
 800029c:	080002a8 	.word	0x080002a8
 80002a0:	2000000c 	.word	0x2000000c
 80002a4:	2000000c 	.word	0x2000000c
