
obj/delay_blinky_12.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	09 00 00 08                                         ....

08000008 <Reset_Handler>:
// Hence, do not include prologue or epilogue while compiling
__attribute__((naked)) int Reset_Handler(void)  {

    // multiple register variables/pointers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t Counter = 1;
 8000008:	2401      	movs	r4, #1
    register uint32_t Threshold = (uint32_t)DELAY_VALUE;
 800000a:	4e05      	ldr	r6, [pc, #20]	; (8000020 <Reset_Handler+0x18>)

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = Counter;
 800000c:	4b05      	ldr	r3, [pc, #20]	; (8000024 <Reset_Handler+0x1c>)
 800000e:	601c      	str	r4, [r3, #0]

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = Counter;
 8000010:	4b05      	ldr	r3, [pc, #20]	; (8000028 <Reset_Handler+0x20>)
 8000012:	601c      	str	r4, [r3, #0]

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
 8000014:	4d05      	ldr	r5, [pc, #20]	; (800002c <Reset_Handler+0x24>)
        // check whether the result of division is even (bit 0 : 0) or odd (bit 0 : 1).
        // since it is (unsigned) integer division, the result will change between
        // even and odd at counts defined by Threshold, that will be our delay. 
        // since we are using bitband, we only need to care of 0th bit of assigned value
        // the values of other bits do not matter.
        *RegToReadWrite = (Counter / Threshold);
 8000016:	fbb4 f3f6 	udiv	r3, r4, r6
 800001a:	602b      	str	r3, [r5, #0]

        // increment the Counter
        Counter++;
 800001c:	3401      	adds	r4, #1
        *RegToReadWrite = (Counter / Threshold);
 800001e:	e7fa      	b.n	8000016 <Reset_Handler+0xe>
 8000020:	000b1bbf 	.word	0x000b1bbf
 8000024:	4247060c 	.word	0x4247060c
 8000028:	42418070 	.word	0x42418070
 800002c:	424182b8 	.word	0x424182b8
