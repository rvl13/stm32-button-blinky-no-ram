
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
// Hence, do not include prologue or epilogue while compiling
__attribute__((naked)) int Reset_Handler(void)  {

    // multiple register variables/pointers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t Counter = 1;
   0:	2401      	movs	r4, #1
    register const uint32_t DelayValue = (uint32_t)DELAY_VALUE;
   2:	f44f 1600 	mov.w	r6, #2097152	; 0x200000

    // enable clock for GPIOA and GPIOD
    // since, we need to set single bit, we can use bitband now
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = Counter;
   6:	4b06      	ldr	r3, [pc, #24]	; (20 <Reset_Handler+0x20>)
   8:	601c      	str	r4, [r3, #0]

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = Counter;
   a:	4b06      	ldr	r3, [pc, #24]	; (24 <Reset_Handler+0x24>)
   c:	601c      	str	r4, [r3, #0]

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
   e:	4d06      	ldr	r5, [pc, #24]	; (28 <Reset_Handler+0x28>)

    while (1)
    {
        // increment the Counter
        Counter++;
  10:	3401      	adds	r4, #1

        // check if expected counts have been done
        if (Counter >= DelayValue)
  12:	42b4      	cmp	r4, r6
  14:	d3fc      	bcc.n	10 <Reset_Handler+0x10>
        {
            // reset the counter 
            // will keep it same as it was before entering loop (= 1) 
            Counter = 1;
  16:	2401      	movs	r4, #1
            
            // toggle the LED (use bitband)
            // Bitwise Not operator to toggle 0th bit of alias address word
            // as only bit 0th bit is used by bitband.
            *RegToReadWrite = ~(*RegToReadWrite);
  18:	682b      	ldr	r3, [r5, #0]
  1a:	43db      	mvns	r3, r3
  1c:	602b      	str	r3, [r5, #0]
        Counter++;
  1e:	e7f7      	b.n	10 <Reset_Handler+0x10>
  20:	4247060c 	.word	0x4247060c
  24:	42418070 	.word	0x42418070
  28:	424182b8 	.word	0x424182b8
