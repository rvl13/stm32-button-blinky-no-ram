
obj/button_blinky_04.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	00 00 02 00 09 00 00 08                             ........

08000008 <Reset_Handler>:
uint32_t vectors[] __attribute__((section(".isr_vector"))) = {
    0x00020000,
    (uint32_t)&Reset_Handler
};

int Reset_Handler(void)  {
 8000008:	b490      	push	{r4, r7}
 800000a:	af00      	add	r7, sp, #0
    // just assigning a temporary address of 0
    register uint32_t *RegToWrite = (uint32_t*)0x00000000;

    // now, let's assign address of p_RCC_AHB1ENR,
    // and enable clock for GPIOA and GPIOD
    RegToWrite = (uint32_t *)AHB1ENR_ADDR;
 800000c:	4c06      	ldr	r4, [pc, #24]	; (8000028 <Reset_Handler+0x20>)
    *RegToWrite |= ( 1 << 3) | (1 << 0);
 800000e:	6823      	ldr	r3, [r4, #0]
 8000010:	f043 0309 	orr.w	r3, r3, #9
 8000014:	6023      	str	r3, [r4, #0]
    // RegToWrite = (uint32_t *)GPIOA_MODER_ADDR;
    // *RegToWrite &= ~( 3 << (2 * PUSH_BTN) );

    // Assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state  
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = 1;
 8000016:	4b05      	ldr	r3, [pc, #20]	; (800002c <Reset_Handler+0x24>)
 8000018:	2201      	movs	r2, #1
 800001a:	601a      	str	r2, [r3, #0]
    while (1)
    {
        // Read word from Alias region Address that GPIOA IDR Bit 0 (PA0 Input)
        // And write the same word to Alias Region Address that corresponds to 
        // GPIOD ODR Bit 14 (PD14 Output)
        *(PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED)) = *(PRPH_ALIAS_ADDR(GPIOA_IDR_ADDR, PUSH_BTN));
 800001c:	4b04      	ldr	r3, [pc, #16]	; (8000030 <Reset_Handler+0x28>)
 800001e:	4a05      	ldr	r2, [pc, #20]	; (8000034 <Reset_Handler+0x2c>)
 8000020:	681b      	ldr	r3, [r3, #0]
 8000022:	6013      	str	r3, [r2, #0]
 8000024:	e7fa      	b.n	800001c <Reset_Handler+0x14>
 8000026:	bf00      	nop
 8000028:	40023830 	.word	0x40023830
 800002c:	42418070 	.word	0x42418070
 8000030:	42400200 	.word	0x42400200
 8000034:	424182b8 	.word	0x424182b8
