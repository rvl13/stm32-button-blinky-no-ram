
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
    // All the required peripheral registers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t RegToRead = 0;

    // Enable Clock for GPIOD and TIM4
    RegToReadWrite = (uint32_t *)RCC_AHB1ENR_ADDR;
   0:	4c17      	ldr	r4, [pc, #92]	; (60 <Reset_Handler+0x60>)
    RegToReadWrite[0] |= ( 1 << 3);
   2:	6823      	ldr	r3, [r4, #0]
   4:	f043 0308 	orr.w	r3, r3, #8
   8:	6023      	str	r3, [r4, #0]
    RegToReadWrite[4] |= ( 1 << 2);
   a:	f104 0310 	add.w	r3, r4, #16
   e:	681a      	ldr	r2, [r3, #0]
  10:	f104 0310 	add.w	r3, r4, #16
  14:	f042 0204 	orr.w	r2, r2, #4
  18:	601a      	str	r2, [r3, #0]

    // Set Red LED (PD14) to Alternate Function 2 (TIM4_CH3)
    RegToReadWrite = (uint32_t *)GPIOD_BASE_ADDR;
  1a:	4c12      	ldr	r4, [pc, #72]	; (64 <Reset_Handler+0x64>)
    RegToReadWrite[GPIOx_MODER] = ( 1 << ( (2 * LED_RED) + 1) );
  1c:	f04f 5300 	mov.w	r3, #536870912	; 0x20000000
  20:	6023      	str	r3, [r4, #0]
    RegToReadWrite[GPIOx_AFRH] = (2 << (4 * ( LED_RED - 8 )));
  22:	f104 0324 	add.w	r3, r4, #36	; 0x24
  26:	f04f 7200 	mov.w	r2, #33554432	; 0x2000000
  2a:	601a      	str	r2, [r3, #0]

    // initialize TIM4 at 1Hz PWM MODE1 output compare mode
    RegToReadWrite = (uint32_t *)TIM4_BASE_ADDR;
  2c:	4c0e      	ldr	r4, [pc, #56]	; (68 <Reset_Handler+0x68>)
    RegToRead = (uint32_t)PSC_ARR_CCR;
  2e:	f44f 657a 	mov.w	r5, #4000	; 0xfa0
    RegToReadWrite[TIMx_CCMR2] = 0x60;          // set Channel 3 to Output PWM Mode 1
  32:	f104 031c 	add.w	r3, r4, #28
  36:	2260      	movs	r2, #96	; 0x60
  38:	601a      	str	r2, [r3, #0]
    RegToReadWrite[TIMx_PSC]   = RegToRead;     // prescaler 16MHz/4000 = 4000Hz
  3a:	f104 0328 	add.w	r3, r4, #40	; 0x28
  3e:	601d      	str	r5, [r3, #0]
    RegToReadWrite[TIMx_ARR]   = RegToRead;     // PWM Period 4000Hz/4000 = 1Hz = 1Sec
  40:	f104 032c 	add.w	r3, r4, #44	; 0x2c
  44:	601d      	str	r5, [r3, #0]
    RegToRead = RegToRead / 2;                  // divide by 2, 4000/2 = 2000
  46:	086b      	lsrs	r3, r5, #1
  48:	461d      	mov	r5, r3
    RegToReadWrite[TIMx_CCR3]  = RegToRead;     // PWM Duty 4000Hz/2000 = 2Hz = 0.5sec
  4a:	f104 033c 	add.w	r3, r4, #60	; 0x3c
  4e:	601d      	str	r5, [r3, #0]
    RegToReadWrite[TIMx_CCER]  = 0x100;         // enable Capture Compare Output for Channel 3
  50:	f104 0320 	add.w	r3, r4, #32
  54:	f44f 7280 	mov.w	r2, #256	; 0x100
  58:	601a      	str	r2, [r3, #0]
    RegToReadWrite[TIMx_CR1]   = 1;             // Enable Timer
  5a:	2301      	movs	r3, #1
  5c:	6023      	str	r3, [r4, #0]

    // Do nothing in while loop, timer is handling blinky
    while (1);
  5e:	e7fe      	b.n	5e <Reset_Handler+0x5e>
  60:	40023830 	.word	0x40023830
  64:	40020c00 	.word	0x40020c00
  68:	40000800 	.word	0x40000800
