#ifndef _STM32F4_REGS_H_
#define _STM32F4_REGS_H_

#define RCC_BASE_ADDR       0x40023800
#define GPIOA_BASE_ADDR     0x40020000
#define GPIOD_BASE_ADDR     0x40020C00

// offset of different RCC registers in words (not bytes)
enum
{
    RCC_CR          = 0,
    RCC_PLLCFGR,
    RCC_CFGR,
    RCC_CIR,
    RCC_AHB1RSTR,
    RCC_AHB2RSTR,
    RCC_AHB3RSTR,
    RCC_RSRVD1,
    RCC_APB1RSTR,
    RCC_APB2RSTR,
    RCC_RSRVD2,
    RCC_RSRVD3,
    RCC_AHB1ENR,
    RCC_AHB2ENR,
    RCC_AHB3ENR,
    RCC_RSRVD4,
    RCC_APB1ENR,
    RCC_APB2ENR,
    RCC_RSRVD5,
    RCC_RSRVD6,
    RCC_AHB1LPENR,
    RCC_AHB2LPENR,
    RCC_AHB3LPENR,
    RCC_RSRVD7,
    RCC_APB1LPENR,
    RCC_APB2LPENR,
    RCC_RSRVD8,
    RCC_RSRVD9,
    RCC_BDCR,
    RCC_CSR,
    RCC_RSRVD10,
    RCC_RSRVD11,
    RCC_SSCGR,
    RCC_PLLI2SCFGR,
};

// offset of different GPIO registers in words (not bytes)
enum
{
    GPIOx_MODER,
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

#endif /* _STM32F4_REGS_H_ */
