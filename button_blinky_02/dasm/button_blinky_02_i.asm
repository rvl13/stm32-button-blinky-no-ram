
obj/button_blinky_02.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	00 00 02 20 09 00 00 08                             ... ....

08000008 <Reset_Handler>:
uint32_t vectors[] __attribute__((section(".isr_vector"))) = {
    0x20020000,
    (uint32_t)&Reset_Handler
};

int Reset_Handler(void)  {
 8000008:	b480      	push	{r7}
 800000a:	b087      	sub	sp, #28
 800000c:	af00      	add	r7, sp, #0

    // All the requried peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
 800000e:	4b19      	ldr	r3, [pc, #100]	; (8000074 <Reset_Handler+0x6c>)
 8000010:	617b      	str	r3, [r7, #20]
    volatile uint32_t *p_GPIOA_MODER = (uint32_t*)0x40020000;
 8000012:	4b19      	ldr	r3, [pc, #100]	; (8000078 <Reset_Handler+0x70>)
 8000014:	613b      	str	r3, [r7, #16]
    volatile uint32_t *p_GPIOA_IDR   = (uint32_t*)0x40020010;
 8000016:	4b19      	ldr	r3, [pc, #100]	; (800007c <Reset_Handler+0x74>)
 8000018:	60fb      	str	r3, [r7, #12]
    volatile uint32_t *p_GPIOD_MODER = (uint32_t*)0x40020C00;
 800001a:	4b19      	ldr	r3, [pc, #100]	; (8000080 <Reset_Handler+0x78>)
 800001c:	60bb      	str	r3, [r7, #8]
    volatile uint32_t *p_GPIOD_ODR   = (uint32_t*)0x40020C14;
 800001e:	4b19      	ldr	r3, [pc, #100]	; (8000084 <Reset_Handler+0x7c>)
 8000020:	607b      	str	r3, [r7, #4]

    // Enable Clock for GPIOD and GPIOA
    *p_RCC_AHB1ENR |= ( 1 << 3) | (1 << 0);
 8000022:	697b      	ldr	r3, [r7, #20]
 8000024:	681b      	ldr	r3, [r3, #0]
 8000026:	f043 0209 	orr.w	r2, r3, #9
 800002a:	697b      	ldr	r3, [r7, #20]
 800002c:	601a      	str	r2, [r3, #0]

    // Set Button B1 to input
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
 8000054:	d006      	beq.n	8000064 <Reset_Handler+0x5c>
        {
            // Turn on the led if button is being pressed
            *p_GPIOD_ODR |= (1 << LED_RED);
 8000056:	687b      	ldr	r3, [r7, #4]
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	f443 4280 	orr.w	r2, r3, #16384	; 0x4000
 800005e:	687b      	ldr	r3, [r7, #4]
 8000060:	601a      	str	r2, [r3, #0]
 8000062:	e7f2      	b.n	800004a <Reset_Handler+0x42>
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
 8000070:	e7eb      	b.n	800004a <Reset_Handler+0x42>
 8000072:	bf00      	nop
 8000074:	40023830 	.word	0x40023830
 8000078:	40020000 	.word	0x40020000
 800007c:	40020010 	.word	0x40020010
 8000080:	40020c00 	.word	0x40020c00
 8000084:	40020c14 	.word	0x40020c14
