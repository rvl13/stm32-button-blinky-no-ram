
obj/delay_blinky_07.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	00 00 02 20 6d 00 00 08                             ... m...

08000008 <main>:
#include <stdint.h>

#define LED_RED         14   // PD14
#define DELAY_VALUE     700000  // shall give approx half second delay

int main(void)  {
 8000008:	b480      	push	{r7}
 800000a:	b085      	sub	sp, #20
 800000c:	af00      	add	r7, sp, #0

    // All the requried peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
 800000e:	4b13      	ldr	r3, [pc, #76]	; (800005c <main+0x54>)
 8000010:	60bb      	str	r3, [r7, #8]
    volatile uint32_t *p_GPIOD_MODER = (uint32_t*)0x40020C00;
 8000012:	4b13      	ldr	r3, [pc, #76]	; (8000060 <main+0x58>)
 8000014:	607b      	str	r3, [r7, #4]
    volatile uint32_t *p_GPIOD_ODR   = (uint32_t*)0x40020C14;
 8000016:	4b13      	ldr	r3, [pc, #76]	; (8000064 <main+0x5c>)
 8000018:	603b      	str	r3, [r7, #0]
    uint32_t Counter = 0;
 800001a:	2300      	movs	r3, #0
 800001c:	60fb      	str	r3, [r7, #12]

    // Enable Clock for GPIOD
    *p_RCC_AHB1ENR |= ( 1 << 3);
 800001e:	68bb      	ldr	r3, [r7, #8]
 8000020:	681b      	ldr	r3, [r3, #0]
 8000022:	f043 0208 	orr.w	r2, r3, #8
 8000026:	68bb      	ldr	r3, [r7, #8]
 8000028:	601a      	str	r2, [r3, #0]

    // Set Red LED to output
    *p_GPIOD_MODER = (*p_GPIOD_MODER | ( 1 << (2 * LED_RED)) ) & ~( 1 << ( (2 * LED_RED) + 1) ) ;
 800002a:	687b      	ldr	r3, [r7, #4]
 800002c:	681b      	ldr	r3, [r3, #0]
 800002e:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
 8000032:	f043 5280 	orr.w	r2, r3, #268435456	; 0x10000000
 8000036:	687b      	ldr	r3, [r7, #4]
 8000038:	601a      	str	r2, [r3, #0]

    while (1)
    {
        // delay for some time
        while( Counter++ < 700000 );
 800003a:	bf00      	nop
 800003c:	68fb      	ldr	r3, [r7, #12]
 800003e:	1c5a      	adds	r2, r3, #1
 8000040:	60fa      	str	r2, [r7, #12]
 8000042:	4a09      	ldr	r2, [pc, #36]	; (8000068 <main+0x60>)
 8000044:	4293      	cmp	r3, r2
 8000046:	d9f9      	bls.n	800003c <main+0x34>
        Counter = 0;
 8000048:	2300      	movs	r3, #0
 800004a:	60fb      	str	r3, [r7, #12]

        // toggle the LED (use XOR for bit toggling)
        *p_GPIOD_ODR ^= (1 << LED_RED);
 800004c:	683b      	ldr	r3, [r7, #0]
 800004e:	681b      	ldr	r3, [r3, #0]
 8000050:	f483 4280 	eor.w	r2, r3, #16384	; 0x4000
 8000054:	683b      	ldr	r3, [r7, #0]
 8000056:	601a      	str	r2, [r3, #0]
        while( Counter++ < 700000 );
 8000058:	e7ef      	b.n	800003a <main+0x32>
 800005a:	bf00      	nop
 800005c:	40023830 	.word	0x40023830
 8000060:	40020c00 	.word	0x40020c00
 8000064:	40020c14 	.word	0x40020c14
 8000068:	000aae5f 	.word	0x000aae5f

0800006c <Reset_Handler>:
    STACK_START,
    (uint32_t)&Reset_Handler
};


void Reset_Handler(void)    {
 800006c:	b580      	push	{r7, lr}
 800006e:	b086      	sub	sp, #24
 8000070:	af00      	add	r7, sp, #0

	// compute the size of .data section 
	uint32_t size_bytes = (uint32_t)&_edata - (uint32_t)&_sdata;
 8000072:	4a1a      	ldr	r2, [pc, #104]	; (80000dc <Reset_Handler+0x70>)
 8000074:	4b1a      	ldr	r3, [pc, #104]	; (80000e0 <Reset_Handler+0x74>)
 8000076:	1ad3      	subs	r3, r2, r3
 8000078:	607b      	str	r3, [r7, #4]

	// we are declaring the pointer with uint8_t type
	// because we intend to copy the data byte by byte
	// and not word by word
	uint8_t *pDst = (uint8_t *) &_sdata;		//SRAM
 800007a:	4b19      	ldr	r3, [pc, #100]	; (80000e0 <Reset_Handler+0x74>)
 800007c:	617b      	str	r3, [r7, #20]
	uint8_t *pSRC = (uint8_t *) &_la_data;		//Flash
 800007e:	4b19      	ldr	r3, [pc, #100]	; (80000e4 <Reset_Handler+0x78>)
 8000080:	613b      	str	r3, [r7, #16]

    //copy .data section from ROM(Flash) to SRAM, byte by byte
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 8000082:	2300      	movs	r3, #0
 8000084:	60fb      	str	r3, [r7, #12]
 8000086:	e00a      	b.n	800009e <Reset_Handler+0x32>
		*pDst++ = *pSRC++;
 8000088:	693a      	ldr	r2, [r7, #16]
 800008a:	1c53      	adds	r3, r2, #1
 800008c:	613b      	str	r3, [r7, #16]
 800008e:	697b      	ldr	r3, [r7, #20]
 8000090:	1c59      	adds	r1, r3, #1
 8000092:	6179      	str	r1, [r7, #20]
 8000094:	7812      	ldrb	r2, [r2, #0]
 8000096:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 8000098:	68fb      	ldr	r3, [r7, #12]
 800009a:	3301      	adds	r3, #1
 800009c:	60fb      	str	r3, [r7, #12]
 800009e:	68fa      	ldr	r2, [r7, #12]
 80000a0:	687b      	ldr	r3, [r7, #4]
 80000a2:	429a      	cmp	r2, r3
 80000a4:	d3f0      	bcc.n	8000088 <Reset_Handler+0x1c>
	}

    //find the size of .bss section in SRAM
	size_bytes = (uint32_t)&_ebss - (uint32_t)&_sbss;
 80000a6:	4a10      	ldr	r2, [pc, #64]	; (80000e8 <Reset_Handler+0x7c>)
 80000a8:	4b10      	ldr	r3, [pc, #64]	; (80000ec <Reset_Handler+0x80>)
 80000aa:	1ad3      	subs	r3, r2, r3
 80000ac:	607b      	str	r3, [r7, #4]

	//! get the start address of .bss section
	pDst = (uint8_t *)&_sbss;
 80000ae:	4b0f      	ldr	r3, [pc, #60]	; (80000ec <Reset_Handler+0x80>)
 80000b0:	617b      	str	r3, [r7, #20]

	//! initialize the entire .bss section with 0
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 80000b2:	2300      	movs	r3, #0
 80000b4:	60bb      	str	r3, [r7, #8]
 80000b6:	e007      	b.n	80000c8 <Reset_Handler+0x5c>
		*pDst++ = 0;
 80000b8:	697b      	ldr	r3, [r7, #20]
 80000ba:	1c5a      	adds	r2, r3, #1
 80000bc:	617a      	str	r2, [r7, #20]
 80000be:	2200      	movs	r2, #0
 80000c0:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
 80000c2:	68bb      	ldr	r3, [r7, #8]
 80000c4:	3301      	adds	r3, #1
 80000c6:	60bb      	str	r3, [r7, #8]
 80000c8:	68ba      	ldr	r2, [r7, #8]
 80000ca:	687b      	ldr	r3, [r7, #4]
 80000cc:	429a      	cmp	r2, r3
 80000ce:	d3f3      	bcc.n	80000b8 <Reset_Handler+0x4c>
    //Call Init function of std library
    //only required if we are making use of the std. libraries
	//__libc_init_array();

    // at the end, call the main() application
	main();
 80000d0:	f7ff ff9a 	bl	8000008 <main>

}
 80000d4:	bf00      	nop
 80000d6:	3718      	adds	r7, #24
 80000d8:	46bd      	mov	sp, r7
 80000da:	bd80      	pop	{r7, pc}
 80000dc:	20000000 	.word	0x20000000
 80000e0:	20000000 	.word	0x20000000
 80000e4:	080000f0 	.word	0x080000f0
 80000e8:	20000000 	.word	0x20000000
 80000ec:	20000000 	.word	0x20000000
