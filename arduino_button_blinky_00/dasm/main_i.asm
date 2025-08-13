
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <setup>:
#include <stdint.h>
#include "minimal_arduino.h"

// arduino setup function
void setup(void)
{
   0:	b580      	push	{r7, lr}
   2:	af00      	add	r7, sp, #0
    pinMode(PUSH_BTN, INPUT);
   4:	2100      	movs	r1, #0
   6:	2000      	movs	r0, #0
   8:	f7ff fffe 	bl	0 <pinMode>
			8: R_ARM_THM_CALL	pinMode
    pinMode(LED_RED, OUTPUT);
   c:	2101      	movs	r1, #1
   e:	200e      	movs	r0, #14
  10:	f7ff fffe 	bl	0 <pinMode>
			10: R_ARM_THM_CALL	pinMode
}
  14:	bf00      	nop
  16:	bd80      	pop	{r7, pc}

00000018 <loop>:

// arduino loop function
void loop(void)
{
  18:	b580      	push	{r7, lr}
  1a:	af00      	add	r7, sp, #0
    if (HIGH == digitalRead(PUSH_BTN))
  1c:	2000      	movs	r0, #0
  1e:	f7ff fffe 	bl	0 <digitalRead>
			1e: R_ARM_THM_CALL	digitalRead
  22:	4603      	mov	r3, r0
  24:	2b01      	cmp	r3, #1
  26:	d104      	bne.n	32 <loop+0x1a>
    {
        digitalWrite(LED_RED, HIGH);
  28:	2101      	movs	r1, #1
  2a:	200e      	movs	r0, #14
  2c:	f7ff fffe 	bl	0 <digitalWrite>
			2c: R_ARM_THM_CALL	digitalWrite
    }
    else
    {
        digitalWrite(LED_RED, LOW);
    }
}
  30:	e003      	b.n	3a <loop+0x22>
        digitalWrite(LED_RED, LOW);
  32:	2100      	movs	r1, #0
  34:	200e      	movs	r0, #14
  36:	f7ff fffe 	bl	0 <digitalWrite>
			36: R_ARM_THM_CALL	digitalWrite
}
  3a:	bf00      	nop
  3c:	bd80      	pop	{r7, pc}

0000003e <main>:

// arduino's main function looks something similar to below.
// just that it stays hidden in main.cpp file separate from the 
// .ino sketch file
int main(void)
{
  3e:	b580      	push	{r7, lr}
  40:	af00      	add	r7, sp, #0
    // initialize the required clocks
    initGpio();
  42:	f7ff fffe 	bl	0 <initGpio>
			42: R_ARM_THM_CALL	initGpio

    // setup is called only once
    setup();
  46:	f7ff fffe 	bl	0 <setup>
			46: R_ARM_THM_CALL	setup

    while (1)
    {
        // loop is called infinitely
        loop();
  4a:	f7ff fffe 	bl	18 <loop>
			4a: R_ARM_THM_CALL	loop
  4e:	e7fc      	b.n	4a <main+0xc>
