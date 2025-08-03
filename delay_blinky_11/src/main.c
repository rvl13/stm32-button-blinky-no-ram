#include <stdint.h>

#define LED_RED    14   // PD14

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
    register uint32_t Counter = 1;

    // enable clock for GPIOD
    // since, we need to set single bit, we can use bitband now
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = Counter;

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state
    // Also, we will make reuse of delay counter
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = Counter;

    // we will cache the addresses for IO.
    RegToReadWrite = PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED);

    while (1)
    {
        // This is also fine, but will result in 4 bytes more due to bitwise AND 
        //*RegToReadWrite = (Counter >> 21) & 1;
        
        // use bit-21 for toggling, which will set/reset(toggle) at 
        // around a little more than half second.
        // since we are using bitband, we only need to care of 0th bit of assigned value
        // the values of other bits do not matter.
        *RegToReadWrite = (Counter >> 21);

        // increment the Counter
        Counter++;
    }

    return 0;
}
