#include <stdint.h>

#define LED_RED         14   // PD14
#define TIM4_CH3        3

// we are lucky that input clock to TIM4 Prescaler (16MHz) is a Square of another Integer (4000)
// Hence, we can devide 16MHz (PSC_IN) by 4000 (PSC_OUT) and further devide by 4000 (ARR)
// to get a 1Hz period of output PWM
// using same value for multiple registers will help save space
#define PSC_ARR_CCR     4000

#define RCC_AHB1ENR_ADDR    0x40023830
#define GPIOD_BASE_ADDR     0x40020C00
#define TIM4_BASE_ADDR      0x40000800

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

// prototype of reset handler
void Reset_Handler(void);

// vector table, 
// note that we are not providing initial stack pointer
// as we don't require stack memory.
// Since, the vector table starts with Reset Vector, corresponding
// offset in load address has been made in linker script.
uint32_t vectors[] __attribute__((section(".isr_vector"))) = {
    // 0x00020000,
    (uint32_t)&Reset_Handler
};

// We are telling compiler that only assembly code executes in Reset Reset_Handler
// Hence, do not include prologue or epilogue while compiling
__attribute__((naked)) void Reset_Handler(void)
{
    // All the required peripheral registers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t RegToRead = 0;

    // Enable Clock for GPIOD and TIM4
    RegToReadWrite = (uint32_t *)RCC_AHB1ENR_ADDR;
    RegToReadWrite[0] |= ( 1 << 3);
    RegToReadWrite[4] |= ( 1 << 2);

    // Set Red LED (PD14) to Alternate Function 2 (TIM4_CH3)
    RegToReadWrite = (uint32_t *)GPIOD_BASE_ADDR;
    RegToReadWrite[GPIOx_MODER] = ( 1 << ( (2 * LED_RED) + 1) );
    RegToReadWrite[GPIOx_AFRH] = (2 << (4 * ( LED_RED - 8 )));

    // initialize TIM4 at 1Hz PWM MODE1 output compare mode
    RegToReadWrite = (uint32_t *)TIM4_BASE_ADDR;
    RegToRead = (uint32_t)PSC_ARR_CCR;
    RegToReadWrite[TIMx_CCMR2] = 0x60;          // set Channel 3 to Output PWM Mode 1
    RegToReadWrite[TIMx_PSC]   = RegToRead;     // prescaler 16MHz/4000 = 4000Hz
    RegToReadWrite[TIMx_ARR]   = RegToRead;     // PWM Period 4000Hz/4000 = 1Hz = 1Sec
    RegToRead = RegToRead / 2;                  // divide by 2, 4000/2 = 2000
    RegToReadWrite[TIMx_CCR3]  = RegToRead;     // PWM Duty 4000Hz/2000 = 2Hz = 0.5sec
    RegToReadWrite[TIMx_CCER]  = 0x100;         // enable Capture Compare Output for Channel 3
    RegToReadWrite[TIMx_CR1]   = 1;             // Enable Timer

    // Do nothing in while loop, timer is handling blinky
    while (1);

}
