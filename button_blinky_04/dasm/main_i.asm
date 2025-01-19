
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
uint32_t vectors[] __attribute__((section(".isr_vector"))) = {
    0x00020000,
    (uint32_t)&Reset_Handler
};

int Reset_Handler(void)  {
   0:	b490      	push	{r4, r7}
   2:	af00      	add	r7, sp, #0
    // just assigning a temporary address of 0
    register uint32_t *RegToWrite = (uint32_t*)0x00000000;

    // now, let's assign address of p_RCC_AHB1ENR,
    // and enable clock for GPIOA and GPIOD
    RegToWrite = (uint32_t *)AHB1ENR_ADDR;
   4:	4c06      	ldr	r4, [pc, #24]	; (20 <Reset_Handler+0x20>)
    *RegToWrite |= ( 1 << 3) | (1 << 0);
   6:	6823      	ldr	r3, [r4, #0]
   8:	f043 0309 	orr.w	r3, r3, #9
   c:	6023      	str	r3, [r4, #0]
    // RegToWrite = (uint32_t *)GPIOA_MODER_ADDR;
    // *RegToWrite &= ~( 3 << (2 * PUSH_BTN) );

    // Assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state  
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = 1;
   e:	4b05      	ldr	r3, [pc, #20]	; (24 <Reset_Handler+0x24>)
  10:	2201      	movs	r2, #1
  12:	601a      	str	r2, [r3, #0]
    while (1)
    {
        // Read word from Alias region Address that GPIOA IDR Bit 0 (PA0 Input)
        // And write the same word to Alias Region Address that corresponds to 
        // GPIOD ODR Bit 14 (PD14 Output)
        *(PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED)) = *(PRPH_ALIAS_ADDR(GPIOA_IDR_ADDR, PUSH_BTN));
  14:	4b04      	ldr	r3, [pc, #16]	; (28 <Reset_Handler+0x28>)
  16:	4a05      	ldr	r2, [pc, #20]	; (2c <Reset_Handler+0x2c>)
  18:	681b      	ldr	r3, [r3, #0]
  1a:	6013      	str	r3, [r2, #0]
  1c:	e7fa      	b.n	14 <Reset_Handler+0x14>
  1e:	bf00      	nop
  20:	40023830 	.word	0x40023830
  24:	42418070 	.word	0x42418070
  28:	42400200 	.word	0x42400200
  2c:	424182b8 	.word	0x424182b8
