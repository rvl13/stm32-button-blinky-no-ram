
obj/button_blinky_01.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	00 00 02 20 89 00 00 08                             ... ....

08000008 <main>:
#include <stdint.h>

#define LED_RED    14   // PD14
#define PUSH_BTN   0    // PA0

int main(void)  {
 8000008:	b480      	push	{r7}
 800000a:	b087      	sub	sp, #28
 800000c:	af00      	add	r7, sp, #0

    // All the requried peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
 800000e:	4b19      	ldr	r3, [pc, #100]	; (8000074 <main+0x6c>)
 8000010:	617b      	str	r3, [r7, #20]
    volatile uint32_t *p_GPIOA_MODER = (uint32_t*)0x40020000;
 8000012:	4b19      	ldr	r3, [pc, #100]	; (8000078 <main+0x70>)
 8000014:	613b      	str	r3, [r7, #16]
    volatile uint32_t *p_GPIOA_IDR   = (uint32_t*)0x40020010;
 8000016:	4b19      	ldr	r3, [pc, #100]	; (800007c <main+0x74>)
 8000018:	60fb      	str	r3, [r7, #12]
    volatile uint32_t *p_GPIOD_MODER = (uint32_t*)0x40020C00;
 800001a:	4b19      	ldr	r3, [pc, #100]	; (8000080 <main+0x78>)
 800001c:	60bb      	str	r3, [r7, #8]
    volatile uint32_t *p_GPIOD_ODR   = (uint32_t*)0x40020C14;
 800001e:	4b19      	ldr	r3, [pc, #100]	; (8000084 <main+0x7c>)
 8000020:	607b      	str	r3, [r7, #4]

    // Enable Clock for GPIOD and GPIOA
    *p_RCC_AHB1ENR |= ( 1 << 3) | (1 << 0);
 8000022:	697b      	ldr	r3, [r7, #20]
 8000024:	681b      	ldr	r3, [r3, #0]
 8000026:	f043 0209 	orr.w	r2, r3, #9
 800002a:	697b      	ldr	r3, [r7, #20]
 800002c:	601a      	str	r2, [r3, #0]

    // Set Button B1 to input, not that we need to modify 2-bitsm for each pin
    *p_GPIOA_MODER = *p_GPIOA_MODER & ~( 3 << (2 * PUSH_BTN) );
 800002e:	693b      	ldr	r3, [r7, #16]
 8000030:	681b      	ldr	r3, [r3, #0]
 8000032:	f023 0203 	bic.w	r2, r3, #3
 8000036:	693b      	ldr	r3, [r7, #16]
 8000038:	601a      	str	r2, [r3, #0]

    // Set Red LED to output
    *p_GPIOD_MODER = (*p_GPIOD_MODER | ( 1 << (2 * LED_RED)) ) & ~( 1 << ( (2 * LED_RED) + 1) ) ;
 800003a:	68bb      	ldr	r3, [r7, #8]
 800003c:	681b      	ldr	r3, [r3, #0]
 800003e:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
 8000042:	f043 5280 	orr.w	r2, r3, #268435456	; 0x10000000
 8000046:	68bb      	ldr	r3, [r7, #8]
 8000048:	601a      	str	r2, [r3, #0]

    while (1)
    {
        // check if button has been pressed
        if (0 != ( *p_GPIOA_IDR & (1 << PUSH_BTN) ) )
 800004a:	68fb      	ldr	r3, [r7, #12]
 800004c:	681b      	ldr	r3, [r3, #0]
 800004e:	f003 0301 	and.w	r3, r3, #1
 8000052:	2b00      	cmp	r3, #0
 8000054:	d006      	beq.n	8000064 <main+0x5c>
        {
            // Turn on the led if button is being pressed
            *p_GPIOD_ODR |= (1 << LED_RED);
 8000056:	687b      	ldr	r3, [r7, #4]
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	f443 4280 	orr.w	r2, r3, #16384	; 0x4000
 800005e:	687b      	ldr	r3, [r7, #4]
 8000060:	601a      	str	r2, [r3, #0]
 8000062:	e7f2      	b.n	800004a <main+0x42>
        }
        else
        {
            // Turn off the led if button is released
            *p_GPIOD_ODR &= ~(1 << LED_RED);
 8000064:	687b      	ldr	r3, [r7, #4]
 8000066:	681b      	ldr	r3, [r3, #0]
 8000068:	f423 4280 	bic.w	r2, r3, #16384	; 0x4000
 800006c:	687b      	ldr	r3, [r7, #4]
 800006e:	601a      	str	r2, [r3, #0]
        if (0 != ( *p_GPIOA_IDR & (1 << PUSH_BTN) ) )
 8000070:	e7eb      	b.n	800004a <main+0x42>
 8000072:	bf00      	nop
 8000074:	40023830 	.word	0x40023830
 8000078:	40020000 	.word	0x40020000
 800007c:	40020010 	.word	0x40020010
 8000080:	40020c00 	.word	0x40020c00
 8000084:	40020c14 	.word	0x40020c14

08000088 <Reset_Handler>:
    STACK_START,
    (uint32_t)&Reset_Handler
};


void Reset_Handler(void)    {
 8000088:	b580      	push	{r7, lr}
 800008a:	b086      	sub	sp, #24
 800008c:	af00      	add	r7, sp, #0

	// compute the size of .data section 
	uint32_t size_bytes = (uint32_t)&_edata - (uint32_t)&_sdata;
 800008e:	4a1a      	ldr	r2, [pc, #104]	; (80000f8 <Reset_Handler+0x70>)
 8000090:	4b1a      	ldr	r3, [pc, #104]	; (80000fc <Reset_Handler+0x74>)
 8000092:	1ad3      	subs	r3, r2, r3
 8000094:	607b      	str	r3, [r7, #4]

	// we are declaring the pointer with uint8_t type
	// because we intend to copy the data byte by byte
	// and not word by word
	uint8_t *pDst = (uint8_t *) &_sdata;		//SRAM
 8000096:	4b19      	ldr	r3, [pc, #100]	; (80000fc <Reset_Handler+0x74>)
 8000098:	617b      	str	r3, [r7, #20]
	uint8_t *pSRC = (uint8_t *) &_la_data;		//Flash
 800009a:	4b19      	ldr	r3, [pc, #100]	; (8000100 <Reset_Handler+0x78>)
 800009c:	613b      	str	r3, [r7, #16]

    //copy .data section from ROM(Flash) to SRAM, byte by byte
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 800009e:	2300      	movs	r3, #0
 80000a0:	60fb      	str	r3, [r7, #12]
 80000a2:	e00a      	b.n	80000ba <Reset_Handler+0x32>
		*pDst++ = *pSRC++;
 80000a4:	693a      	ldr	r2, [r7, #16]
 80000a6:	1c53      	adds	r3, r2, #1
 80000a8:	613b      	str	r3, [r7, #16]
 80000aa:	697b      	ldr	r3, [r7, #20]
 80000ac:	1c59      	adds	r1, r3, #1
 80000ae:	6179      	str	r1, [r7, #20]
 80000b0:	7812      	ldrb	r2, [r2, #0]
 80000b2:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 80000b4:	68fb      	ldr	r3, [r7, #12]
 80000b6:	3301      	adds	r3, #1
 80000b8:	60fb      	str	r3, [r7, #12]
 80000ba:	68fa      	ldr	r2, [r7, #12]
 80000bc:	687b      	ldr	r3, [r7, #4]
 80000be:	429a      	cmp	r2, r3
 80000c0:	d3f0      	bcc.n	80000a4 <Reset_Handler+0x1c>
	}

    //find the size of .bss section in SRAM
	size_bytes = (uint32_t)&_ebss - (uint32_t)&_sbss;
 80000c2:	4a10      	ldr	r2, [pc, #64]	; (8000104 <Reset_Handler+0x7c>)
 80000c4:	4b10      	ldr	r3, [pc, #64]	; (8000108 <Reset_Handler+0x80>)
 80000c6:	1ad3      	subs	r3, r2, r3
 80000c8:	607b      	str	r3, [r7, #4]

	//! get the start address of .bss section
	pDst = (uint8_t *)&_sbss;
 80000ca:	4b0f      	ldr	r3, [pc, #60]	; (8000108 <Reset_Handler+0x80>)
 80000cc:	617b      	str	r3, [r7, #20]

	//! initialize the entire .bss section with 0
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 80000ce:	2300      	movs	r3, #0
 80000d0:	60bb      	str	r3, [r7, #8]
 80000d2:	e007      	b.n	80000e4 <Reset_Handler+0x5c>
		*pDst++ = 0;
 80000d4:	697b      	ldr	r3, [r7, #20]
 80000d6:	1c5a      	adds	r2, r3, #1
 80000d8:	617a      	str	r2, [r7, #20]
 80000da:	2200      	movs	r2, #0
 80000dc:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 80000de:	68bb      	ldr	r3, [r7, #8]
 80000e0:	3301      	adds	r3, #1
 80000e2:	60bb      	str	r3, [r7, #8]
 80000e4:	68ba      	ldr	r2, [r7, #8]
 80000e6:	687b      	ldr	r3, [r7, #4]
 80000e8:	429a      	cmp	r2, r3
 80000ea:	d3f3      	bcc.n	80000d4 <Reset_Handler+0x4c>
    //Call Init function of std library
    //only required if we are making use of the std. libraries
	//__libc_init_array();

    // at the end, call the main() application
	main();
 80000ec:	f7ff ff8c 	bl	8000008 <main>

}
 80000f0:	bf00      	nop
 80000f2:	3718      	adds	r7, #24
 80000f4:	46bd      	mov	sp, r7
 80000f6:	bd80      	pop	{r7, pc}
 80000f8:	20000000 	.word	0x20000000
 80000fc:	20000000 	.word	0x20000000
 8000100:	0800010c 	.word	0x0800010c
 8000104:	20000000 	.word	0x20000000
 8000108:	20000000 	.word	0x20000000
