
obj/stm32_startup.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
    STACK_START,
    (uint32_t)&Reset_Handler
};


void Reset_Handler(void)    {
   0:	b580      	push	{r7, lr}
   2:	b086      	sub	sp, #24
   4:	af00      	add	r7, sp, #0

	// compute the size of .data section 
	uint32_t size_bytes = (uint32_t)&_edata - (uint32_t)&_sdata;
   6:	4a1a      	ldr	r2, [pc, #104]	; (70 <Reset_Handler+0x70>)
   8:	4b1a      	ldr	r3, [pc, #104]	; (74 <Reset_Handler+0x74>)
   a:	1ad3      	subs	r3, r2, r3
   c:	607b      	str	r3, [r7, #4]

	// we are declaring the pointer with uint8_t type
	// because we intend to copy the data byte by byte
	// and not word by word
	uint8_t *pDst = (uint8_t *) &_sdata;		//SRAM
   e:	4b19      	ldr	r3, [pc, #100]	; (74 <Reset_Handler+0x74>)
  10:	617b      	str	r3, [r7, #20]
	uint8_t *pSRC = (uint8_t *) &_la_data;		//Flash
  12:	4b19      	ldr	r3, [pc, #100]	; (78 <Reset_Handler+0x78>)
  14:	613b      	str	r3, [r7, #16]

    //copy .data section from ROM(Flash) to SRAM, byte by byte
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
  16:	2300      	movs	r3, #0
  18:	60fb      	str	r3, [r7, #12]
  1a:	e00a      	b.n	32 <Reset_Handler+0x32>
		*pDst++ = *pSRC++;
  1c:	693a      	ldr	r2, [r7, #16]
  1e:	1c53      	adds	r3, r2, #1
  20:	613b      	str	r3, [r7, #16]
  22:	697b      	ldr	r3, [r7, #20]
  24:	1c59      	adds	r1, r3, #1
  26:	6179      	str	r1, [r7, #20]
  28:	7812      	ldrb	r2, [r2, #0]
  2a:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
  2c:	68fb      	ldr	r3, [r7, #12]
  2e:	3301      	adds	r3, #1
  30:	60fb      	str	r3, [r7, #12]
  32:	68fa      	ldr	r2, [r7, #12]
  34:	687b      	ldr	r3, [r7, #4]
  36:	429a      	cmp	r2, r3
  38:	d3f0      	bcc.n	1c <Reset_Handler+0x1c>
	}

    //find the size of .bss section in SRAM
	size_bytes = (uint32_t)&_ebss - (uint32_t)&_sbss;
  3a:	4a10      	ldr	r2, [pc, #64]	; (7c <Reset_Handler+0x7c>)
  3c:	4b10      	ldr	r3, [pc, #64]	; (80 <Reset_Handler+0x80>)
  3e:	1ad3      	subs	r3, r2, r3
  40:	607b      	str	r3, [r7, #4]

	//! get the start address of .bss section
	pDst = (uint8_t *)&_sbss;
  42:	4b0f      	ldr	r3, [pc, #60]	; (80 <Reset_Handler+0x80>)
  44:	617b      	str	r3, [r7, #20]

	//! initialize the entire .bss section with 0
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
  46:	2300      	movs	r3, #0
  48:	60bb      	str	r3, [r7, #8]
  4a:	e007      	b.n	5c <Reset_Handler+0x5c>
		*pDst++ = 0;
  4c:	697b      	ldr	r3, [r7, #20]
  4e:	1c5a      	adds	r2, r3, #1
  50:	617a      	str	r2, [r7, #20]
  52:	2200      	movs	r2, #0
  54:	701a      	strb	r2, [r3, #0]
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
  56:	68bb      	ldr	r3, [r7, #8]
  58:	3301      	adds	r3, #1
  5a:	60bb      	str	r3, [r7, #8]
  5c:	68ba      	ldr	r2, [r7, #8]
  5e:	687b      	ldr	r3, [r7, #4]
  60:	429a      	cmp	r2, r3
  62:	d3f3      	bcc.n	4c <Reset_Handler+0x4c>
    //Call Init function of std library
    //only required if we are making use of the std. libraries
	//__libc_init_array();

    // at the end, call the main() application
	main();
  64:	f7ff fffe 	bl	0 <main>
			64: R_ARM_THM_CALL	main

}
  68:	bf00      	nop
  6a:	3718      	adds	r7, #24
  6c:	46bd      	mov	sp, r7
  6e:	bd80      	pop	{r7, pc}
	...
			70: R_ARM_ABS32	_edata
			74: R_ARM_ABS32	_sdata
			78: R_ARM_ABS32	_la_data
			7c: R_ARM_ABS32	_ebss
			80: R_ARM_ABS32	_sbss
