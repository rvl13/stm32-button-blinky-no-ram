	.cpu cortex-m4
	.arch armv7e-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	vectors
	.section	.isr_vector,"aw"
	.align	2
	.type	vectors, %object
	.size	vectors, 8
vectors:
	.word	537001984
	.word	Reset_Handler
	.text
	.align	1
	.global	Reset_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Reset_Handler, %function
Reset_Handler:
.LFB0:
	.file 1 "src/main.c"
	.loc 1 16 26
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 19 24
	ldr	r3, .L5
	str	r3, [r7, #20]
	.loc 1 20 24
	ldr	r3, .L5+4
	str	r3, [r7, #16]
	.loc 1 21 24
	ldr	r3, .L5+8
	str	r3, [r7, #12]
	.loc 1 22 24
	ldr	r3, .L5+12
	str	r3, [r7, #8]
	.loc 1 23 24
	ldr	r3, .L5+16
	str	r3, [r7, #4]
	.loc 1 26 20
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	orr	r2, r3, #9
	ldr	r3, [r7, #20]
	str	r2, [r3]
	.loc 1 29 22
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	.loc 1 29 37
	bic	r2, r3, #3
	.loc 1 29 20
	ldr	r3, [r7, #16]
	str	r2, [r3]
	.loc 1 32 23
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	.loc 1 32 64
	bic	r3, r3, #805306368
	orr	r2, r3, #268435456
	.loc 1 32 20
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L4:
	.loc 1 37 20
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	.loc 1 37 33
	and	r3, r3, #1
	.loc 1 37 12
	cmp	r3, #0
	beq	.L2
	.loc 1 40 26
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #16384
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L4
.L2:
	.loc 1 45 26
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #16384
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 37 12
	b	.L4
.L6:
	.align	2
.L5:
	.word	1073887280
	.word	1073872896
	.word	1073872912
	.word	1073875968
	.word	1073875988
	.cfi_endproc
.LFE0:
	.size	Reset_Handler, .-Reset_Handler
.Letext0:
	.file 2 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\sys\\_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x113
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x54
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.uleb128 0x5
	.4byte	0x77
	.uleb128 0x6
	.4byte	0x77
	.4byte	0x98
	.uleb128 0x7
	.4byte	0x70
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb
	.byte	0xa
	.4byte	0x88
	.uleb128 0x5
	.byte	0x3
	.4byte	vectors
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0x13
	.byte	0x18
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x1
	.byte	0x14
	.byte	0x18
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x15
	.byte	0x18
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x16
	.byte	0x18
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x17
	.byte	0x18
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x83
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF20:
	.ascii	"Reset_Handler\000"
.LASF18:
	.ascii	"E:\\oss\\stm32-button-blinky-no-ram\\button_blinky_"
	.ascii	"02\000"
.LASF15:
	.ascii	"p_GPIOD_ODR\000"
.LASF14:
	.ascii	"p_GPIOD_MODER\000"
.LASF11:
	.ascii	"p_RCC_AHB1ENR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF19:
	.ascii	"vectors\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF13:
	.ascii	"p_GPIOA_IDR\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"long long int\000"
.LASF17:
	.ascii	"src/main.c\000"
.LASF2:
	.ascii	"short int\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"p_GPIOA_MODER\000"
.LASF16:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfloat-abi=soft -march=armv7e-m -g\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
