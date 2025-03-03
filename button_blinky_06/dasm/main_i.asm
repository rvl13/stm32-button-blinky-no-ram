
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
    register uint32_t *RegToWrite = (uint32_t*)0x00000000;
    register uint32_t *RegToRead = (uint32_t*)0x00000000;

    // now, let's assign address of p_RCC_AHB1ENR,
    // and enable clock for GPIOA and GPIOD
    RegToWrite = (uint32_t *)AHB1ENR_ADDR;
   0:	4c06      	ldr	r4, [pc, #24]	; (1c <Reset_Handler+0x1c>)
    *RegToWrite |= ( 1 << 3) | (1 << 0);
   2:	6823      	ldr	r3, [r4, #0]
   4:	f043 0309 	orr.w	r3, r3, #9
   8:	6023      	str	r3, [r4, #0]
    // RegToWrite = (uint32_t *)GPIOA_MODER_ADDR;
    // *RegToWrite &= ~( 3 << (2 * PUSH_BTN) );

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state  
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = 1;
   a:	4b05      	ldr	r3, [pc, #20]	; (20 <Reset_Handler+0x20>)
   c:	2201      	movs	r2, #1
   e:	601a      	str	r2, [r3, #0]

    RegToRead = PRPH_ALIAS_ADDR(GPIOA_IDR_ADDR, PUSH_BTN);
  10:	4d04      	ldr	r5, [pc, #16]	; (24 <Reset_Handler+0x24>)
    RegToWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
  12:	4c05      	ldr	r4, [pc, #20]	; (28 <Reset_Handler+0x28>)
    {
        // Read word from Alias region Address that GPIOA IDR Bit 0 (PA0 Input)
        // And write the same word to Alias Region Address that corresponds to 
        // GPIOD ODR Bit 14 (PD14 Output)
        // *(PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED)) = *(PRPH_ALIAS_ADDR(GPIOA_IDR_ADDR, PUSH_BTN));
        *RegToWrite = *RegToRead;
  14:	682b      	ldr	r3, [r5, #0]
  16:	6023      	str	r3, [r4, #0]
  18:	e7fc      	b.n	14 <Reset_Handler+0x14>
  1a:	bf00      	nop
  1c:	40023830 	.word	0x40023830
  20:	42418070 	.word	0x42418070
  24:	42400200 	.word	0x42400200
  28:	424182b8 	.word	0x424182b8
