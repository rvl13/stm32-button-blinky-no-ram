#include <stdint.h>

#define LED_RED         14   // PD14
#define DELAY_VALUE     700000  // shall give approx half second delay

int main(void)  {

    // All the requried peripheral registers
    volatile uint32_t *p_RCC_AHB1ENR = (uint32_t*)0x40023830;
    volatile uint32_t *p_GPIOD_MODER = (uint32_t*)0x40020C00;
    volatile uint32_t *p_GPIOD_ODR   = (uint32_t*)0x40020C14;
    uint32_t Counter = 0;

    // Enable Clock for GPIOD
    *p_RCC_AHB1ENR |= ( 1 << 3);

    // Set Red LED to output
    *p_GPIOD_MODER = (*p_GPIOD_MODER | ( 1 << (2 * LED_RED)) ) & ~( 1 << ( (2 * LED_RED) + 1) ) ;

    while (1)
    {
        // delay for some time
        while( Counter++ < DELAY_VALUE );
        Counter = 0;

        // toggle the LED (use XOR for bit toggling)
        *p_GPIOD_ODR ^= (1 << LED_RED);
    }

    return 0;
}
