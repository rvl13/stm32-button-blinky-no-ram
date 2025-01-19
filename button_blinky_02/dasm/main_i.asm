
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
uint32_t vectors[] __attribute__((section(".isr_vector"))) = {
    0x20020000,
    (uint32_t)&Reset_Handler
};

int Reset_Handler(void)  {
   0:	b480      	push	{r7}
   2:	b087      	sub	sp, #28
   4:	af00      	add	r7, sp, #0

    // All the requried peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
   6:	4b19      	ldr	r3, [pc, #100]	; (6c <Reset_Handler+0x6c>)
   8:	617b      	str	r3, [r7, #20]
    volatile uint32_t *p_GPIOA_MODER = (uint32_t*)0x40020000;
   a:	4b19      	ldr	r3, [pc, #100]	; (70 <Reset_Handler+0x70>)
   c:	613b      	str	r3, [r7, #16]
    volatile uint32_t *p_GPIOA_IDR   = (uint32_t*)0x40020010;
   e:	4b19      	ldr	r3, [pc, #100]	; (74 <Reset_Handler+0x74>)
  10:	60fb      	str	r3, [r7, #12]
    volatile uint32_t *p_GPIOD_MODER = (uint32_t*)0x40020C00;
  12:	4b19      	ldr	r3, [pc, #100]	; (78 <Reset_Handler+0x78>)
  14:	60bb      	str	r3, [r7, #8]
    volatile uint32_t *p_GPIOD_ODR   = (uint32_t*)0x40020C14;
  16:	4b19      	ldr	r3, [pc, #100]	; (7c <Reset_Handler+0x7c>)
  18:	607b      	str	r3, [r7, #4]

    // Enable Clock for GPIOD and GPIOA
    *p_RCC_AHB1ENR |= ( 1 << 3) | (1 << 0);
  1a:	697b      	ldr	r3, [r7, #20]
  1c:	681b      	ldr	r3, [r3, #0]
  1e:	f043 0209 	orr.w	r2, r3, #9
  22:	697b      	ldr	r3, [r7, #20]
  24:	601a      	str	r2, [r3, #0]

    // Set Button B1 to input
    *p_GPIOA_MODER = *p_GPIOA_MODER & ~( 3 << (2 * PUSH_BTN) );
  26:	693b      	ldr	r3, [r7, #16]
  28:	681b      	ldr	r3, [r3, #0]
  2a:	f023 0203 	bic.w	r2, r3, #3
  2e:	693b      	ldr	r3, [r7, #16]
  30:	601a      	str	r2, [r3, #0]

    // Set Red LED to output
    *p_GPIOD_MODER = (*p_GPIOD_MODER | ( 1 << (2 * LED_RED)) ) & ~( 1 << ( (2 * LED_RED) + 1) ) ;
  32:	68bb      	ldr	r3, [r7, #8]
  34:	681b      	ldr	r3, [r3, #0]
  36:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
  3a:	f043 5280 	orr.w	r2, r3, #268435456	; 0x10000000
  3e:	68bb      	ldr	r3, [r7, #8]
  40:	601a      	str	r2, [r3, #0]

    while (1)
    {
        // check if button has been pressed
        if (0 != ( *p_GPIOA_IDR & (1 << PUSH_BTN) ) )
  42:	68fb      	ldr	r3, [r7, #12]
  44:	681b      	ldr	r3, [r3, #0]
  46:	f003 0301 	and.w	r3, r3, #1
  4a:	2b00      	cmp	r3, #0
  4c:	d006      	beq.n	5c <Reset_Handler+0x5c>
        {
            // Turn on the led if button is being pressed
            *p_GPIOD_ODR |= (1 << LED_RED);
  4e:	687b      	ldr	r3, [r7, #4]
  50:	681b      	ldr	r3, [r3, #0]
  52:	f443 4280 	orr.w	r2, r3, #16384	; 0x4000
  56:	687b      	ldr	r3, [r7, #4]
  58:	601a      	str	r2, [r3, #0]
  5a:	e7f2      	b.n	42 <Reset_Handler+0x42>
        }
        else
        {
            // Turn off the led if button is released
            *p_GPIOD_ODR &= ~(1 << LED_RED);
  5c:	687b      	ldr	r3, [r7, #4]
  5e:	681b      	ldr	r3, [r3, #0]
  60:	f423 4280 	bic.w	r2, r3, #16384	; 0x4000
  64:	687b      	ldr	r3, [r7, #4]
  66:	601a      	str	r2, [r3, #0]
        if (0 != ( *p_GPIOA_IDR & (1 << PUSH_BTN) ) )
  68:	e7eb      	b.n	42 <Reset_Handler+0x42>
  6a:	bf00      	nop
  6c:	40023830 	.word	0x40023830
  70:	40020000 	.word	0x40020000
  74:	40020010 	.word	0x40020010
  78:	40020c00 	.word	0x40020c00
  7c:	40020c14 	.word	0x40020c14
