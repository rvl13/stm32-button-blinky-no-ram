
obj/timer_blinky_19.elf:     file format elf32-littlearm


Disassembly of section .text:

08000004 <vectors>:
 8000004:	09 00 00 08                                         ....

08000008 <Reset_Handler>:
    // All the required peripheral registers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t RegToRead = 0;

    // Enable Clock for GPIOD
    RegToReadWrite = ((uint32_t *)RCC_BASE_ADDR + RCC_AHB1ENR);
 8000008:	4c13      	ldr	r4, [pc, #76]	; (8000058 <Reset_Handler+0x50>)
    RegToRead = *RegToReadWrite;
 800000a:	6825      	ldr	r5, [r4, #0]
    *RegToReadWrite = RegToRead | (1 << 3);
 800000c:	f045 0308 	orr.w	r3, r5, #8
 8000010:	6023      	str	r3, [r4, #0]

    // jump to next register using offset difference
    RegToReadWrite += (RCC_APB1ENR - RCC_AHB1ENR);
 8000012:	3410      	adds	r4, #16
    // Enable Clock for TIM4
    RegToRead = *RegToReadWrite;
 8000014:	6825      	ldr	r5, [r4, #0]
    *RegToReadWrite = RegToRead | (1 << 2);
 8000016:	f045 0304 	orr.w	r3, r5, #4
 800001a:	6023      	str	r3, [r4, #0]


    // Set Red LED (PD14) to Alternate Function 2 (TIM4_CH3)
    // start with the GPIO MODER register
    RegToReadWrite = ((uint32_t *)GPIOD_BASE_ADDR + GPIOx_MODER);
 800001c:	4c0f      	ldr	r4, [pc, #60]	; (800005c <Reset_Handler+0x54>)
    *RegToReadWrite = ( 1 << ( (2 * LED_RED) + 1) );
 800001e:	f04f 5300 	mov.w	r3, #536870912	; 0x20000000
 8000022:	6023      	str	r3, [r4, #0]
    RegToReadWrite += (GPIOx_AFRH - GPIOx_MODER);
 8000024:	3424      	adds	r4, #36	; 0x24
    *RegToReadWrite = (2 << (4 * ( LED_RED - 8 )));
 8000026:	f04f 7300 	mov.w	r3, #33554432	; 0x2000000
 800002a:	6023      	str	r3, [r4, #0]

    // initialize TIM4 at 1Hz PWM MODE1 output compare mode
    // start with the TIM CCMR2 register
    RegToReadWrite = ((uint32_t *)TIM4_BASE_ADDR + TIMx_CCMR2);
 800002c:	4c0c      	ldr	r4, [pc, #48]	; (8000060 <Reset_Handler+0x58>)
    *RegToReadWrite = 0x60;             // set Channel 3 to Output PWM Mode 1
 800002e:	2360      	movs	r3, #96	; 0x60
 8000030:	6023      	str	r3, [r4, #0]

    // go to PSC register
    RegToReadWrite += (TIMx_PSC - TIMx_CCMR2);
 8000032:	340c      	adds	r4, #12
    RegToRead = (uint32_t)PSC_ARR_CCR;
 8000034:	f44f 657a 	mov.w	r5, #4000	; 0xfa0
    *RegToReadWrite = RegToRead;                // prescaler 16MHz/4000 = 4000Hz            
 8000038:	6025      	str	r5, [r4, #0]

    // go to ARR
    RegToReadWrite += (TIMx_ARR - TIMx_PSC);
 800003a:	3404      	adds	r4, #4
    *RegToReadWrite = RegToRead;                // PWM Period 4000Hz/4000 = 1Hz = 1Sec
 800003c:	6025      	str	r5, [r4, #0]

    // go to CCR3
    RegToRead = RegToRead / 2;                  // divide by 2, 4000/2 = 2000
 800003e:	086b      	lsrs	r3, r5, #1
 8000040:	461d      	mov	r5, r3
    RegToReadWrite += (TIMx_CCR3 - TIMx_ARR);
 8000042:	3410      	adds	r4, #16
    *RegToReadWrite = RegToRead;                // PWM Duty 4000Hz/2000 = 2Hz = 0.5sec
 8000044:	6025      	str	r5, [r4, #0]

    // go to CCER
    RegToReadWrite += (TIMx_CCER - TIMx_CCR3);  
 8000046:	3c1c      	subs	r4, #28
    *RegToReadWrite = 0x100;                    // enable Capture Compare Output for Channel 3
 8000048:	f44f 7380 	mov.w	r3, #256	; 0x100
 800004c:	6023      	str	r3, [r4, #0]

    // go to CR1
    RegToReadWrite += (TIMx_CR1 - TIMx_CCER);
 800004e:	3c20      	subs	r4, #32
    *RegToReadWrite = 1;                        // Enable Timer
 8000050:	2301      	movs	r3, #1
 8000052:	6023      	str	r3, [r4, #0]

    // Do nothing in while loop, timer is handling blinky
    while (1);
 8000054:	e7fe      	b.n	8000054 <Reset_Handler+0x4c>
 8000056:	bf00      	nop
 8000058:	40023830 	.word	0x40023830
 800005c:	40020c00 	.word	0x40020c00
 8000060:	4000081c 	.word	0x4000081c
