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
	.file	"stm32_startup.c"
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
	.file 1 "src/stm32_startup.c"
	.loc 1 49 29
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 52 24
	ldr	r2, .L6
	.loc 1 52 44
	ldr	r3, .L6+4
	.loc 1 52 11
	subs	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 57 11
	ldr	r3, .L6+4
	str	r3, [r7, #20]
	.loc 1 58 11
	ldr	r3, .L6+8
	str	r3, [r7, #16]
.LBB2:
	.loc 1 61 16
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 61 2
	b	.L2
.L3:
	.loc 1 62 18 discriminator 3
	ldr	r2, [r7, #16]
	adds	r3, r2, #1
	str	r3, [r7, #16]
	.loc 1 62 8 discriminator 3
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	.loc 1 62 13 discriminator 3
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 62 11 discriminator 3
	strb	r2, [r3]
	.loc 1 61 49 discriminator 3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	.loc 1 61 2 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L3
.LBE2:
	.loc 1 66 15
	ldr	r2, .L6+12
	.loc 1 66 34
	ldr	r3, .L6+16
	.loc 1 66 13
	subs	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 69 7
	ldr	r3, .L6+16
	str	r3, [r7, #20]
.LBB3:
	.loc 1 72 16
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 72 2
	b	.L4
.L5:
	.loc 1 73 8 discriminator 3
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	.loc 1 73 11 discriminator 3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 72 49 discriminator 3
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L4:
	.loc 1 72 2 discriminator 1
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L5
.LBE3:
	.loc 1 81 2
	bl	main
	.loc 1 83 1
	nop
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	_edata
	.word	_sdata
	.word	_la_data
	.word	_ebss
	.word	_sbss
	.cfi_endproc
.LFE0:
	.size	Reset_Handler, .-Reset_Handler
.Letext0:
	.file 2 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\sys\\_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x176
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x38
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x60
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x15
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x16
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x17
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x19
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1a
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x6
	.4byte	0x8f
	.4byte	0xe7
	.uleb128 0x7
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2b
	.byte	0xa
	.4byte	0xd7
	.uleb128 0x5
	.byte	0x3
	.4byte	vectors
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x173
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x34
	.byte	0xb
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x39
	.byte	0xb
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3a
	.byte	0xb
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x159
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3d
	.byte	0x10
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x48
	.byte	0x10
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
.LASF13:
	.ascii	"_sdata\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF17:
	.ascii	"_ebss\000"
.LASF19:
	.ascii	"size_bytes\000"
.LASF24:
	.ascii	"src/stm32_startup.c\000"
.LASF26:
	.ascii	"Reset_Handler\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF14:
	.ascii	"_edata\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"vectors\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF25:
	.ascii	"E:\\oss\\stm32-button-blinky-no-ram\\arduino_button"
	.ascii	"_blinky_00\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF16:
	.ascii	"_sbss\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF21:
	.ascii	"pSRC\000"
.LASF8:
	.ascii	"long long int\000"
.LASF20:
	.ascii	"pDst\000"
.LASF15:
	.ascii	"_la_data\000"
.LASF2:
	.ascii	"short int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF22:
	.ascii	"Cntr\000"
.LASF0:
	.ascii	"signed char\000"
.LASF23:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfloat-abi=soft -march=armv7e-m -g\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
