
obj/timer_blinky_18.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	09 00 00 08                                         ....

08000008 <Reset_Handler>:
    // All the required peripheral registers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t RegToRead = 0;

    // Enable Clock for GPIOD and TIM4
    RegToReadWrite = (uint32_t *)RCC_AHB1ENR_ADDR;
 8000008:	4c17      	ldr	r4, [pc, #92]	; (8000068 <Reset_Handler+0x60>)
    RegToReadWrite[0] |= ( 1 << 3);
 800000a:	6823      	ldr	r3, [r4, #0]
 800000c:	f043 0308 	orr.w	r3, r3, #8
 8000010:	6023      	str	r3, [r4, #0]
    RegToReadWrite[4] |= ( 1 << 2);
 8000012:	f104 0310 	add.w	r3, r4, #16
 8000016:	681a      	ldr	r2, [r3, #0]
 8000018:	f104 0310 	add.w	r3, r4, #16
 800001c:	f042 0204 	orr.w	r2, r2, #4
 8000020:	601a      	str	r2, [r3, #0]

    // Set Red LED (PD14) to Alternate Function 2 (TIM4_CH3)
    RegToReadWrite = (uint32_t *)GPIOD_BASE_ADDR;
 8000022:	4c12      	ldr	r4, [pc, #72]	; (800006c <Reset_Handler+0x64>)
    RegToReadWrite[GPIOx_MODER] = ( 1 << ( (2 * LED_RED) + 1) );
 8000024:	f04f 5300 	mov.w	r3, #536870912	; 0x20000000
 8000028:	6023      	str	r3, [r4, #0]
    RegToReadWrite[GPIOx_AFRH] = (2 << (4 * ( LED_RED - 8 )));
 800002a:	f104 0324 	add.w	r3, r4, #36	; 0x24
 800002e:	f04f 7200 	mov.w	r2, #33554432	; 0x2000000
 8000032:	601a      	str	r2, [r3, #0]

    // initialize TIM4 at 1Hz PWM MODE1 output compare mode
    RegToReadWrite = (uint32_t *)TIM4_BASE_ADDR;
 8000034:	4c0e      	ldr	r4, [pc, #56]	; (8000070 <Reset_Handler+0x68>)
    RegToRead = (uint32_t)PSC_ARR_CCR;
 8000036:	f44f 657a 	mov.w	r5, #4000	; 0xfa0
    RegToReadWrite[TIMx_CCMR2] = 0x60;          // set Channel 3 to Output PWM Mode 1
 800003a:	f104 031c 	add.w	r3, r4, #28
 800003e:	2260      	movs	r2, #96	; 0x60
 8000040:	601a      	str	r2, [r3, #0]
    RegToReadWrite[TIMx_PSC]   = RegToRead;     // prescaler 16MHz/4000 = 4000Hz
 8000042:	f104 0328 	add.w	r3, r4, #40	; 0x28
 8000046:	601d      	str	r5, [r3, #0]
    RegToReadWrite[TIMx_ARR]   = RegToRead;     // PWM Period 4000Hz/4000 = 1Hz = 1Sec
 8000048:	f104 032c 	add.w	r3, r4, #44	; 0x2c
 800004c:	601d      	str	r5, [r3, #0]
    RegToRead = RegToRead / 2;                  // divide by 2, 4000/2 = 2000
 800004e:	086b      	lsrs	r3, r5, #1
 8000050:	461d      	mov	r5, r3
    RegToReadWrite[TIMx_CCR3]  = RegToRead;     // PWM Duty 4000Hz/2000 = 2Hz = 0.5sec
 8000052:	f104 033c 	add.w	r3, r4, #60	; 0x3c
 8000056:	601d      	str	r5, [r3, #0]
    RegToReadWrite[TIMx_CCER]  = 0x100;         // enable Capture Compare Output for Channel 3
 8000058:	f104 0320 	add.w	r3, r4, #32
 800005c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000060:	601a      	str	r2, [r3, #0]
    RegToReadWrite[TIMx_CR1]   = 1;             // Enable Timer
 8000062:	2301      	movs	r3, #1
 8000064:	6023      	str	r3, [r4, #0]

    // Do nothing in while loop, timer is handling blinky
    while (1);
 8000066:	e7fe      	b.n	8000066 <Reset_Handler+0x5e>
 8000068:	40023830 	.word	0x40023830
 800006c:	40020c00 	.word	0x40020c00
 8000070:	40000800 	.word	0x40000800
