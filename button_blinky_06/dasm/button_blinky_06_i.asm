
obj/button_blinky_06.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	09 00 00 08                                         ....

08000008 <Reset_Handler>:
    register uint32_t *RegToWrite = (uint32_t*)0x00000000;
    register uint32_t *RegToRead = (uint32_t*)0x00000000;

    // now, let's assign address of p_RCC_AHB1ENR,
    // and enable clock for GPIOA and GPIOD
    RegToWrite = (uint32_t *)AHB1ENR_ADDR;
 8000008:	4c06      	ldr	r4, [pc, #24]	; (8000024 <Reset_Handler+0x1c>)
    *RegToWrite |= ( 1 << 3) | (1 << 0);
 800000a:	6823      	ldr	r3, [r4, #0]
 800000c:	f043 0309 	orr.w	r3, r3, #9
 8000010:	6023      	str	r3, [r4, #0]
    // RegToWrite = (uint32_t *)GPIOA_MODER_ADDR;
    // *RegToWrite &= ~( 3 << (2 * PUSH_BTN) );

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state  
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = 1;
 8000012:	4b05      	ldr	r3, [pc, #20]	; (8000028 <Reset_Handler+0x20>)
 8000014:	2201      	movs	r2, #1
 8000016:	601a      	str	r2, [r3, #0]

    RegToRead = PRPH_ALIAS_ADDR(GPIOA_IDR_ADDR, PUSH_BTN);
 8000018:	4d04      	ldr	r5, [pc, #16]	; (800002c <Reset_Handler+0x24>)
    RegToWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
 800001a:	4c05      	ldr	r4, [pc, #20]	; (8000030 <Reset_Handler+0x28>)
    {
        // Read word from Alias region Address that GPIOA IDR Bit 0 (PA0 Input)
        // And write the same word to Alias Region Address that corresponds to 
        // GPIOD ODR Bit 14 (PD14 Output)
        // *(PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED)) = *(PRPH_ALIAS_ADDR(GPIOA_IDR_ADDR, PUSH_BTN));
        *RegToWrite = *RegToRead;
 800001c:	682b      	ldr	r3, [r5, #0]
 800001e:	6023      	str	r3, [r4, #0]
 8000020:	e7fc      	b.n	800001c <Reset_Handler+0x14>
 8000022:	bf00      	nop
 8000024:	40023830 	.word	0x40023830
 8000028:	42418070 	.word	0x42418070
 800002c:	42400200 	.word	0x42400200
 8000030:	424182b8 	.word	0x424182b8
