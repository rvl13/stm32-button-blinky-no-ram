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
	.file	"minimal_arduino.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	RCC_PRPH
	.data
	.align	2
	.type	RCC_PRPH, %object
	.size	RCC_PRPH, 4
RCC_PRPH:
	.word	1073887232
	.global	GPIOA_PRPH
	.align	2
	.type	GPIOA_PRPH, %object
	.size	GPIOA_PRPH, 4
GPIOA_PRPH:
	.word	1073872896
	.global	GPIOD_PRPH
	.align	2
	.type	GPIOD_PRPH, %object
	.size	GPIOD_PRPH, 4
GPIOD_PRPH:
	.word	1073875968
	.global	CountsPerMs
	.section	.rodata
	.align	2
	.type	CountsPerMs, %object
	.size	CountsPerMs, 4
CountsPerMs:
	.word	2004
	.text
	.align	1
	.global	initGpio
	.syntax unified
	.thumb
	.thumb_func
	.type	initGpio, %function
initGpio:
.LFB0:
	.file 1 "src/minimal_arduino.c"
	.loc 1 17 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 19 27
	ldr	r3, .L2
	ldr	r3, [r3]
	adds	r3, r3, #48
	ldr	r2, [r3]
	ldr	r3, .L2
	ldr	r3, [r3]
	adds	r3, r3, #48
	orr	r2, r2, #9
	str	r2, [r3]
	.loc 1 20 1
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L3:
	.align	2
.L2:
	.word	RCC_PRPH
	.cfi_endproc
.LFE0:
	.size	initGpio, .-initGpio
	.align	1
	.global	pinMode
	.syntax unified
	.thumb
	.thumb_func
	.type	pinMode, %function
pinMode:
.LFB1:
	.loc 1 24 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	.loc 1 25 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5
	cmp	r3, #14
	beq	.L6
	.loc 1 37 13
	b	.L8
.L5:
	.loc 1 28 50
	ldr	r3, .L9
	ldr	r3, [r3]
	ldr	r2, [r3]
	.loc 1 28 76
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 28 71
	movs	r1, #3
	lsl	r3, r1, r3
	.loc 1 28 66
	mvns	r3, r3
	.loc 1 28 64
	and	r1, r2, r3
	.loc 1 28 93
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	and	r2, r3, #3
	.loc 1 28 104
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 28 99
	lsls	r2, r2, r3
	.loc 1 28 23
	ldr	r3, .L9
	ldr	r3, [r3]
	.loc 1 28 84
	orrs	r2, r2, r1
	.loc 1 28 37
	str	r2, [r3]
	.loc 1 29 13
	b	.L8
.L6:
	.loc 1 32 50
	ldr	r3, .L9+4
	ldr	r3, [r3]
	ldr	r2, [r3]
	.loc 1 32 76
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 32 71
	movs	r1, #3
	lsl	r3, r1, r3
	.loc 1 32 66
	mvns	r3, r3
	.loc 1 32 64
	and	r1, r2, r3
	.loc 1 32 93
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	and	r2, r3, #3
	.loc 1 32 104
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 32 99
	lsls	r2, r2, r3
	.loc 1 32 23
	ldr	r3, .L9+4
	ldr	r3, [r3]
	.loc 1 32 84
	orrs	r2, r2, r1
	.loc 1 32 37
	str	r2, [r3]
	.loc 1 33 13
	nop
.L8:
	.loc 1 39 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L10:
	.align	2
.L9:
	.word	GPIOA_PRPH
	.word	GPIOD_PRPH
	.cfi_endproc
.LFE1:
	.size	pinMode, .-pinMode
	.align	1
	.global	digitalRead
	.syntax unified
	.thumb
	.thumb_func
	.type	digitalRead, %function
digitalRead:
.LFB2:
	.loc 1 43 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 44 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L12
	cmp	r3, #14
	beq	.L13
	b	.L16
.L12:
	.loc 1 47 39
	ldr	r3, .L17
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	.loc 1 47 56
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	.loc 1 47 51
	ands	r3, r3, r2
	.loc 1 47 82
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L15
.L13:
	.loc 1 51 39
	ldr	r3, .L17+4
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	.loc 1 51 56
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	.loc 1 51 51
	ands	r3, r3, r2
	.loc 1 51 82
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L15
.L16:
	.loc 1 56 20
	movs	r3, #0
.L15:
	.loc 1 59 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L18:
	.align	2
.L17:
	.word	GPIOA_PRPH
	.word	GPIOD_PRPH
	.cfi_endproc
.LFE2:
	.size	digitalRead, .-digitalRead
	.align	1
	.global	digitalWrite
	.syntax unified
	.thumb
	.thumb_func
	.type	digitalWrite, %function
digitalWrite:
.LFB3:
	.loc 1 63 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	.loc 1 64 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L20
	cmp	r3, #14
	beq	.L21
	.loc 1 76 13
	b	.L25
.L20:
	.loc 1 67 78
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L23
	.loc 1 67 63 discriminator 1
	ldr	r3, .L29
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r2, [r3]
	.loc 1 67 69 discriminator 1
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r3, r1, r3
	mov	r1, r3
	.loc 1 67 63 discriminator 1
	ldr	r3, .L29
	ldr	r3, [r3]
	adds	r3, r3, #20
	orrs	r2, r2, r1
	str	r2, [r3]
	.loc 1 68 13 discriminator 1
	b	.L25
.L23:
	.loc 1 67 103 discriminator 2
	ldr	r3, .L29
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r2, [r3]
	.loc 1 67 110 discriminator 2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r3, r1, r3
	.loc 1 67 106 discriminator 2
	mvns	r3, r3
	mov	r1, r3
	.loc 1 67 103 discriminator 2
	ldr	r3, .L29
	ldr	r3, [r3]
	adds	r3, r3, #20
	ands	r2, r2, r1
	str	r2, [r3]
	.loc 1 68 13 discriminator 2
	b	.L25
.L21:
	.loc 1 71 78
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L26
	.loc 1 71 63 discriminator 1
	ldr	r3, .L29+4
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r2, [r3]
	.loc 1 71 69 discriminator 1
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r3, r1, r3
	mov	r1, r3
	.loc 1 71 63 discriminator 1
	ldr	r3, .L29+4
	ldr	r3, [r3]
	adds	r3, r3, #20
	orrs	r2, r2, r1
	str	r2, [r3]
	.loc 1 72 13 discriminator 1
	b	.L28
.L26:
	.loc 1 71 103 discriminator 2
	ldr	r3, .L29+4
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r2, [r3]
	.loc 1 71 110 discriminator 2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r3, r1, r3
	.loc 1 71 106 discriminator 2
	mvns	r3, r3
	mov	r1, r3
	.loc 1 71 103 discriminator 2
	ldr	r3, .L29+4
	ldr	r3, [r3]
	adds	r3, r3, #20
	ands	r2, r2, r1
	str	r2, [r3]
.L28:
	.loc 1 72 13
	nop
.L25:
	.loc 1 78 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L30:
	.align	2
.L29:
	.word	GPIOA_PRPH
	.word	GPIOD_PRPH
	.cfi_endproc
.LFE3:
	.size	digitalWrite, .-digitalWrite
	.align	1
	.global	delay
	.syntax unified
	.thumb
	.thumb_func
	.type	delay, %function
delay:
.LFB4:
	.loc 1 82 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 83 26
	movw	r2, #2004
	.loc 1 83 14
	ldr	r3, [r7, #4]
	mul	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 85 10
	nop
.L32:
	.loc 1 85 17 discriminator 1
	ldr	r3, [r7, #12]
	subs	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 85 10 discriminator 1
	cmp	r3, #0
	bne	.L32
	.loc 1 86 1
	nop
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE4:
	.size	delay, .-delay
.Letext0:
	.file 2 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\sw_8\\arm_gcc_10.3\\10 2021.10\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "src/stm32f4_regs.h"
	.file 5 "src/minimal_arduino.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x306
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
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
	.4byte	0x8f
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x4
	.byte	0xa
	.byte	0x1
	.4byte	0x17b
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x1a
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x1b
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x1d
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x1f
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x21
	.byte	0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x4
	.byte	0x31
	.byte	0x1
	.4byte	0x1c6
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0xd
	.byte	0x1
	.4byte	0x1e1
	.uleb128 0x8
	.ascii	"LOW\000"
	.byte	0
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x1
	.byte	0x9
	.byte	0xb
	.4byte	0x1f3
	.uleb128 0x5
	.byte	0x3
	.4byte	RCC_PRPH
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x1
	.byte	0xa
	.byte	0xb
	.4byte	0x1f3
	.uleb128 0x5
	.byte	0x3
	.4byte	GPIOA_PRPH
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.4byte	0x1f3
	.uleb128 0x5
	.byte	0x3
	.4byte	GPIOD_PRPH
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.4byte	0x9b
	.uleb128 0x5
	.byte	0x3
	.4byte	CountsPerMs
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x263
	.uleb128 0xc
	.ascii	"ms\000"
	.byte	0x1
	.byte	0x51
	.byte	0x15
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0x53
	.byte	0xe
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x298
	.uleb128 0xc
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x3e
	.byte	0x1b
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x1
	.byte	0x3e
	.byte	0x28
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.4byte	0x83
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c2
	.uleb128 0xc
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x2a
	.byte	0x1d
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f7
	.uleb128 0xc
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x17
	.byte	0x16
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x1
	.byte	0x17
	.byte	0x23
	.4byte	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
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
.LASF55:
	.ascii	"GPIOx_AFRL\000"
.LASF67:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfloat-abi=soft -march=armv7e-m -g\000"
.LASF65:
	.ascii	"pinMode\000"
.LASF24:
	.ascii	"RCC_RSRVD3\000"
.LASF43:
	.ascii	"RCC_RSRVD10\000"
.LASF44:
	.ascii	"RCC_RSRVD11\000"
.LASF39:
	.ascii	"RCC_RSRVD8\000"
.LASF2:
	.ascii	"short int\000"
.LASF15:
	.ascii	"RCC_CFGR\000"
.LASF33:
	.ascii	"RCC_AHB1LPENR\000"
.LASF35:
	.ascii	"RCC_AHB3LPENR\000"
.LASF59:
	.ascii	"GPIOA_PRPH\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF62:
	.ascii	"delay\000"
.LASF66:
	.ascii	"mode\000"
.LASF19:
	.ascii	"RCC_AHB3RSTR\000"
.LASF30:
	.ascii	"RCC_APB2ENR\000"
.LASF69:
	.ascii	"E:\\oss\\stm32-button-blinky-no-ram\\arduino_delay_"
	.ascii	"blinky_00\000"
.LASF64:
	.ascii	"value\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF22:
	.ascii	"RCC_APB2RSTR\000"
.LASF26:
	.ascii	"RCC_AHB2ENR\000"
.LASF52:
	.ascii	"GPIOx_ODR\000"
.LASF14:
	.ascii	"RCC_PLLCFGR\000"
.LASF70:
	.ascii	"Counts\000"
.LASF60:
	.ascii	"GPIOD_PRPH\000"
.LASF21:
	.ascii	"RCC_APB1RSTR\000"
.LASF8:
	.ascii	"long long int\000"
.LASF20:
	.ascii	"RCC_RSRVD1\000"
.LASF23:
	.ascii	"RCC_RSRVD2\000"
.LASF13:
	.ascii	"RCC_CR\000"
.LASF28:
	.ascii	"RCC_RSRVD4\000"
.LASF31:
	.ascii	"RCC_RSRVD5\000"
.LASF32:
	.ascii	"RCC_RSRVD6\000"
.LASF36:
	.ascii	"RCC_RSRVD7\000"
.LASF4:
	.ascii	"long int\000"
.LASF40:
	.ascii	"RCC_RSRVD9\000"
.LASF42:
	.ascii	"RCC_CSR\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF45:
	.ascii	"RCC_SSCGR\000"
.LASF58:
	.ascii	"RCC_PRPH\000"
.LASF50:
	.ascii	"GPIOx_PUPDR\000"
.LASF17:
	.ascii	"RCC_AHB1RSTR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF47:
	.ascii	"GPIOx_MODER\000"
.LASF27:
	.ascii	"RCC_AHB3ENR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF37:
	.ascii	"RCC_APB1LPENR\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF46:
	.ascii	"RCC_PLLI2SCFGR\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF56:
	.ascii	"GPIOx_AFRH\000"
.LASF34:
	.ascii	"RCC_AHB2LPENR\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF68:
	.ascii	"src/minimal_arduino.c\000"
.LASF49:
	.ascii	"GPIOx_OSPEEDR\000"
.LASF16:
	.ascii	"RCC_CIR\000"
.LASF63:
	.ascii	"digitalWrite\000"
.LASF54:
	.ascii	"GPIOx_LCKR\000"
.LASF41:
	.ascii	"RCC_BDCR\000"
.LASF71:
	.ascii	"digitalRead\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF53:
	.ascii	"GPIOx_BSRR\000"
.LASF72:
	.ascii	"initGpio\000"
.LASF18:
	.ascii	"RCC_AHB2RSTR\000"
.LASF38:
	.ascii	"RCC_APB2LPENR\000"
.LASF48:
	.ascii	"GPIOx_OTYPER\000"
.LASF29:
	.ascii	"RCC_APB1ENR\000"
.LASF57:
	.ascii	"HIGH\000"
.LASF51:
	.ascii	"GPIOx_IDR\000"
.LASF61:
	.ascii	"CountsPerMs\000"
.LASF25:
	.ascii	"RCC_AHB1ENR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
