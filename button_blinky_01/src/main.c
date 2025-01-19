#include <stdint.h>

#define LED_RED    14   // PD14
#define PUSH_BTN   0    // PA0

int main(void)  {

    // All the requried peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
    volatile uint32_t *p_GPIOA_MODER = (uint32_t*)0x40020000;
    volatile uint32_t *p_GPIOA_IDR   = (uint32_t*)0x40020010;
    volatile uint32_t *p_GPIOD_MODER = (uint32_t*)0x40020C00;
    volatile uint32_t *p_GPIOD_ODR   = (uint32_t*)0x40020C14;

    // Enable Clock for GPIOD and GPIOA
    *p_RCC_AHB1ENR |= ( 1 << 3) | (1 << 0);

    // Set Button B1 to input, not that we need to modify 2-bitsm for each pin
    *p_GPIOA_MODER = *p_GPIOA_MODER & ~( 3 << (2 * PUSH_BTN) );

    // Set Red LED to output
    *p_GPIOD_MODER = (*p_GPIOD_MODER | ( 1 << (2 * LED_RED)) ) & ~( 1 << ( (2 * LED_RED) + 1) ) ;

    while (1)
    {
        // check if button has been pressed
        if (0 != ( *p_GPIOA_IDR & (1 << PUSH_BTN) ) )
        {
            // Turn on the led if button is being pressed
            *p_GPIOD_ODR |= (1 << LED_RED);
        }
        else
        {
            // Turn off the led if button is released
            *p_GPIOD_ODR &= ~(1 << LED_RED);
        }
    }

    return 0;
}
