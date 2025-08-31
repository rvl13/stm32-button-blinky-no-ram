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
    FLASH(rx):ORIGIN =0x08000004,LENGTH =1024K
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

}



