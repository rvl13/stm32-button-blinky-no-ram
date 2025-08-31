#include <stdint.h>

#define LED_RED         14   // PD14

// offset of different timer registers in words (not bytes)
enum
{
    TIMx_CR1    = 0,
    TIMx_CR2,
    TIMx_SMCR,
    TIMx_DIER,
    TIMx_SR,
    TIMx_EGR,
    TIMx_CCMR1,
    TIMx_CCMR2,
    TIMx_CCER,
    TIMx_CNT,
    TIMx_PSC,
    TIMx_ARR,
    TIMx_RSRVD1,
    TIMx_CCR1,
    TIMx_CCR2,
    TIMx_CCR3,
    TIMx_CCR4,
    TIMx_RSRVD2,
    TIMx_DCR,
    TIMx_DMAR,
};

// offset of different GPIO registers in words (not bytes)
enum
{
    GPIOx_MODER = 0,
    GPIOx_OTYPER,
    GPIOx_OSPEEDR,
    GPIOx_PUPDR,
    GPIOx_IDR,
    GPIOx_ODR,
    GPIOx_BSRR,
    GPIOx_LCKR,
    GPIOx_AFRL,
    GPIOx_AFRH,
};

int main(void)  {

    // All the required peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
    volatile uint32_t *p_GPIOD_BASE  = (uint32_t*)0x40020C00;
    volatile uint32_t *p_TIM4_BASE   = (uint32_t*)0x40000800;
    // uint32_t Counter = 0;

    // Enable Clock for GPIOD
    *p_RCC_AHB1ENR |= ( 1 << 3);
    // Enable Clock for TIM4 (APB1ENR, at offset of 4 words-16 bytes from AHB1ENR)
    *(p_RCC_AHB1ENR + 4) |= (1 << 2);

    // Set Red LED (PD14) to Alternate Function 2 (TIM4_CH3)
    p_GPIOD_BASE[GPIOx_MODER] = ( 1 << ( (2 * LED_RED) + 1) );
    p_GPIOD_BASE[GPIOx_AFRH] = (2 << (4 * ( LED_RED - 8 )));

    // initialize timer
    p_TIM4_BASE[TIMx_CCMR2] = 0x60;         // set Channel 3 to Output PWM Mode 1
    p_TIM4_BASE[TIMx_PSC]   = 1600 - 1;     // prescaler 16MHz/1600 = 10KHz
    p_TIM4_BASE[TIMx_ARR]   = 10000 - 1;    // PWM Period 10KHz/10000 = 1Hz = 1Sec
    p_TIM4_BASE[TIMx_CCR3]  = 5000 - 1;     // PWM Duty 10KHz/5000 = 2Hz = 0.5sec
    p_TIM4_BASE[TIMx_CCER]  = 0x100;        // enable Capture Compare Output for Channel 3
    p_TIM4_BASE[TIMx_CR1]   = 1;            // Enable Timer

    // Do nothing in while loop, timer is handling blinky
    while (1);

    return 0;
}
