
obj/delay_blinky_15.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	09 00 00 08                                         ....

08000008 <Reset_Handler>:
__attribute__((naked)) int Reset_Handler(void)  {

    // multiple register variables/pointers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t Counter;      // no need to initialize Counter
    register uint32_t DelayValue = (uint32_t)DELAY_VALUE;
 8000008:	4d06      	ldr	r5, [pc, #24]	; (8000024 <Reset_Handler+0x1c>)

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    // and the DelayValue has off value (bit 0 is 1)
    // Also, we will make reuse of delay value
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = DelayValue;
 800000a:	4b07      	ldr	r3, [pc, #28]	; (8000028 <Reset_Handler+0x20>)
 800000c:	601d      	str	r5, [r3, #0]

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state
    // Also, we will make reuse of delay value
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = DelayValue;
 800000e:	4b07      	ldr	r3, [pc, #28]	; (800002c <Reset_Handler+0x24>)
 8000010:	601d      	str	r5, [r3, #0]

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
 8000012:	4e07      	ldr	r6, [pc, #28]	; (8000030 <Reset_Handler+0x28>)
        // Now, we will downcount but from 0xFFFFFFFF
        // So, now it doesn't matter what value is there
        // in Counter since it was left uninitialized.

        // decrement the Counter
        Counter--;
 8000014:	3c01      	subs	r4, #1
        
        // check if we have downcounted to zero
        if (Counter <= DelayValue)
 8000016:	42ac      	cmp	r4, r5
 8000018:	d8fc      	bhi.n	8000014 <Reset_Handler+0xc>
        {
            // reload the counter, 
            // durint the next iteration the, Counter-- will set it to 0xFFFFFFFF
            Counter = 0;
 800001a:	2400      	movs	r4, #0

            // toggle the LED
            *RegToReadWrite = ~(*RegToReadWrite);
 800001c:	6833      	ldr	r3, [r6, #0]
 800001e:	43db      	mvns	r3, r3
 8000020:	6033      	str	r3, [r6, #0]
        Counter--;
 8000022:	e7f7      	b.n	8000014 <Reset_Handler+0xc>
 8000024:	ffe171b7 	.word	0xffe171b7
 8000028:	4247060c 	.word	0x4247060c
 800002c:	42418070 	.word	0x42418070
 8000030:	424182b8 	.word	0x424182b8
