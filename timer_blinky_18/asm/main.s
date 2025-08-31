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
	.size	vectors, 4
vectors:
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
	.loc 1 72 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.loc 1 78 20
	ldr	r4, .L3
	.loc 1 79 23
	ldr	r3, [r4]
	orr	r3, r3, #8
	str	r3, [r4]
	.loc 1 80 23
	add	r3, r4, #16
	ldr	r2, [r3]
	add	r3, r4, #16
	orr	r2, r2, #4
	str	r2, [r3]
	.loc 1 83 20
	ldr	r4, .L3+4
	.loc 1 84 33
	mov	r3, #536870912
	str	r3, [r4]
	.loc 1 85 19
	add	r3, r4, #36
	.loc 1 85 32
	mov	r2, #33554432
	str	r2, [r3]
	.loc 1 88 20
	ldr	r4, .L3+8
	.loc 1 89 15
	mov	r5, #4000
	.loc 1 90 19
	add	r3, r4, #28
	.loc 1 90 32
	movs	r2, #96
	str	r2, [r3]
	.loc 1 91 19
	add	r3, r4, #40
	.loc 1 91 32
	str	r5, [r3]
	.loc 1 92 19
	add	r3, r4, #44
	.loc 1 92 32
	str	r5, [r3]
	.loc 1 93 15
	lsrs	r3, r5, #1
	mov	r5, r3
	.loc 1 94 19
	add	r3, r4, #60
	.loc 1 94 32
	str	r5, [r3]
	.loc 1 95 19
	add	r3, r4, #32
	.loc 1 95 32
	mov	r2, #256
	str	r2, [r3]
	.loc 1 96 32
	movs	r3, #1
	str	r3, [r4]
.L2:
	.loc 1 99 11 discriminator 1
	b	.L2
.L4:
	.align	2
.L3:
	.word	1073887280
	.word	1073875968
	.word	1073743872
	.cfi_endproc
.LFE0:
	.size	Reset_Handler, .-Reset_Handler
.Letext0:
	.file 2 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\sys\\_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1ad
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
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
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.4byte	0x10a
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x155
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.4byte	0x77
	.4byte	0x165
	.uleb128 0x8
	.4byte	0x70
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.4byte	0x155
	.uleb128 0x5
	.byte	0x3
	.4byte	vectors
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1
	.byte	0x47
	.byte	0x1d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4a
	.byte	0x18
	.4byte	0x1aa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4b
	.byte	0x17
	.4byte	0x77
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x77
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.ascii	"TIMx_CNT\000"
.LASF15:
	.ascii	"TIMx_SR\000"
.LASF36:
	.ascii	"GPIOx_ODR\000"
.LASF45:
	.ascii	"E:\\oss\\stm32-button-blinky-no-ram\\timer_blinky_1"
	.ascii	"8\000"
.LASF17:
	.ascii	"TIMx_CCMR1\000"
.LASF18:
	.ascii	"TIMx_CCMR2\000"
.LASF47:
	.ascii	"Reset_Handler\000"
.LASF14:
	.ascii	"TIMx_DIER\000"
.LASF46:
	.ascii	"vectors\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF31:
	.ascii	"GPIOx_MODER\000"
.LASF32:
	.ascii	"GPIOx_OTYPER\000"
.LASF22:
	.ascii	"TIMx_ARR\000"
.LASF41:
	.ascii	"RegToReadWrite\000"
.LASF30:
	.ascii	"TIMx_DMAR\000"
.LASF23:
	.ascii	"TIMx_RSRVD1\000"
.LASF28:
	.ascii	"TIMx_RSRVD2\000"
.LASF21:
	.ascii	"TIMx_PSC\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF26:
	.ascii	"TIMx_CCR3\000"
.LASF27:
	.ascii	"TIMx_CCR4\000"
.LASF38:
	.ascii	"GPIOx_LCKR\000"
.LASF29:
	.ascii	"TIMx_DCR\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF37:
	.ascii	"GPIOx_BSRR\000"
.LASF42:
	.ascii	"RegToRead\000"
.LASF33:
	.ascii	"GPIOx_OSPEEDR\000"
.LASF24:
	.ascii	"TIMx_CCR1\000"
.LASF35:
	.ascii	"GPIOx_IDR\000"
.LASF25:
	.ascii	"TIMx_CCR2\000"
.LASF13:
	.ascii	"TIMx_SMCR\000"
.LASF34:
	.ascii	"GPIOx_PUPDR\000"
.LASF6:
	.ascii	"long long int\000"
.LASF44:
	.ascii	"src/main.c\000"
.LASF2:
	.ascii	"short int\000"
.LASF40:
	.ascii	"GPIOx_AFRH\000"
.LASF11:
	.ascii	"TIMx_CR1\000"
.LASF12:
	.ascii	"TIMx_CR2\000"
.LASF39:
	.ascii	"GPIOx_AFRL\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF19:
	.ascii	"TIMx_CCER\000"
.LASF0:
	.ascii	"signed char\000"
.LASF43:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfloat-abi=soft -march=armv7e-m -g\000"
.LASF16:
	.ascii	"TIMx_EGR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
