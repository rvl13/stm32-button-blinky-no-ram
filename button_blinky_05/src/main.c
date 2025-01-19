#include <stdint.h>

#define LED_RED    14   // PD14
#define PUSH_BTN   0    // PA0

#define AHB1ENR_ADDR        0x40023830
#define GPIOA_MODER_ADDR    0x40020000
#define GPIOA_IDR_ADDR      0x40020010
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

    // We will declare only one Register pointer variable for writing value
    // just assigning a temporary address of 0
    register uint32_t *RegToWrite = (uint32_t*)0x00000000;

    // now, let's assign address of p_RCC_AHB1ENR,
    // and enable clock for GPIOA and GPIOD
    RegToWrite = (uint32_t *)AHB1ENR_ADDR;
    *RegToWrite |= ( 1 << 3) | (1 << 0);
    // not using the BitBand, because it will require 2x Assignment Operations
    // One for each GPIOA Enable Bit and Another for GPIOD Enable bit
    // This will increase the instructions required, classic method above is fine.
    // *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 0)) = 1;
    // *(PRPH_ALIAS_ADDR(AHB1ENR_ADDR, 3)) = 1;

    // apparantly, this one takes 1 additional instruction,
    // even though it does the same thing
    // *(uint32_t *)AHB1ENR_ADDR |= ( 1 << 3) | (1 << 0);

    // No need to Set Button B1 as input, because reset state is input by default
    // RegToWrite = (uint32_t *)GPIOA_MODER_ADDR;
    // *RegToWrite &= ~( 3 << (2 * PUSH_BTN) );

    // assign address of GPIOD MODER, and set RED LED To output
    // Also, no need to reset bit 29, as it is zero at reset state  
    *(PRPH_ALIAS_ADDR(GPIOD_MODER_ADDR, 2 * LED_RED)) = 1;

    while (1)
    {
        // Read word from Alias region Address that GPIOA IDR Bit 0 (PA0 Input)
        // And write the same word to Alias Region Address that corresponds to 
        // GPIOD ODR Bit 14 (PD14 Output)
        *(PRPH_ALIAS_ADDR(GPIOD_ODR_ADDR, LED_RED)) = *(PRPH_ALIAS_ADDR(GPIOA_IDR_ADDR, PUSH_BTN));
    }

    return 0;
}
