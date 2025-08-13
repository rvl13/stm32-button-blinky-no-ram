#include <stdint.h>

#define LED_RED    14   // PD14
#define DELAY_VALUE     4292964791  // (4294967295 - 2002505) + 1, odd value

#define AHB1ENR_ADDR        0x40023830
#define GPIOD_MODER_ADDR    0x40020C00
#define GPIOD_ODR_ADDR      0x40020C14

// To calculate the Alias region Address of given bit in peripheral BitBand region address
#define PRPH_ALIAS_ADDR(Addr, Bit)    (uint32_t *)(0x42000000 + ( (Addr - 0x40000000)*32 + (Bit * 4) ) )

// prototype of reset handler
int Reset_Handler(void);

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
__attribute__((naked)) int Reset_Handler(void)  {

    // multiple register variables/pointers
    register uint32_t *RegToReadWrite = (uint32_t *)0x00000000;
    register uint32_t Counter;      // no need to initialize Counter
    register uint32_t DelayValue = (uint32_t)DELAY_VALUE;

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    // and the DelayValue has off value (bit 0 is 1)
    // Also, we will make reuse of delay value
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = DelayValue;

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state
    // Also, we will make reuse of delay value
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = DelayValue;

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);

    while(1)
    {
        // Now, we will downcount but from 0xFFFFFFFF
        // So, now it doesn't matter what value is there
        // in Counter since it was left uninitialized.

        // decrement the Counter
        Counter--;
        
        // check if we have downcounted to zero
        if (Counter <= DelayValue)
        {
            // reload the counter, 
            // durint the next iteration the, Counter-- will set it to 0xFFFFFFFF
            Counter = 0;

            // toggle the LED
            *RegToReadWrite = ~(*RegToReadWrite);
        }
    }

    return 0;
}
