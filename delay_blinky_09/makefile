
PROJECT_NAME := delay_blinky_09

SRC_DIR 		:= ./src
OBJ_DIR 		:= ./obj
ASM_DIR			:= ./asm
DISASM_DIR		:= ./dasm

CC := arm-none-eabi-gcc.exe
OBJDMP := arm-none-eabi-objdump.exe
OBJCPY := arm-none-eabi-objcopy.exe
QEMU := D:/SW_4/bin/arm-eabi-gnatemu.exe
QEMU2 := D:/SW_9/xpack-qemu-arm-7.0.0-1-win32-x64/xpack-qemu-arm-7.0.0-1/bin/qemu-system-gnuarmeclipse.exe
GDB := arm-none-eabi-gdb.exe
SIZE_UTIL := arm-none-eabi-size.exe

CPU := cortex-m4

MAP_FNM := ${PROJECT_NAME}

CFLAGS := -c -g -mcpu=$(CPU) -O0 -mthumb -mfloat-abi=soft -Wall
SFLAGS := -S -g -mcpu=$(CPU) -mthumb -mfloat-abi=soft
LDFLAGS := -mcpu=$(CPU) -mthumb -T stm32_ls.ld -nostdlib -Wall -Wl,-Map=${OBJ_DIR}/${MAP_FNM}.map

# source filenames with directory and extension.
SRC_DIR_FNM_EXT := ${wildcard ${SRC_DIR}/*.c}

# object filenames with directory and extension.
OBJ_DIR_FNM_EXT := ${patsubst ${SRC_DIR}/%.c, ${OBJ_DIR}/%.o, ${SRC_DIR_FNM_EXT}}

# executable filename with directory and extension.
EXE_DIR_FNM_EXT := ${OBJ_DIR}/${PROJECT_NAME}.elf

# binary executable filename with directory and extension.
BIN_DIR_FNM_EXT := ${OBJ_DIR}/${PROJECT_NAME}.bin

# assembly filenames with directory and extension.
ASM_DIR_FNM_EXT := ${patsubst ${SRC_DIR}/%.c, ${ASM_DIR}/%.s, ${SRC_DIR_FNM_EXT}}

# disassembly filenames with directory and extension.
DASM_DIR_FNM_EXT := ${patsubst ${SRC_DIR}/%.c, ${DISASM_DIR}/%.asm, ${SRC_DIR_FNM_EXT}} ${patsubst ${OBJ_DIR}/%.elf, ${DISASM_DIR}/%.asm, ${EXE_DIR_FNM_EXT}}
DASM_I_DIR_FNM_EXT := ${patsubst ${SRC_DIR}/%.c, ${DISASM_DIR}/%_i.asm, ${SRC_DIR_FNM_EXT}} ${patsubst ${OBJ_DIR}/%.elf, ${DISASM_DIR}/%_i.asm, ${EXE_DIR_FNM_EXT}}

# clean filenames with directory and extension.
CLN_FNM_EXT := *.o *.elf *.bin *.ali *.asm *.s *.map
CLN_OBJ_DIR_FNM_EXT := ${addprefix ${OBJ_DIR}/, ${CLN_FNM_EXT}}
CLN_ASM_DIR_FNM_EXT := ${ASM_DIR}/*.s 
CLN_DASM_DIR_FNM_EXT := ${DISASM_DIR}/*.asm
CLN_DIR_FNM_EXT_ALL := ${CLN_OBJ_DIR_FNM_EXT} ${CLN_ASM_DIR_FNM_EXT} ${CLN_DASM_DIR_FNM_EXT}

# ** use this only if you want to delete all files, even ones created by you.
# CLN_DIR_FNM_EXT_ALL := ${OBJ_DIR}/* ${ASM_DIR}/* ${DISASM_DIR}/*

# receipe for build (compile and link)
all: compile	link

# Compile
compile: ${OBJ_DIR_FNM_EXT}

${OBJ_DIR}/%.o: ${SRC_DIR}/%.c
	$(CC) $(CFLAGS) ${XTRA} -o $@ $^

# Link (Create Executable)
link: ${EXE_DIR_FNM_EXT}

${EXE_DIR_FNM_EXT}: ${OBJ_DIR_FNM_EXT}
	$(CC) $(LDFLAGS) -o $@ $^


# binary image file
bin:${BIN_DIR_FNM_EXT}

${BIN_DIR_FNM_EXT}: ${EXE_DIR_FNM_EXT}
	$(OBJCPY) -O binary $^ $@


# Assembly
asmble:${ASM_DIR_FNM_EXT}

${ASM_DIR}/%.s: ${SRC_DIR}/%.c
	$(CC) $(SFLAGS) -o $@ $^


# Disassembly
disasm:${DASM_DIR_FNM_EXT} ${DASM_I_DIR_FNM_EXT}

# Disassemble (Full and Source-InterMixed)
# The trick is to keep the Full disassembly recipies last
# So, that naming rules (*.asm and *_i.asm) do not conflict with each other.
${DISASM_DIR}/%_i.asm: ${OBJ_DIR}/%.o
	$(OBJDMP) -r -S $^ > $@

${DISASM_DIR}/%_i.asm: ${OBJ_DIR}/%.elf
	$(OBJDMP) -r -S $^ > $@

${DISASM_DIR}/%.asm: ${OBJ_DIR}/%.o
	$(OBJDMP) -r -D $^ > $@

${DISASM_DIR}/%.asm: ${OBJ_DIR}/%.elf
	$(OBJDMP) -r -D $^ > $@


# print the header of elf
header:${EXE_DIR_FNM_EXT}
	$(OBJDMP) -h $^


# size of different sections the executable
exesize: ${EXE_DIR_FNM_EXT}
	$(SIZE_UTIL) $^


# Emulate (Using QEMU)
emu:${EXE_DIR_FNM_EXT}
	$(QEMU) --board=STM32F4 --gdb --freeze-on-startup $^

emu2:${EXE_DIR_FNM_EXT}
	$(QEMU2) -cpu $(CPU) -machine STM32F4-Discovery -gdb tcp::1234 -nographic -S -kernel $^

# interactive window
emu2i:${EXE_DIR_FNM_EXT}
	$(QEMU2) -board STM32F4-Discovery -gdb tcp::1234 -S -kernel $^

#Debug (Using GDB)
debug:
	$(GDB)


# Clean
clean:
	rm -rf ${CLN_DIR_FNM_EXT_ALL}


# Load executable using OpenOCD
load:
	openocd -f board/stm32f4discovery.cfg

