/* Entry point */
/*
    Note that if you do not export/define a symbol called "Reset_Handler",
    then ada linker will give following error.
    ---------------------------------------------------------------------------------
    > lib/gcc/arm-eabi/7.4.1/../../../../arm-eabi/bin/ld.exe:
      warning: cannot find entry symbol Reset_Handler; defaulting to 0000000008000000
    ---------------------------------------------------------------------------------
    That's because of the following entry command,
    which explictly says that entry point is a symbol called 'Reset_Handler'.
    Commenting this entry command will make the error disappear.
*/
ENTRY(Reset_Handler)

/* Both SRAMs clubbed together*/
/* Please mind the space after ORIGIN and LENGTH keywords */
MEMORY
{
    FLASH(rx):ORIGIN =0x08000000,LENGTH =1024K
    SRAM(rwx):ORIGIN =0x20000000,LENGTH =128K
}


/* All the sections of our exeutable
Asterik is wild card character ,
it says merge given section from all input files */

/* We will also decalre some symbols
to help us with startup code activities */

SECTIONS
{
    /*
        First is a .text section, with .isr_vector section at very first
        and then followed by .text sections of all the .o files,
        and .rodata (constants) of all the .o files at very end.
        Also, VMA and LMA are same for this section,
        hence we need not to mention these separately, just mention VMA. 
    */
    .text :
    {
        /* although only startup code has vector table, 
        but still we write this generic statement 
        to combine isr_vector from all the .o files*/
        *(.isr_vector)
        *(.text)
        *(.text.*)
        *(.init)
	    *(.fini)
        *(.rodata)
        *(.rodata.*)
        /* Word alignment */
        . = ALIGN(4);
        /* end of .text section in Flash (VMA) */
        _etext = .;
    }> FLASH

    /* Load address of .data section in final elf
        declaring this symbol is required because
        compliler may introduce some additional sections
        in beteen .text and .data section,
        resulting in breaking operation of copy of .data
        section from FLASH to SRAM, because of the incorrect 
        address used.
        In short, ._etext may not always refer to Load address
        of .data section.
    */
    _la_data = LOADADDR(.data);

    /*
        Next is .data section, that contains initialized variables
        from all the input files.
        Its LMA would be FLASH memory, but VMA would be SRAM.
        Because this section will be relocated to SRAM during runtime.
        So, linker will generate absolute addresses based on 
        SRAM address of these variables and not to the addresses
        of copy of these section stored in flash memory 
    */
    .data :
    {
        /* start of .data section in SRAM (VMA) */
        _sdata = .;
        *(.data)
        *(.data.*)
        /* Word alignment */
        . = ALIGN(4);
        /* end of .data section in SRAM (VMA) */
        _edata = .;
    }> SRAM AT> FLASH

    /*
        And then the .bss section, which contains uninitialized variables
        from all the input files.
        Since, it is uninitialized data (meaning that all initialize 0),
        we do not need to store this section in flash, as it will cost 
        us unnecessary memory occupied by zeros only
        hence, no LMA, just VMA.
    */
    .bss :
    {
        /* start of .bss section in SRAM (VMA) */
        _sbss = .;
        __bss_start__ = _sbss;
        *(.bss)
        *(.bss.*)
        *(COMMON)
        /* Word alignment */
        . = ALIGN(4);
        /* end of .bss section in SRAM (VMA) */
        _ebss = .;
        __bss_end__ = _ebss;
        . = ALIGN(4); 
	    end = .;
        __end__ = .;
    }> SRAM


}



