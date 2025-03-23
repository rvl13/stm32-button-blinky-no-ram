
obj/delay_blinky_09.elf:     file format elf32-littlearm


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
    register const uint32_t DelayValue = (uint32_t)DELAY_VALUE;
 800000a:	f44f 1600 	mov.w	r6, #2097152	; 0x200000

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = Counter;
 800000e:	4b06      	ldr	r3, [pc, #24]	; (8000028 <Reset_Handler+0x20>)
 8000010:	601c      	str	r4, [r3, #0]

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = Counter;
 8000012:	4b06      	ldr	r3, [pc, #24]	; (800002c <Reset_Handler+0x24>)
 8000014:	601c      	str	r4, [r3, #0]

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);
 8000016:	4d06      	ldr	r5, [pc, #24]	; (8000030 <Reset_Handler+0x28>)

    while (1)
    {
        // increment the Counter
        Counter++;
 8000018:	3401      	adds	r4, #1

        // check if expected counts have been done
        if (Counter >= DelayValue)
 800001a:	42b4      	cmp	r4, r6
 800001c:	d3fc      	bcc.n	8000018 <Reset_Handler+0x10>
        {
            // reset the counter 
            // will keep it same as it was before entering loop (= 1) 
            Counter = 1;
 800001e:	2401      	movs	r4, #1
            
            // toggle the LED (use bitband)
            // Bitwise Not operator to toggle 0th bit of alias address word
            // as only bit 0th bit is used by bitband.
            *RegToReadWrite = ~(*RegToReadWrite);
 8000020:	682b      	ldr	r3, [r5, #0]
 8000022:	43db      	mvns	r3, r3
 8000024:	602b      	str	r3, [r5, #0]
        Counter++;
 8000026:	e7f7      	b.n	8000018 <Reset_Handler+0x10>
 8000028:	4247060c 	.word	0x4247060c
 800002c:	42418070 	.word	0x42418070
 8000030:	424182b8 	.word	0x424182b8
