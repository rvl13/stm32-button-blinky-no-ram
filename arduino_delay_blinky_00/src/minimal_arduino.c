#include <stdint.h>
#include "stm32f4_regs.h"
#include "minimal_arduino.h"

// minimal arduino api implementation for digital read/write
// The actual arduino libraries are written in c++, but 
// can be written similarly in C.

uint32_t *RCC_PRPH = (uint32_t *)RCC_BASE_ADDR;
uint32_t *GPIOA_PRPH = (uint32_t *)GPIOA_BASE_ADDR;
uint32_t *GPIOD_PRPH = (uint32_t *)GPIOD_BASE_ADDR;

// found by trial and error, 2004 counts per millisecond
const uint32_t CountsPerMs = 2004;

void initGpio(void)
{
    // enable clock for GPIOA(Bit 0) and GPIOD(Bit 3)
    RCC_PRPH[RCC_AHB1ENR] |= (1 << 3) | (1 << 0);
}

// pinmode, first clear the both bits for given gpio pin and and set the required bits
void pinMode(uint8_t pin, uint8_t mode)
{
    switch (pin)
    {
        case PUSH_BTN:
            GPIOA_PRPH[GPIOx_MODER] = (GPIOA_PRPH[GPIOx_MODER] & ~(3U << (2*pin))) | ((mode & 3U) << (2*pin));
            break;

        case LED_RED:
            GPIOD_PRPH[GPIOx_MODER] = (GPIOD_PRPH[GPIOx_MODER] & ~(3U << (2*pin))) | ((mode & 3U) << (2*pin));
            break;

        default:
            //! nothing to do if incorrect pin specified
            break;
    }
}

// digitalRead, read the IDR and bitwise & it with bit for given pin number
uint8_t digitalRead(uint8_t pin)
{
    switch (pin)
    {
        case PUSH_BTN:
            return ( (0 != (GPIOA_PRPH[GPIOx_IDR] & (1 << pin))) ? (uint8_t)HIGH : (uint8_t)LOW );
            break;

        case LED_RED:
            return ( (0 != (GPIOD_PRPH[GPIOx_IDR] & (1 << pin))) ? (uint8_t)HIGH : (uint8_t)LOW );
            break;

        default:
            //! nothing to do if incorrect pin specified, just return LOW
            return LOW;
            break;
    }
}

// digitalRead, read ODR and then set/clear the bit for given pin number
void digitalWrite(uint8_t pin, uint8_t value)
{
    switch (pin)
    {
        case PUSH_BTN:
            ((uint8_t)HIGH == value) ? (GPIOA_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOA_PRPH[GPIOx_ODR] &= ~(1 << pin));
            break;

        case LED_RED:
            ((uint8_t)HIGH == value) ? (GPIOD_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOD_PRPH[GPIOx_ODR] &= ~(1 << pin));
            break;

        default:
            //! nothing to do if incorrect pin specified
            break;
    }
}

// a simple blocking software delay that decrements a number till it becomes zero.
void delay(uint32_t ms)
{
    uint32_t Counts = ms * CountsPerMs;

    while(Counts--);
}
