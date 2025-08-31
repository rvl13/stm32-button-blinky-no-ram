
#include <stdint.h>

#define SRAM_START  0x20000000U
#define SRAM_SIZE   (128 * 1024)    //128 KBytes
#define SRAM_END    ( (SRAM_START) + (SRAM_SIZE) )

// Now, as far as I know, the SRAM_END address we calculated above -
// lies outside the address range of SRAM.
// Infact, the very next byte after the last byte of SRAM.
// This is because, I assume, ARM uses Full Descending Stack Model 
// So, whenever we are going to PUSH first data to Stack, it will be 
// pushed to -4 address from SRAM_END, basically where actual stack starts.
// Now, the interseting thing is that under this situation a POP instruction-
// should not be called at the beggining, because of the nature of the stack.
// I think the compiler takes care of this.

#define STACK_START SRAM_END

extern uint32_t _etext;
extern uint32_t _sdata;
extern uint32_t _edata;
extern uint32_t _la_data;

extern uint32_t _sbss;
extern uint32_t _ebss;

//prototype of main
int main(void);

// prototype of __libc_init_array
// void __libc_init_array(void);

void Reset_Handler(void);

// we will store the vector table in a separate 
// user defined section called ".isr_vector",
// note that the '.' (dot) is not mandatory,
// it is just used for naming convention. 

// and also function address can be obtained without 
// using the &operator before function name.
uint32_t vectors[] __attribute__((section(".isr_vector"))) = {
    STACK_START,
    (uint32_t)&Reset_Handler
};


void Reset_Handler(void)    {

	// compute the size of .data section 
	uint32_t size_bytes = (uint32_t)&_edata - (uint32_t)&_sdata;

	// we are declaring the pointer with uint8_t type
	// because we intend to copy the data byte by byte
	// and not word by word
	uint8_t *pDst = (uint8_t *) &_sdata;		//SRAM
	uint8_t *pSRC = (uint8_t *) &_la_data;		//Flash

    //copy .data section from ROM(Flash) to SRAM, byte by byte
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
		*pDst++ = *pSRC++;
	}

    //find the size of .bss section in SRAM
	size_bytes = (uint32_t)&_ebss - (uint32_t)&_sbss;

	//! get the start address of .bss section
	pDst = (uint8_t *)&_sbss;

	//! initialize the entire .bss section with 0
	for (uint32_t Cntr = 0; Cntr < size_bytes; Cntr++)	{
		*pDst++ = 0;
	}

    //Call Init function of std library
    //only required if we are making use of the std. libraries
	//__libc_init_array();

    // at the end, call the main() application
	main();

}
