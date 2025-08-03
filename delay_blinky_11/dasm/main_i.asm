
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
// Hence, do not include prologue or epilogue while compiling
__attribute__((naked)) int Reset_Handler(void)  {

    // multiple register variables/pointers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t Counter = 1;
   0:	2401      	movs	r4, #1

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = Counter;
   2:	4b04      	ldr	r3, [pc, #16]	; (14 <Reset_Handler+0x14>)
   4:	601c      	str	r4, [r3, #0]

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = Counter;
   6:	4b04      	ldr	r3, [pc, #16]	; (18 <Reset_Handler+0x18>)
   8:	601c      	str	r4, [r3, #0]

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
   a:	4d04      	ldr	r5, [pc, #16]	; (1c <Reset_Handler+0x1c>)
        
        // use bit-21 for toggling, which will set/reset(toggle) at 
        // around a little more than half second.
        // since we are using bitband, we only need to care of 0th bit of assigned value
        // the values of other bits do not matter.
        *RegToReadWrite = (Counter >> 21);
   c:	0d63      	lsrs	r3, r4, #21
   e:	602b      	str	r3, [r5, #0]

        // increment the Counter
        Counter++;
  10:	3401      	adds	r4, #1
        *RegToReadWrite = (Counter >> 21);
  12:	e7fb      	b.n	c <Reset_Handler+0xc>
  14:	4247060c 	.word	0x4247060c
  18:	42418070 	.word	0x42418070
  1c:	424182b8 	.word	0x424182b8
