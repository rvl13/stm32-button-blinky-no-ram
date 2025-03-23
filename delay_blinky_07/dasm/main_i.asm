
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
#include <stdint.h>

#define LED_RED         14   // PD14
#define DELAY_VALUE     700000  // shall give approx half second delay

int main(void)  {
   0:	b480      	push	{r7}
   2:	b085      	sub	sp, #20
   4:	af00      	add	r7, sp, #0

    // All the requried peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
   6:	4b13      	ldr	r3, [pc, #76]	; (54 <main+0x54>)
   8:	60bb      	str	r3, [r7, #8]
    volatile uint32_t *p_GPIOD_MODER = (uint32_t*)0x40020C00;
   a:	4b13      	ldr	r3, [pc, #76]	; (58 <main+0x58>)
   c:	607b      	str	r3, [r7, #4]
    volatile uint32_t *p_GPIOD_ODR   = (uint32_t*)0x40020C14;
   e:	4b13      	ldr	r3, [pc, #76]	; (5c <main+0x5c>)
  10:	603b      	str	r3, [r7, #0]
    uint32_t Counter = 0;
  12:	2300      	movs	r3, #0
  14:	60fb      	str	r3, [r7, #12]

    // Enable Clock for GPIOD
    *p_RCC_AHB1ENR |= ( 1 << 3);
  16:	68bb      	ldr	r3, [r7, #8]
  18:	681b      	ldr	r3, [r3, #0]
  1a:	f043 0208 	orr.w	r2, r3, #8
  1e:	68bb      	ldr	r3, [r7, #8]
  20:	601a      	str	r2, [r3, #0]

    // Set Red LED to output
    *p_GPIOD_MODER = (*p_GPIOD_MODER | ( 1 << (2 * LED_RED)) ) & ~( 1 << ( (2 * LED_RED) + 1) ) ;
  22:	687b      	ldr	r3, [r7, #4]
  24:	681b      	ldr	r3, [r3, #0]
  26:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
  2a:	f043 5280 	orr.w	r2, r3, #268435456	; 0x10000000
  2e:	687b      	ldr	r3, [r7, #4]
  30:	601a      	str	r2, [r3, #0]

    while (1)
    {
        // delay for some time
        while( Counter++ < 700000 );
  32:	bf00      	nop
  34:	68fb      	ldr	r3, [r7, #12]
  36:	1c5a      	adds	r2, r3, #1
  38:	60fa      	str	r2, [r7, #12]
  3a:	4a09      	ldr	r2, [pc, #36]	; (60 <main+0x60>)
  3c:	4293      	cmp	r3, r2
  3e:	d9f9      	bls.n	34 <main+0x34>
        Counter = 0;
  40:	2300      	movs	r3, #0
  42:	60fb      	str	r3, [r7, #12]

        // toggle the LED (use XOR for bit toggling)
        *p_GPIOD_ODR ^= (1 << LED_RED);
  44:	683b      	ldr	r3, [r7, #0]
  46:	681b      	ldr	r3, [r3, #0]
  48:	f483 4280 	eor.w	r2, r3, #16384	; 0x4000
  4c:	683b      	ldr	r3, [r7, #0]
  4e:	601a      	str	r2, [r3, #0]
        while( Counter++ < 700000 );
  50:	e7ef      	b.n	32 <main+0x32>
  52:	bf00      	nop
  54:	40023830 	.word	0x40023830
  58:	40020c00 	.word	0x40020c00
  5c:	40020c14 	.word	0x40020c14
  60:	000aae5f 	.word	0x000aae5f
