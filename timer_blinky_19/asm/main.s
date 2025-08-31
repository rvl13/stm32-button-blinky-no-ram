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
	.loc 1 111 1
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.loc 1 117 20
	ldr	r4, .L3
	.loc 1 118 15
	ldr	r5, [r4]
	.loc 1 119 33
	orr	r3, r5, #8
	.loc 1 119 21
	str	r3, [r4]
	.loc 1 122 20
	adds	r4, r4, #16
	.loc 1 124 15
	ldr	r5, [r4]
	.loc 1 125 33
	orr	r3, r5, #4
	.loc 1 125 21
	str	r3, [r4]
	.loc 1 130 20
	ldr	r4, .L3+4
	.loc 1 131 21
	mov	r3, #536870912
	str	r3, [r4]
	.loc 1 132 20
	adds	r4, r4, #36
	.loc 1 133 21
	mov	r3, #33554432
	str	r3, [r4]
	.loc 1 137 20
	ldr	r4, .L3+8
	.loc 1 138 21
	movs	r3, #96
	str	r3, [r4]
	.loc 1 141 20
	adds	r4, r4, #12
	.loc 1 142 15
	mov	r5, #4000
	.loc 1 143 21
	str	r5, [r4]
	.loc 1 146 20
	adds	r4, r4, #4
	.loc 1 147 21
	str	r5, [r4]
	.loc 1 150 15
	lsrs	r3, r5, #1
	mov	r5, r3
	.loc 1 151 20
	adds	r4, r4, #16
	.loc 1 152 21
	str	r5, [r4]
	.loc 1 155 20
	subs	r4, r4, #28
	.loc 1 156 21
	mov	r3, #256
	str	r3, [r4]
	.loc 1 159 20
	subs	r4, r4, #32
	.loc 1 160 21
	movs	r3, #1
	str	r3, [r4]
.L2:
	.loc 1 163 11 discriminator 1
	b	.L2
.L4:
	.align	2
.L3:
	.word	1073887280
	.word	1073875968
	.word	1073743900
	.cfi_endproc
.LFE0:
	.size	Reset_Handler, .-Reset_Handler
.Letext0:
	.file 2 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\sys\\_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x288
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xc
	.4byte	.LASF78
	.4byte	.LASF79
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
	.4byte	0x15e
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
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x16
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x17
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x19
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1b
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1d
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x1e
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x1f
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	0x1e5
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0x230
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.4byte	0x77
	.4byte	0x240
	.uleb128 0x8
	.4byte	0x70
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x1
	.byte	0x67
	.byte	0xa
	.4byte	0x230
	.uleb128 0x5
	.byte	0x3
	.4byte	vectors
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x1
	.byte	0x6e
	.byte	0x1d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x285
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x1
	.byte	0x71
	.byte	0x18
	.4byte	0x285
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x1
	.byte	0x72
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
.LASF73:
	.ascii	"GPIOx_AFRL\000"
.LASF77:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfloat-abi=soft -march=armv7e-m -g\000"
.LASF51:
	.ascii	"TIMx_CCMR1\000"
.LASF52:
	.ascii	"TIMx_CCMR2\000"
.LASF22:
	.ascii	"RCC_RSRVD3\000"
.LASF41:
	.ascii	"RCC_RSRVD10\000"
.LASF42:
	.ascii	"RCC_RSRVD11\000"
.LASF37:
	.ascii	"RCC_RSRVD8\000"
.LASF2:
	.ascii	"short int\000"
.LASF13:
	.ascii	"RCC_CFGR\000"
.LASF62:
	.ascii	"TIMx_RSRVD2\000"
.LASF31:
	.ascii	"RCC_AHB1LPENR\000"
.LASF33:
	.ascii	"RCC_AHB3LPENR\000"
.LASF45:
	.ascii	"TIMx_CR1\000"
.LASF46:
	.ascii	"TIMx_CR2\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF80:
	.ascii	"vectors\000"
.LASF49:
	.ascii	"TIMx_SR\000"
.LASF17:
	.ascii	"RCC_AHB3RSTR\000"
.LASF28:
	.ascii	"RCC_APB2ENR\000"
.LASF58:
	.ascii	"TIMx_CCR1\000"
.LASF59:
	.ascii	"TIMx_CCR2\000"
.LASF60:
	.ascii	"TIMx_CCR3\000"
.LASF61:
	.ascii	"TIMx_CCR4\000"
.LASF54:
	.ascii	"TIMx_CNT\000"
.LASF24:
	.ascii	"RCC_AHB2ENR\000"
.LASF70:
	.ascii	"GPIOx_ODR\000"
.LASF63:
	.ascii	"TIMx_DCR\000"
.LASF12:
	.ascii	"RCC_PLLCFGR\000"
.LASF47:
	.ascii	"TIMx_SMCR\000"
.LASF19:
	.ascii	"RCC_APB1RSTR\000"
.LASF6:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"RCC_RSRVD1\000"
.LASF21:
	.ascii	"RCC_RSRVD2\000"
.LASF11:
	.ascii	"RCC_CR\000"
.LASF26:
	.ascii	"RCC_RSRVD4\000"
.LASF29:
	.ascii	"RCC_RSRVD5\000"
.LASF30:
	.ascii	"RCC_RSRVD6\000"
.LASF34:
	.ascii	"RCC_RSRVD7\000"
.LASF4:
	.ascii	"long int\000"
.LASF38:
	.ascii	"RCC_RSRVD9\000"
.LASF40:
	.ascii	"RCC_CSR\000"
.LASF48:
	.ascii	"TIMx_DIER\000"
.LASF43:
	.ascii	"RCC_SSCGR\000"
.LASF68:
	.ascii	"GPIOx_PUPDR\000"
.LASF75:
	.ascii	"RegToReadWrite\000"
.LASF15:
	.ascii	"RCC_AHB1RSTR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF65:
	.ascii	"GPIOx_MODER\000"
.LASF25:
	.ascii	"RCC_AHB3ENR\000"
.LASF56:
	.ascii	"TIMx_ARR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF35:
	.ascii	"RCC_APB1LPENR\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF44:
	.ascii	"RCC_PLLI2SCFGR\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF57:
	.ascii	"TIMx_RSRVD1\000"
.LASF81:
	.ascii	"Reset_Handler\000"
.LASF74:
	.ascii	"GPIOx_AFRH\000"
.LASF32:
	.ascii	"RCC_AHB2LPENR\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF76:
	.ascii	"RegToRead\000"
.LASF20:
	.ascii	"RCC_APB2RSTR\000"
.LASF67:
	.ascii	"GPIOx_OSPEEDR\000"
.LASF14:
	.ascii	"RCC_CIR\000"
.LASF72:
	.ascii	"GPIOx_LCKR\000"
.LASF39:
	.ascii	"RCC_BDCR\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF50:
	.ascii	"TIMx_EGR\000"
.LASF71:
	.ascii	"GPIOx_BSRR\000"
.LASF53:
	.ascii	"TIMx_CCER\000"
.LASF16:
	.ascii	"RCC_AHB2RSTR\000"
.LASF36:
	.ascii	"RCC_APB2LPENR\000"
.LASF64:
	.ascii	"TIMx_DMAR\000"
.LASF66:
	.ascii	"GPIOx_OTYPER\000"
.LASF27:
	.ascii	"RCC_APB1ENR\000"
.LASF69:
	.ascii	"GPIOx_IDR\000"
.LASF78:
	.ascii	"src/main.c\000"
.LASF79:
	.ascii	"E:\\oss\\stm32-button-blinky-no-ram\\timer_blinky_1"
	.ascii	"9\000"
.LASF55:
	.ascii	"TIMx_PSC\000"
.LASF23:
	.ascii	"RCC_AHB1ENR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
