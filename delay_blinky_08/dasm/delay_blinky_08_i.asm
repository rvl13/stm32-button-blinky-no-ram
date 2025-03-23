
obj/delay_blinky_08.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	09 00 00 08                                         ....

08000008 <Reset_Handler>:
// Hence, do not include prologue or epilogue while compiling
__attribute__((naked)) int Reset_Handler(void)  {

    // multiple register variables/pointers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t Counter = 0;
 8000008:	2400      	movs	r4, #0
    register const uint32_t DelayValue = (uint32_t)DELAY_VALUE;
 800000a:	4e08      	ldr	r6, [pc, #32]	; (800002c <Reset_Handler+0x24>)

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = 1;
 800000c:	4b08      	ldr	r3, [pc, #32]	; (8000030 <Reset_Handler+0x28>)
 800000e:	2201      	movs	r2, #1
 8000010:	601a      	str	r2, [r3, #0]

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state  
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = 1;
 8000012:	4b08      	ldr	r3, [pc, #32]	; (8000034 <Reset_Handler+0x2c>)
 8000014:	2201      	movs	r2, #1
 8000016:	601a      	str	r2, [r3, #0]

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
 8000018:	4d07      	ldr	r5, [pc, #28]	; (8000038 <Reset_Handler+0x30>)

    while (1)
    {
        // increment the Counter
        Counter++;
 800001a:	3401      	adds	r4, #1

        // check if expected counts have been done
        if (Counter >= DelayValue)
 800001c:	42b4      	cmp	r4, r6
 800001e:	d3fc      	bcc.n	800001a <Reset_Handler+0x12>
        {
            // reset the counter 
            Counter = 0;
 8000020:	2400      	movs	r4, #0
            // toggle the LED (use bitband)
            *RegToReadWrite = ~(*RegToReadWrite);
 8000022:	682b      	ldr	r3, [r5, #0]
 8000024:	43db      	mvns	r3, r3
 8000026:	602b      	str	r3, [r5, #0]
        Counter++;
 8000028:	e7f7      	b.n	800001a <Reset_Handler+0x12>
 800002a:	bf00      	nop
 800002c:	00200b20 	.word	0x00200b20
 8000030:	4247060c 	.word	0x4247060c
 8000034:	42418070 	.word	0x42418070
 8000038:	424182b8 	.word	0x424182b8
