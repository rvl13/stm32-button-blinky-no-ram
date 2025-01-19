#include <stdint.h>

#define LED_RED    14   // PD14
#define PUSH_BTN   0    // PA0

#define AHB1ENR_ADDR        0x40023830
#define GPIOA_MODER_ADDR    0x40020000
#define GPIOA_IDR_ADDR      0x40020010
#define GPIOD_MODER_ADDR    0x40020C00
#define GPIOD_ODR_ADDR      0x40020C14

// prototype for reset handler
int Reset_Handler(void);

// vector table
// also, we are intentionally providing wrong initial stack pointer address
// because we will not be using stack memory at all.
uint32_t vectors[] __attribute__((section(".isr_vector"))) = {
    0x00020000,
    (uint32_t)&Reset_Handler
};

int Reset_Handler(void)  {

    // We will declare to Register pointer variables
    // one for reading values and another for writing values
    // just assigning a temporary address of 0
    register uint32_t *RegToWrite = (uint32_t*)0x00000000;
    register uint32_t *RegToRead = (uint32_t*)0x00000000;

    // now, let's assign address of p_RCC_AHB1ENR,
    // and enable clock for GPIOA and GPIOD
    RegToWrite = (uint32_t *)AHB1ENR_ADDR;
    *RegToWrite |= ( 1 << 3) | (1 << 0);

    // No need to Set Button B1 as input, because reset state is input by default
    // RegToWrite = (uint32_t *)GPIOA_MODER_ADDR;
    // *RegToWrite &= ~( 3 << (2 * PUSH_BTN) );

    // Assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state  
    RegToWrite = (uint32_t *)GPIOD_MODER_ADDR;
    *RegToWrite |= ( 1 << (2 * LED_RED));

    // Assign address of input register address (GPIOA IDR)
    RegToRead = (uint32_t *)GPIOA_IDR_ADDR;
    // Assign address of output register to write (GPIOD ODR)
    RegToWrite = (uint32_t *)GPIOD_ODR_ADDR;

    while (1)
    {
        //! check if button has been pressed
        //! keep using the classic method will increase size
        // if (0 != ( (*RegToRead & (1 << PUSH_BTN ) ) ) )
        // {
        //     //! Turn on the led if button is being pressed
        //     *RegToWrite |= (1 << LED_RED);
        // }
        // else
        // {
        //     //! Turn off the led if button is released
        //     *RegToWrite &= ~(1 << LED_RED);
        // }

        // Read, Modify, Write.
        // But requires an extra register variable to de declared
        // Also, size will increase
        // TempVal = *RegToWrite & ~(1 << LED_RED);
        // TempVal |= (*RegToRead & (1 << PUSH_BTN) ) << LED_RED;
        // *RegToWrite = TempVal;

        // below statement is equivalent to above read, modify, write
        // But we don't need to declare an additional register variable, 
        // compiler will decide which to use and also results in lower size
        *RegToWrite = ( *RegToWrite & ~(1 << LED_RED) ) | \
                      ( (*RegToRead & (1 << PUSH_BTN) ) << LED_RED) ;

        // To reduce few bytes more from compiled binary, we can also do below. 
        // But this will have side effects as it will also overwrite bits other
        // than the PD14.
        // Read from GPIOA IDR, Left Shift by 14, and Write to GPIOD ODR
        // *RegToWrite = ( *RegToRead << 14);
        // *RegToWrite = ( (*RegToRead & (1 << PUSH_BTN) ) << 14);
    }

    return 0;
}
