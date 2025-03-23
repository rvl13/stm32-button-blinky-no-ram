
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
// Hence, do not include prologue or epilogue while compiling
__attribute__((naked)) int Reset_Handler(void)  {

    // multiple register variables/pointers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t Counter = 0;
   0:	2400      	movs	r4, #0
    register const uint32_t DelayValue = (uint32_t)DELAY_VALUE;
   2:	4e08      	ldr	r6, [pc, #32]	; (24 <Reset_Handler+0x24>)

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = 1;
   4:	4b08      	ldr	r3, [pc, #32]	; (28 <Reset_Handler+0x28>)
   6:	2201      	movs	r2, #1
   8:	601a      	str	r2, [r3, #0]

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state  
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = 1;
   a:	4b08      	ldr	r3, [pc, #32]	; (2c <Reset_Handler+0x2c>)
   c:	2201      	movs	r2, #1
   e:	601a      	str	r2, [r3, #0]

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
  10:	4d07      	ldr	r5, [pc, #28]	; (30 <Reset_Handler+0x30>)

    while (1)
    {
        // increment the Counter
        Counter++;
  12:	3401      	adds	r4, #1

        // check if expected counts have been done
        if (Counter >= DelayValue)
  14:	42b4      	cmp	r4, r6
  16:	d3fc      	bcc.n	12 <Reset_Handler+0x12>
        {
            // reset the counter 
            Counter = 0;
  18:	2400      	movs	r4, #0
            // toggle the LED (use bitband)
            *RegToReadWrite = ~(*RegToReadWrite);
  1a:	682b      	ldr	r3, [r5, #0]
  1c:	43db      	mvns	r3, r3
  1e:	602b      	str	r3, [r5, #0]
        Counter++;
  20:	e7f7      	b.n	12 <Reset_Handler+0x12>
  22:	bf00      	nop
  24:	00200b20 	.word	0x00200b20
  28:	4247060c 	.word	0x4247060c
  2c:	42418070 	.word	0x42418070
  30:	424182b8 	.word	0x424182b8
