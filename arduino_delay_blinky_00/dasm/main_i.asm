
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
    pinMode(LED_RED, OUTPUT);
   4:	2101      	movs	r1, #1
   6:	200e      	movs	r0, #14
   8:	f7ff fffe 	bl	0 <pinMode>
			8: R_ARM_THM_CALL	pinMode
}
   c:	bf00      	nop
   e:	bd80      	pop	{r7, pc}

00000010 <loop>:

// arduino loop function
void loop(void)
{
  10:	b580      	push	{r7, lr}
  12:	af00      	add	r7, sp, #0
    digitalWrite(LED_RED, HIGH);
  14:	2101      	movs	r1, #1
  16:	200e      	movs	r0, #14
  18:	f7ff fffe 	bl	0 <digitalWrite>
			18: R_ARM_THM_CALL	digitalWrite
    delay(500);
  1c:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
  20:	f7ff fffe 	bl	0 <delay>
			20: R_ARM_THM_CALL	delay
    digitalWrite(LED_RED, LOW);
  24:	2100      	movs	r1, #0
  26:	200e      	movs	r0, #14
  28:	f7ff fffe 	bl	0 <digitalWrite>
			28: R_ARM_THM_CALL	digitalWrite
    delay(500);
  2c:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
  30:	f7ff fffe 	bl	0 <delay>
			30: R_ARM_THM_CALL	delay
}
  34:	bf00      	nop
  36:	bd80      	pop	{r7, pc}

00000038 <main>:

// arduino's main function looks something similar to below.
// just that it stays hidden in main.cpp file separate from the 
// .ino sketch file
int main(void)
{
  38:	b580      	push	{r7, lr}
  3a:	af00      	add	r7, sp, #0
    // initialize the required clocks
    initGpio();
  3c:	f7ff fffe 	bl	0 <initGpio>
			3c: R_ARM_THM_CALL	initGpio

    // setup is called only once
    setup();
  40:	f7ff fffe 	bl	0 <setup>
			40: R_ARM_THM_CALL	setup

    while (1)
    {
        // loop is called infinitely
        loop();
  44:	f7ff fffe 	bl	10 <loop>
			44: R_ARM_THM_CALL	loop
  48:	e7fc      	b.n	44 <main+0xc>
