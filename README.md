# stm32-button-blinky-no-ram

## What is it ?

A simple C ***button blinky*** code for STM32F4, which **doesn't use RAM** and fits under **50 bytes**.  
Please refer this **[hackster post](https://www.hackster.io/RVLAD/50-bytes-button-blinky-on-stm32f4-which-doesn-t-use-ram-bcdadc#toc-so--how-do-these-48-bytes-look-like-10)** for detailed explanation.  

## Project Structure

- There are five different projects, each introduces further optimizations to the previous one :
    - **button_blinky_01**  
        - Simple button blinky with minimal startup code.  
    - **button_blinky_02**  
        - Startup code removed and application implemented completely in Reset Handler.
    - **button_blinky_03**  
        - Not using stack memory (local variables) and every operation being performed in core general purpose registers.
    - **button_blinky_04**  
        - Using Bit-Banding technique for IO registers access.
    - **button_blinky_05**  
        - Declaring Reset Handler as naked function, and removal of initial stack pointer from vector table.  

<br>


- Each project has following directory structure :
    - **asm**
        - directory where all the assembler output files will be saved.
    - **dasm**
        - directory where all the disassembler output files will be saved.
    - **logs**
        - directory where logs can be saved, if required.
    - **obj**
        - directory where all the object files will be saved.
    - **src**
        - directory where all the C source files will be saved.
    - ***makefile***
        - makefile to help with the project build.
    - ***stm32_ls.ld***
        - linker script.


## Makefile Recipes

- Following make recipes are provided in makefile for each project
    - **all**
        - compiles all the .c source files from src directory and places .o object files in obj directory.
        - links all the .o object files in obj directory and generates .elf executable in obj directory.
    - **bin**
        - creates a .bin binary image in obj directory from .elf executable in obj directory.
    - **asmble**
        - assembles all the .c source files from src directory and places .s assembly files in asm directory.
    - **disasm**
        - disassembles all the .o object files, .elf exectable file from obj directory and places .asm disassembly files in dasm directory.
        - Full disassembly filenames will not have any suffix, i.e. ***main.asm***
        - Source Intermixed disassembly filenames will have _i suffix, i.e. ***main_i.asm***
    - **exesize**
        - prints the size information of .elf executable from obj directory.
    - **clean**
        - deletes all the files from asm, dasm and obj diectories.
    - **emu**, **emu2**, **emu2i**
        - These recipes launch the qemu emulator, however these are not required. You can make use of these recipes if you have suitable qemu emulator installed.
    - **debug**
        - launches the gdb
    - **load**
        - launches the openocd with configuration for stm32f4 discovery

