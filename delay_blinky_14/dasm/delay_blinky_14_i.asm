
obj/delay_blinky_14.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	09 00 00 08                                         ....

08000008 <Reset_Handler>:
__attribute__((naked)) int Reset_Handler(void)  {

    // multiple register variables/pointers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t Counter;      // no need to initialize Counter
    register uint32_t DelayValue = (uint32_t)DELAY_VALUE;
 8000008:	4e06      	ldr	r6, [pc, #24]	; (8000024 <Reset_Handler+0x1c>)

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    // and the DelayValue has off value (bit 0 is 1)
    // Also, we will make reuse of delay value
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = DelayValue;
 800000a:	4b07      	ldr	r3, [pc, #28]	; (8000028 <Reset_Handler+0x20>)
 800000c:	601e      	str	r6, [r3, #0]

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state
    // Also, we will make reuse of delay value
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = DelayValue;
 800000e:	4b07      	ldr	r3, [pc, #28]	; (800002c <Reset_Handler+0x24>)
 8000010:	601e      	str	r6, [r3, #0]

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
 8000012:	4d07      	ldr	r5, [pc, #28]	; (8000030 <Reset_Handler+0x28>)
        // can take upto 1072 seconds (4294967295 / 2002505) before the first
        // toggle happens (upon Counter reaching 0). after that it will
        // work normally at 1Hz
        
        // decrement the Counter
        Counter--;
 8000014:	3c01      	subs	r4, #1
        
        // check if we have downcounted to zero
        if (0 == Counter)
 8000016:	2c00      	cmp	r4, #0
 8000018:	d1fc      	bne.n	8000014 <Reset_Handler+0xc>
        {
            // reload the counter
            Counter = DelayValue;
 800001a:	4634      	mov	r4, r6

            // toggle the LED
            *RegToReadWrite = ~(*RegToReadWrite);
 800001c:	682b      	ldr	r3, [r5, #0]
 800001e:	43db      	mvns	r3, r3
 8000020:	602b      	str	r3, [r5, #0]
        Counter--;
 8000022:	e7f7      	b.n	8000014 <Reset_Handler+0xc>
 8000024:	001e8e49 	.word	0x001e8e49
 8000028:	4247060c 	.word	0x4247060c
 800002c:	42418070 	.word	0x42418070
 8000030:	424182b8 	.word	0x424182b8
