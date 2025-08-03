
obj/delay_blinky_11.elf:     file format elf32-littlearm


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

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = Counter;
 800000a:	4b04      	ldr	r3, [pc, #16]	; (800001c <Reset_Handler+0x14>)
 800000c:	601c      	str	r4, [r3, #0]

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = Counter;
 800000e:	4b04      	ldr	r3, [pc, #16]	; (8000020 <Reset_Handler+0x18>)
 8000010:	601c      	str	r4, [r3, #0]

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
 8000012:	4d04      	ldr	r5, [pc, #16]	; (8000024 <Reset_Handler+0x1c>)
        
        // use bit-21 for toggling, which will set/reset(toggle) at 
        // around a little more than half second.
        // since we are using bitband, we only need to care of 0th bit of assigned value
        // the values of other bits do not matter.
        *RegToReadWrite = (Counter >> 21);
 8000014:	0d63      	lsrs	r3, r4, #21
 8000016:	602b      	str	r3, [r5, #0]

        // increment the Counter
        Counter++;
 8000018:	3401      	adds	r4, #1
        *RegToReadWrite = (Counter >> 21);
 800001a:	e7fb      	b.n	8000014 <Reset_Handler+0xc>
 800001c:	4247060c 	.word	0x4247060c
 8000020:	42418070 	.word	0x42418070
 8000024:	424182b8 	.word	0x424182b8
