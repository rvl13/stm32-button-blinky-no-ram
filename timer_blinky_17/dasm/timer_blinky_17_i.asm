
obj/timer_blinky_17.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	00 00 02 20 8d 00 00 08                             ... ....

08000008 <main>:
    GPIOx_LCKR,
    GPIOx_AFRL,
    GPIOx_AFRH,
};

int main(void)  {
 8000008:	b480      	push	{r7}
 800000a:	b085      	sub	sp, #20
 800000c:	af00      	add	r7, sp, #0

    // All the required peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
 800000e:	4b1c      	ldr	r3, [pc, #112]	; (8000080 <main+0x78>)
 8000010:	60fb      	str	r3, [r7, #12]
    volatile uint32_t *p_GPIOD_BASE  = (uint32_t*)0x40020C00;
 8000012:	4b1c      	ldr	r3, [pc, #112]	; (8000084 <main+0x7c>)
 8000014:	60bb      	str	r3, [r7, #8]
    volatile uint32_t *p_TIM4_BASE   = (uint32_t*)0x40000800;
 8000016:	4b1c      	ldr	r3, [pc, #112]	; (8000088 <main+0x80>)
 8000018:	607b      	str	r3, [r7, #4]
    // uint32_t Counter = 0;

    // Enable Clock for GPIOD
    *p_RCC_AHB1ENR |= ( 1 << 3);
 800001a:	68fb      	ldr	r3, [r7, #12]
 800001c:	681b      	ldr	r3, [r3, #0]
 800001e:	f043 0208 	orr.w	r2, r3, #8
 8000022:	68fb      	ldr	r3, [r7, #12]
 8000024:	601a      	str	r2, [r3, #0]
    // Enable Clock for TIM4 (APB1ENR, at offset of 4 words-16 bytes from AHB1ENR)
    *(p_RCC_AHB1ENR + 4) |= (1 << 2);
 8000026:	68fb      	ldr	r3, [r7, #12]
 8000028:	3310      	adds	r3, #16
 800002a:	681a      	ldr	r2, [r3, #0]
 800002c:	68fb      	ldr	r3, [r7, #12]
 800002e:	3310      	adds	r3, #16
 8000030:	f042 0204 	orr.w	r2, r2, #4
 8000034:	601a      	str	r2, [r3, #0]

    // Set Red LED (PD14) to Alternate Function 2 (TIM4_CH3)
    p_GPIOD_BASE[GPIOx_MODER] = ( 1 << ( (2 * LED_RED) + 1) );
 8000036:	68bb      	ldr	r3, [r7, #8]
 8000038:	f04f 5200 	mov.w	r2, #536870912	; 0x20000000
 800003c:	601a      	str	r2, [r3, #0]
    p_GPIOD_BASE[GPIOx_AFRH] = (2 << (4 * ( LED_RED - 8 )));
 800003e:	68bb      	ldr	r3, [r7, #8]
 8000040:	3324      	adds	r3, #36	; 0x24
 8000042:	f04f 7200 	mov.w	r2, #33554432	; 0x2000000
 8000046:	601a      	str	r2, [r3, #0]

    // initialize timer
    p_TIM4_BASE[TIMx_CCMR2] = 0x60;         // set Channel 3 to Output PWM Mode 1
 8000048:	687b      	ldr	r3, [r7, #4]
 800004a:	331c      	adds	r3, #28
 800004c:	2260      	movs	r2, #96	; 0x60
 800004e:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_PSC]   = 1600 - 1;     // prescaler 16MHz/1600 = 10KHz
 8000050:	687b      	ldr	r3, [r7, #4]
 8000052:	3328      	adds	r3, #40	; 0x28
 8000054:	f240 623f 	movw	r2, #1599	; 0x63f
 8000058:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_ARR]   = 10000 - 1;    // PWM Period 10KHz/10000 = 1Hz = 1Sec
 800005a:	687b      	ldr	r3, [r7, #4]
 800005c:	332c      	adds	r3, #44	; 0x2c
 800005e:	f242 720f 	movw	r2, #9999	; 0x270f
 8000062:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_CCR3]  = 5000 - 1;     // PWM Duty 10KHz/5000 = 2Hz = 0.5sec
 8000064:	687b      	ldr	r3, [r7, #4]
 8000066:	333c      	adds	r3, #60	; 0x3c
 8000068:	f241 3287 	movw	r2, #4999	; 0x1387
 800006c:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_CCER]  = 0x100;        // enable Capture Compare Output for Channel 3
 800006e:	687b      	ldr	r3, [r7, #4]
 8000070:	3320      	adds	r3, #32
 8000072:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000076:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_CR1]   = 1;            // Enable Timer
 8000078:	687b      	ldr	r3, [r7, #4]
 800007a:	2201      	movs	r2, #1
 800007c:	601a      	str	r2, [r3, #0]

    // Do nothing in while loop, timer is handling blinky
    while (1);
 800007e:	e7fe      	b.n	800007e <main+0x76>
 8000080:	40023830 	.word	0x40023830
 8000084:	40020c00 	.word	0x40020c00
 8000088:	40000800 	.word	0x40000800

0800008c <Reset_Handler>:
    STACK_START,
    (uint32_t)&Reset_Handler
};


void Reset_Handler(void)    {
 800008c:	b580      	push	{r7, lr}
 800008e:	b086      	sub	sp, #24
 8000090:	af00      	add	r7, sp, #0

	// compute the size of .data section 
	uint32_t size_bytes = (uint32_t)&_edata - (uint32_t)&_sdata;
 8000092:	4a1a      	ldr	r2, [pc, #104]	; (80000fc <Reset_Handler+0x70>)
 8000094:	4b1a      	ldr	r3, [pc, #104]	; (8000100 <Reset_Handler+0x74>)
 8000096:	1ad3      	subs	r3, r2, r3
 8000098:	607b      	str	r3, [r7, #4]

	// we are declaring the pointer with uint8_t type
	// because we intend to copy the data byte by byte
	// and not word by word
	uint8_t *pDst = (uint8_t *) &_sdata;		//SRAM
 800009a:	4b19      	ldr	r3, [pc, #100]	; (8000100 <Reset_Handler+0x74>)
 800009c:	617b      	str	r3, [r7, #20]
	uint8_t *pSRC = (uint8_t *) &_la_data;		//Flash
 800009e:	4b19      	ldr	r3, [pc, #100]	; (8000104 <Reset_Handler+0x78>)
 80000a0:	613b      	str	r3, [r7, #16]

    //copy .data section from ROM(Flash) to SRAM, byte by byte
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 80000a2:	2300      	movs	r3, #0
 80000a4:	60fb      	str	r3, [r7, #12]
 80000a6:	e00a      	b.n	80000be <Reset_Handler+0x32>
		*pDst++ = *pSRC++;
 80000a8:	693a      	ldr	r2, [r7, #16]
 80000aa:	1c53      	adds	r3, r2, #1
 80000ac:	613b      	str	r3, [r7, #16]
 80000ae:	697b      	ldr	r3, [r7, #20]
 80000b0:	1c59      	adds	r1, r3, #1
 80000b2:	6179      	str	r1, [r7, #20]
 80000b4:	7812      	ldrb	r2, [r2, #0]
 80000b6:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 80000b8:	68fb      	ldr	r3, [r7, #12]
 80000ba:	3301      	adds	r3, #1
 80000bc:	60fb      	str	r3, [r7, #12]
 80000be:	68fa      	ldr	r2, [r7, #12]
 80000c0:	687b      	ldr	r3, [r7, #4]
 80000c2:	429a      	cmp	r2, r3
 80000c4:	d3f0      	bcc.n	80000a8 <Reset_Handler+0x1c>
	}

    //find the size of .bss section in SRAM
	size_bytes = (uint32_t)&_ebss - (uint32_t)&_sbss;
 80000c6:	4a10      	ldr	r2, [pc, #64]	; (8000108 <Reset_Handler+0x7c>)
 80000c8:	4b10      	ldr	r3, [pc, #64]	; (800010c <Reset_Handler+0x80>)
 80000ca:	1ad3      	subs	r3, r2, r3
 80000cc:	607b      	str	r3, [r7, #4]

	//! get the start address of .bss section
	pDst = (uint8_t *)&_sbss;
 80000ce:	4b0f      	ldr	r3, [pc, #60]	; (800010c <Reset_Handler+0x80>)
 80000d0:	617b      	str	r3, [r7, #20]

	//! initialize the entire .bss section with 0
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 80000d2:	2300      	movs	r3, #0
 80000d4:	60bb      	str	r3, [r7, #8]
 80000d6:	e007      	b.n	80000e8 <Reset_Handler+0x5c>
		*pDst++ = 0;
 80000d8:	697b      	ldr	r3, [r7, #20]
 80000da:	1c5a      	adds	r2, r3, #1
 80000dc:	617a      	str	r2, [r7, #20]
 80000de:	2200      	movs	r2, #0
 80000e0:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 80000e2:	68bb      	ldr	r3, [r7, #8]
 80000e4:	3301      	adds	r3, #1
 80000e6:	60bb      	str	r3, [r7, #8]
 80000e8:	68ba      	ldr	r2, [r7, #8]
 80000ea:	687b      	ldr	r3, [r7, #4]
 80000ec:	429a      	cmp	r2, r3
 80000ee:	d3f3      	bcc.n	80000d8 <Reset_Handler+0x4c>
    //Call Init function of std library
    //only required if we are making use of the std. libraries
	//__libc_init_array();

    // at the end, call the main() application
	main();
 80000f0:	f7ff ff8a 	bl	8000008 <main>

}
 80000f4:	bf00      	nop
 80000f6:	3718      	adds	r7, #24
 80000f8:	46bd      	mov	sp, r7
 80000fa:	bd80      	pop	{r7, pc}
 80000fc:	20000000 	.word	0x20000000
 8000100:	20000000 	.word	0x20000000
 8000104:	08000110 	.word	0x08000110
 8000108:	20000000 	.word	0x20000000
 800010c:	20000000 	.word	0x20000000
