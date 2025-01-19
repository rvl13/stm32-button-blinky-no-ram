
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
uint32_t vectors[] __attribute__((section(".isr_vector"))) = {
    0x00020000,
    (uint32_t)&Reset_Handler
};

int Reset_Handler(void)  {
   0:	b4b0      	push	{r4, r5, r7}
   2:	af00      	add	r7, sp, #0
    register uint32_t *RegToWrite = (uint32_t*)0x00000000;
    register uint32_t *RegToRead = (uint32_t*)0x00000000;

    // now, let's assign address of p_RCC_AHB1ENR,
    // and enable clock for GPIOA and GPIOD
    RegToWrite = (uint32_t *)AHB1ENR_ADDR;
   4:	4c0a      	ldr	r4, [pc, #40]	; (30 <Reset_Handler+0x30>)
    *RegToWrite |= ( 1 << 3) | (1 << 0);
   6:	6823      	ldr	r3, [r4, #0]
   8:	f043 0309 	orr.w	r3, r3, #9
   c:	6023      	str	r3, [r4, #0]
    // RegToWrite = (uint32_t *)GPIOA_MODER_ADDR;
    // *RegToWrite &= ~( 3 << (2 * PUSH_BTN) );

    // Assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state  
    RegToWrite = (uint32_t *)GPIOD_MODER_ADDR;
   e:	4c09      	ldr	r4, [pc, #36]	; (34 <Reset_Handler+0x34>)
    *RegToWrite |= ( 1 << (2 * LED_RED));
  10:	6823      	ldr	r3, [r4, #0]
  12:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
  16:	6023      	str	r3, [r4, #0]

    // Assign address of input register address (GPIOA IDR)
    RegToRead = (uint32_t *)GPIOA_IDR_ADDR;
  18:	4d07      	ldr	r5, [pc, #28]	; (38 <Reset_Handler+0x38>)
    // Assign address of output register to write (GPIOD ODR)
    RegToWrite = (uint32_t *)GPIOD_ODR_ADDR;
  1a:	4c08      	ldr	r4, [pc, #32]	; (3c <Reset_Handler+0x3c>)
        // *RegToWrite = TempVal;

        // below statement is equivalent to above read, modify, write
        // But we don't need to declare an additional register variable, 
        // compiler will decide which to use and also results in lower size
        *RegToWrite = ( *RegToWrite & ~(1 << LED_RED) ) | \
  1c:	6823      	ldr	r3, [r4, #0]
  1e:	f423 4280 	bic.w	r2, r3, #16384	; 0x4000
                      ( (*RegToRead & (1 << PUSH_BTN) ) << LED_RED) ;
  22:	682b      	ldr	r3, [r5, #0]
  24:	039b      	lsls	r3, r3, #14
  26:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
        *RegToWrite = ( *RegToWrite & ~(1 << LED_RED) ) | \
  2a:	4313      	orrs	r3, r2
  2c:	6023      	str	r3, [r4, #0]
  2e:	e7f5      	b.n	1c <Reset_Handler+0x1c>
  30:	40023830 	.word	0x40023830
  34:	40020c00 	.word	0x40020c00
  38:	40020010 	.word	0x40020010
  3c:	40020c14 	.word	0x40020c14
