# stm32-button-blinky-no-ram

## What is it ?

Simple C ***button blinky*** and ***delay blinky*** codes for STM32F4, which **don't use RAM** and fit under **50 bytes**.  
Please refer this **[hackster post](https://www.hackster.io/RVLAD/50-bytes-button-blinky-on-stm32f4-which-doesn-t-use-ram-bcdadc)** for detailed explanation.  

## Project Structure

- There are multiple different projects, each introduces further/different optimizations to the previous one. Size of the compiled binary is mentioned in *(brackets)* at the end :
    - **button_blinky_01**  
        - Simple button blinky with minimal startup code. *(268 bytes)*
    - **button_blinky_02**  
        - Startup code removed and application implemented completely in Reset Handler. *(136 bytes)*
    - **button_blinky_03**  
        - Not using stack memory (local variables) and every operation being performed in core general purpose registers. *(72 bytes)*
    - **button_blinky_04**  
        - Using Bit-Banding technique for IO registers access. *(56 bytes)*
    - **button_blinky_05**  
        - Declaring Reset Handler as naked function, and removal of initial stack pointer from vector table. *(48 bytes)*
    - **button_blinky_06**  
        - Unlike previous projects, this one optimizes for speed instead of size, while keeping the size same as **button_blinky_05**. *(48 bytes)*
    - **delay_blinky_07**
        - A classic blinky with delay, written in manner similar to **button_blinky_01**. *(240 bytes)*
    - **delay_blinky_08**
        - Applies all the optimizations from **button_blinky_06**, and additionally eliminates extra loop of the delay. *(56 bytes)*
    - **delay_blinky_09**
        - Reusing the register variable, and immediate moving of constants to register instead of loading constants from ROM at the end of function. *(48 bytes)*
    - **delay_blinky_10**
        - same as the **delay_blinky_09**, but has the delay value tuned to be as much as possibly closer to 1Hz, while keeping the binary size same. *(48 bytes)*
    - **delay_blinky_11**
        - Smallest blinky which achieves delay by storing 21th bit of a freely incrementing counter in ODR. Results in a 0.76Hz blinky. *(36 bytes)*
    - **delay_blinky_12**
        - Similar to the **delay_blinky_11**, but uses division with unsigned integer (which is not a power of 2) to achieve delay. *(44 bytes)*
    - **delay_blinky_13**
        - Similar to the **delay_blinky_09**, but keeps counter uninitialzed and instead uses odd delay threshold to initialize peripherals, and a much better at being closer to 1Hz than **delay_blinky_10**. *(48 bytes)*

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

## How can I try this ?
- Make sure you have following installed : 
    - GNU make
    - OpenOCD
    - ARM GNU toolchain (arm-none-eabi)
    - Note that you will need to add all these installed locations to path, or provide full path in makefile.
- Open terminal window (command window) from any of the project directories and run this commands : 
    - **make clean** - to clean the build
    - **make all** - to build the executable
    - **make load** - to launch OpenOCD GDB server
    - keep this window running
- Connect STM32F4 discovery using USB cable, open another terminal window from the same directory and run these commands : 
    - **make debug** - to launch GDB client
    - **file ./obj/button_blinky_05.elf** - provide the executable to debug
    - **target remote localhost:3333** - connect to OpenOCD GDB server (running in other command window)
    - **monitor reset init** - initialize the target
    - **monitor flash write_image erase ./obj/button_blinky_05.elf** - flash the executable
    - **monitor reset** - reset the target and execute the code
    - now, pressing the button will light up red LED.

