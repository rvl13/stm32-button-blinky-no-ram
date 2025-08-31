
obj/main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
    GPIOx_LCKR,
    GPIOx_AFRL,
    GPIOx_AFRH,
};

int main(void)  {
   0:	b480      	push	{r7}
   2:	b085      	sub	sp, #20
   4:	af00      	add	r7, sp, #0

    // All the required peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
   6:	4b1c      	ldr	r3, [pc, #112]	; (78 <main+0x78>)
   8:	60fb      	str	r3, [r7, #12]
    volatile uint32_t *p_GPIOD_BASE  = (uint32_t*)0x40020C00;
   a:	4b1c      	ldr	r3, [pc, #112]	; (7c <main+0x7c>)
   c:	60bb      	str	r3, [r7, #8]
    volatile uint32_t *p_TIM4_BASE   = (uint32_t*)0x40000800;
   e:	4b1c      	ldr	r3, [pc, #112]	; (80 <main+0x80>)
  10:	607b      	str	r3, [r7, #4]
    // uint32_t Counter = 0;

    // Enable Clock for GPIOD
    *p_RCC_AHB1ENR |= ( 1 << 3);
  12:	68fb      	ldr	r3, [r7, #12]
  14:	681b      	ldr	r3, [r3, #0]
  16:	f043 0208 	orr.w	r2, r3, #8
  1a:	68fb      	ldr	r3, [r7, #12]
  1c:	601a      	str	r2, [r3, #0]
    // Enable Clock for TIM4 (APB1ENR, at offset of 4 words-16 bytes from AHB1ENR)
    *(p_RCC_AHB1ENR + 4) |= (1 << 2);
  1e:	68fb      	ldr	r3, [r7, #12]
  20:	3310      	adds	r3, #16
  22:	681a      	ldr	r2, [r3, #0]
  24:	68fb      	ldr	r3, [r7, #12]
  26:	3310      	adds	r3, #16
  28:	f042 0204 	orr.w	r2, r2, #4
  2c:	601a      	str	r2, [r3, #0]

    // Set Red LED (PD14) to Alternate Function 2 (TIM4_CH3)
    p_GPIOD_BASE[GPIOx_MODER] = ( 1 << ( (2 * LED_RED) + 1) );
  2e:	68bb      	ldr	r3, [r7, #8]
  30:	f04f 5200 	mov.w	r2, #536870912	; 0x20000000
  34:	601a      	str	r2, [r3, #0]
    p_GPIOD_BASE[GPIOx_AFRH] = (2 << (4 * ( LED_RED - 8 )));
  36:	68bb      	ldr	r3, [r7, #8]
  38:	3324      	adds	r3, #36	; 0x24
  3a:	f04f 7200 	mov.w	r2, #33554432	; 0x2000000
  3e:	601a      	str	r2, [r3, #0]

    // initialize timer
    p_TIM4_BASE[TIMx_CCMR2] = 0x60;         // set Channel 3 to Output PWM Mode 1
  40:	687b      	ldr	r3, [r7, #4]
  42:	331c      	adds	r3, #28
  44:	2260      	movs	r2, #96	; 0x60
  46:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_PSC]   = 1600 - 1;     // prescaler 16MHz/1600 = 10KHz
  48:	687b      	ldr	r3, [r7, #4]
  4a:	3328      	adds	r3, #40	; 0x28
  4c:	f240 623f 	movw	r2, #1599	; 0x63f
  50:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_ARR]   = 10000 - 1;    // PWM Period 10KHz/10000 = 1Hz = 1Sec
  52:	687b      	ldr	r3, [r7, #4]
  54:	332c      	adds	r3, #44	; 0x2c
  56:	f242 720f 	movw	r2, #9999	; 0x270f
  5a:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_CCR3]  = 5000 - 1;     // PWM Duty 10KHz/5000 = 2Hz = 0.5sec
  5c:	687b      	ldr	r3, [r7, #4]
  5e:	333c      	adds	r3, #60	; 0x3c
  60:	f241 3287 	movw	r2, #4999	; 0x1387
  64:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_CCER]  = 0x100;        // enable Capture Compare Output for Channel 3
  66:	687b      	ldr	r3, [r7, #4]
  68:	3320      	adds	r3, #32
  6a:	f44f 7280 	mov.w	r2, #256	; 0x100
  6e:	601a      	str	r2, [r3, #0]
    p_TIM4_BASE[TIMx_CR1]   = 1;            // Enable Timer
  70:	687b      	ldr	r3, [r7, #4]
  72:	2201      	movs	r2, #1
  74:	601a      	str	r2, [r3, #0]

    // Do nothing in while loop, timer is handling blinky
    while (1);
  76:	e7fe      	b.n	76 <main+0x76>
  78:	40023830 	.word	0x40023830
  7c:	40020c00 	.word	0x40020c00
  80:	40000800 	.word	0x40000800
