
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
   2:	4b03      	ldr	r3, [pc, #12]	; (10 <Reset_Handler+0x10>)
   4:	601c      	str	r4, [r3, #0]
    // no need to set LED_RED pin to output Mode, 
    // keep input mode as per default after reset.

    // we will cache the addresses for IO.
    // assign address of gpio internal pull-up/pull-down register
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_PUPDR_ADDR, 2 * LED_RED);
   6:	4d03      	ldr	r5, [pc, #12]	; (14 <Reset_Handler+0x14>)
        // Since LED has a series resistor, the internal pull-up resistor will 
        // add up with the same and hence, LED will blink very faintly,
        // but still visible to human eye.
        // inspired by this : 
        // https://www.reddit.com/r/arduino/comments/zsbrck/comment/ki4xg95
        *RegToReadWrite = (Counter >> 21);
   8:	0d63      	lsrs	r3, r4, #21
   a:	602b      	str	r3, [r5, #0]

        // increment the Counter
        Counter++;
   c:	3401      	adds	r4, #1
        *RegToReadWrite = (Counter >> 21);
   e:	e7fb      	b.n	8 <Reset_Handler+0x8>
  10:	4247060c 	.word	0x4247060c
  14:	424181f0 	.word	0x424181f0
