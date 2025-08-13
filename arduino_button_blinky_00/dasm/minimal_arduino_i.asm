
obj/minimal_arduino.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <initGpio>:
uint32_t *RCC_PRPH = (uint32_t *)RCC_BASE_ADDR;
uint32_t *GPIOA_PRPH = (uint32_t *)GPIOA_BASE_ADDR;
uint32_t *GPIOD_PRPH = (uint32_t *)GPIOD_BASE_ADDR;

void initGpio(void)
{
   0:	b480      	push	{r7}
   2:	af00      	add	r7, sp, #0
    // enable clock for GPIOA(Bit 0) and GPIOD(Bit 3)
    RCC_PRPH[RCC_AHB1ENR] |= (1 << 3) | (1 << 0);
   4:	4b06      	ldr	r3, [pc, #24]	; (20 <initGpio+0x20>)
   6:	681b      	ldr	r3, [r3, #0]
   8:	3330      	adds	r3, #48	; 0x30
   a:	681a      	ldr	r2, [r3, #0]
   c:	4b04      	ldr	r3, [pc, #16]	; (20 <initGpio+0x20>)
   e:	681b      	ldr	r3, [r3, #0]
  10:	3330      	adds	r3, #48	; 0x30
  12:	f042 0209 	orr.w	r2, r2, #9
  16:	601a      	str	r2, [r3, #0]
}
  18:	bf00      	nop
  1a:	46bd      	mov	sp, r7
  1c:	bc80      	pop	{r7}
  1e:	4770      	bx	lr
  20:	00000000 	.word	0x00000000
			20: R_ARM_ABS32	RCC_PRPH

00000024 <pinMode>:

// pinmode, first clear the both bits for given gpio pin and and set the required bits
void pinMode(uint8_t pin, uint8_t mode)
{
  24:	b480      	push	{r7}
  26:	b083      	sub	sp, #12
  28:	af00      	add	r7, sp, #0
  2a:	4603      	mov	r3, r0
  2c:	460a      	mov	r2, r1
  2e:	71fb      	strb	r3, [r7, #7]
  30:	4613      	mov	r3, r2
  32:	71bb      	strb	r3, [r7, #6]
    switch (pin)
  34:	79fb      	ldrb	r3, [r7, #7]
  36:	2b00      	cmp	r3, #0
  38:	d002      	beq.n	40 <pinMode+0x1c>
  3a:	2b0e      	cmp	r3, #14
  3c:	d016      	beq.n	6c <pinMode+0x48>
            GPIOD_PRPH[GPIOx_MODER] = (GPIOD_PRPH[GPIOx_MODER] & ~(3U << (2*pin))) | ((mode & 3U) << (2*pin));
            break;

        default:
            //! nothing to do if incorrect pin specified
            break;
  3e:	e02b      	b.n	98 <pinMode+0x74>
            GPIOA_PRPH[GPIOx_MODER] = (GPIOA_PRPH[GPIOx_MODER] & ~(3U << (2*pin))) | ((mode & 3U) << (2*pin));
  40:	4b18      	ldr	r3, [pc, #96]	; (a4 <pinMode+0x80>)
  42:	681b      	ldr	r3, [r3, #0]
  44:	681a      	ldr	r2, [r3, #0]
  46:	79fb      	ldrb	r3, [r7, #7]
  48:	005b      	lsls	r3, r3, #1
  4a:	2103      	movs	r1, #3
  4c:	fa01 f303 	lsl.w	r3, r1, r3
  50:	43db      	mvns	r3, r3
  52:	ea02 0103 	and.w	r1, r2, r3
  56:	79bb      	ldrb	r3, [r7, #6]
  58:	f003 0203 	and.w	r2, r3, #3
  5c:	79fb      	ldrb	r3, [r7, #7]
  5e:	005b      	lsls	r3, r3, #1
  60:	409a      	lsls	r2, r3
  62:	4b10      	ldr	r3, [pc, #64]	; (a4 <pinMode+0x80>)
  64:	681b      	ldr	r3, [r3, #0]
  66:	430a      	orrs	r2, r1
  68:	601a      	str	r2, [r3, #0]
            break;
  6a:	e015      	b.n	98 <pinMode+0x74>
            GPIOD_PRPH[GPIOx_MODER] = (GPIOD_PRPH[GPIOx_MODER] & ~(3U << (2*pin))) | ((mode & 3U) << (2*pin));
  6c:	4b0e      	ldr	r3, [pc, #56]	; (a8 <pinMode+0x84>)
  6e:	681b      	ldr	r3, [r3, #0]
  70:	681a      	ldr	r2, [r3, #0]
  72:	79fb      	ldrb	r3, [r7, #7]
  74:	005b      	lsls	r3, r3, #1
  76:	2103      	movs	r1, #3
  78:	fa01 f303 	lsl.w	r3, r1, r3
  7c:	43db      	mvns	r3, r3
  7e:	ea02 0103 	and.w	r1, r2, r3
  82:	79bb      	ldrb	r3, [r7, #6]
  84:	f003 0203 	and.w	r2, r3, #3
  88:	79fb      	ldrb	r3, [r7, #7]
  8a:	005b      	lsls	r3, r3, #1
  8c:	409a      	lsls	r2, r3
  8e:	4b06      	ldr	r3, [pc, #24]	; (a8 <pinMode+0x84>)
  90:	681b      	ldr	r3, [r3, #0]
  92:	430a      	orrs	r2, r1
  94:	601a      	str	r2, [r3, #0]
            break;
  96:	bf00      	nop
    }
}
  98:	bf00      	nop
  9a:	370c      	adds	r7, #12
  9c:	46bd      	mov	sp, r7
  9e:	bc80      	pop	{r7}
  a0:	4770      	bx	lr
  a2:	bf00      	nop
	...
			a4: R_ARM_ABS32	GPIOA_PRPH
			a8: R_ARM_ABS32	GPIOD_PRPH

000000ac <digitalRead>:

// digitalRead, read the IDR and bitwise & it with bit for given pin number
uint8_t digitalRead(uint8_t pin)
{
  ac:	b480      	push	{r7}
  ae:	b083      	sub	sp, #12
  b0:	af00      	add	r7, sp, #0
  b2:	4603      	mov	r3, r0
  b4:	71fb      	strb	r3, [r7, #7]
    switch (pin)
  b6:	79fb      	ldrb	r3, [r7, #7]
  b8:	2b00      	cmp	r3, #0
  ba:	d002      	beq.n	c2 <digitalRead+0x16>
  bc:	2b0e      	cmp	r3, #14
  be:	d00f      	beq.n	e0 <digitalRead+0x34>
  c0:	e01d      	b.n	fe <digitalRead+0x52>
    {
        case PUSH_BTN:
            return ( (0 != (GPIOA_PRPH[GPIOx_IDR] & (1 << pin))) ? (uint8_t)HIGH : (uint8_t)LOW );
  c2:	4b12      	ldr	r3, [pc, #72]	; (10c <digitalRead+0x60>)
  c4:	681b      	ldr	r3, [r3, #0]
  c6:	3310      	adds	r3, #16
  c8:	681b      	ldr	r3, [r3, #0]
  ca:	79fa      	ldrb	r2, [r7, #7]
  cc:	2101      	movs	r1, #1
  ce:	fa01 f202 	lsl.w	r2, r1, r2
  d2:	4013      	ands	r3, r2
  d4:	2b00      	cmp	r3, #0
  d6:	bf14      	ite	ne
  d8:	2301      	movne	r3, #1
  da:	2300      	moveq	r3, #0
  dc:	b2db      	uxtb	r3, r3
  de:	e00f      	b.n	100 <digitalRead+0x54>
            break;

        case LED_RED:
            return ( (0 != (GPIOD_PRPH[GPIOx_IDR] & (1 << pin))) ? (uint8_t)HIGH : (uint8_t)LOW );
  e0:	4b0b      	ldr	r3, [pc, #44]	; (110 <digitalRead+0x64>)
  e2:	681b      	ldr	r3, [r3, #0]
  e4:	3310      	adds	r3, #16
  e6:	681b      	ldr	r3, [r3, #0]
  e8:	79fa      	ldrb	r2, [r7, #7]
  ea:	2101      	movs	r1, #1
  ec:	fa01 f202 	lsl.w	r2, r1, r2
  f0:	4013      	ands	r3, r2
  f2:	2b00      	cmp	r3, #0
  f4:	bf14      	ite	ne
  f6:	2301      	movne	r3, #1
  f8:	2300      	moveq	r3, #0
  fa:	b2db      	uxtb	r3, r3
  fc:	e000      	b.n	100 <digitalRead+0x54>
            break;

        default:
            //! nothing to do if incorrect pin specified, just return LOW
            return LOW;
  fe:	2300      	movs	r3, #0
            break;
    }
}
 100:	4618      	mov	r0, r3
 102:	370c      	adds	r7, #12
 104:	46bd      	mov	sp, r7
 106:	bc80      	pop	{r7}
 108:	4770      	bx	lr
 10a:	bf00      	nop
	...
			10c: R_ARM_ABS32	GPIOA_PRPH
			110: R_ARM_ABS32	GPIOD_PRPH

00000114 <digitalWrite>:

// digitalRead, read ODR and then set/clear the bit for given pin number
void digitalWrite(uint8_t pin, uint8_t value)
{
 114:	b480      	push	{r7}
 116:	b083      	sub	sp, #12
 118:	af00      	add	r7, sp, #0
 11a:	4603      	mov	r3, r0
 11c:	460a      	mov	r2, r1
 11e:	71fb      	strb	r3, [r7, #7]
 120:	4613      	mov	r3, r2
 122:	71bb      	strb	r3, [r7, #6]
    switch (pin)
 124:	79fb      	ldrb	r3, [r7, #7]
 126:	2b00      	cmp	r3, #0
 128:	d002      	beq.n	130 <digitalWrite+0x1c>
 12a:	2b0e      	cmp	r3, #14
 12c:	d022      	beq.n	174 <digitalWrite+0x60>
            ((uint8_t)HIGH == value) ? (GPIOD_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOD_PRPH[GPIOx_ODR] &= ~(1 << pin));
            break;

        default:
            //! nothing to do if incorrect pin specified
            break;
 12e:	e043      	b.n	1b8 <digitalWrite+0xa4>
            ((uint8_t)HIGH == value) ? (GPIOA_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOA_PRPH[GPIOx_ODR] &= ~(1 << pin));
 130:	79bb      	ldrb	r3, [r7, #6]
 132:	2b01      	cmp	r3, #1
 134:	d10e      	bne.n	154 <digitalWrite+0x40>
 136:	4b23      	ldr	r3, [pc, #140]	; (1c4 <digitalWrite+0xb0>)
 138:	681b      	ldr	r3, [r3, #0]
 13a:	3314      	adds	r3, #20
 13c:	681a      	ldr	r2, [r3, #0]
 13e:	79fb      	ldrb	r3, [r7, #7]
 140:	2101      	movs	r1, #1
 142:	fa01 f303 	lsl.w	r3, r1, r3
 146:	4619      	mov	r1, r3
 148:	4b1e      	ldr	r3, [pc, #120]	; (1c4 <digitalWrite+0xb0>)
 14a:	681b      	ldr	r3, [r3, #0]
 14c:	3314      	adds	r3, #20
 14e:	430a      	orrs	r2, r1
 150:	601a      	str	r2, [r3, #0]
            break;
 152:	e031      	b.n	1b8 <digitalWrite+0xa4>
            ((uint8_t)HIGH == value) ? (GPIOA_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOA_PRPH[GPIOx_ODR] &= ~(1 << pin));
 154:	4b1b      	ldr	r3, [pc, #108]	; (1c4 <digitalWrite+0xb0>)
 156:	681b      	ldr	r3, [r3, #0]
 158:	3314      	adds	r3, #20
 15a:	681a      	ldr	r2, [r3, #0]
 15c:	79fb      	ldrb	r3, [r7, #7]
 15e:	2101      	movs	r1, #1
 160:	fa01 f303 	lsl.w	r3, r1, r3
 164:	43db      	mvns	r3, r3
 166:	4619      	mov	r1, r3
 168:	4b16      	ldr	r3, [pc, #88]	; (1c4 <digitalWrite+0xb0>)
 16a:	681b      	ldr	r3, [r3, #0]
 16c:	3314      	adds	r3, #20
 16e:	400a      	ands	r2, r1
 170:	601a      	str	r2, [r3, #0]
            break;
 172:	e021      	b.n	1b8 <digitalWrite+0xa4>
            ((uint8_t)HIGH == value) ? (GPIOD_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOD_PRPH[GPIOx_ODR] &= ~(1 << pin));
 174:	79bb      	ldrb	r3, [r7, #6]
 176:	2b01      	cmp	r3, #1
 178:	d10e      	bne.n	198 <digitalWrite+0x84>
 17a:	4b13      	ldr	r3, [pc, #76]	; (1c8 <digitalWrite+0xb4>)
 17c:	681b      	ldr	r3, [r3, #0]
 17e:	3314      	adds	r3, #20
 180:	681a      	ldr	r2, [r3, #0]
 182:	79fb      	ldrb	r3, [r7, #7]
 184:	2101      	movs	r1, #1
 186:	fa01 f303 	lsl.w	r3, r1, r3
 18a:	4619      	mov	r1, r3
 18c:	4b0e      	ldr	r3, [pc, #56]	; (1c8 <digitalWrite+0xb4>)
 18e:	681b      	ldr	r3, [r3, #0]
 190:	3314      	adds	r3, #20
 192:	430a      	orrs	r2, r1
 194:	601a      	str	r2, [r3, #0]
            break;
 196:	e00e      	b.n	1b6 <digitalWrite+0xa2>
            ((uint8_t)HIGH == value) ? (GPIOD_PRPH[GPIOx_ODR] |= (1 << pin)) : (GPIOD_PRPH[GPIOx_ODR] &= ~(1 << pin));
 198:	4b0b      	ldr	r3, [pc, #44]	; (1c8 <digitalWrite+0xb4>)
 19a:	681b      	ldr	r3, [r3, #0]
 19c:	3314      	adds	r3, #20
 19e:	681a      	ldr	r2, [r3, #0]
 1a0:	79fb      	ldrb	r3, [r7, #7]
 1a2:	2101      	movs	r1, #1
 1a4:	fa01 f303 	lsl.w	r3, r1, r3
 1a8:	43db      	mvns	r3, r3
 1aa:	4619      	mov	r1, r3
 1ac:	4b06      	ldr	r3, [pc, #24]	; (1c8 <digitalWrite+0xb4>)
 1ae:	681b      	ldr	r3, [r3, #0]
 1b0:	3314      	adds	r3, #20
 1b2:	400a      	ands	r2, r1
 1b4:	601a      	str	r2, [r3, #0]
            break;
 1b6:	bf00      	nop
    }
}
 1b8:	bf00      	nop
 1ba:	370c      	adds	r7, #12
 1bc:	46bd      	mov	sp, r7
 1be:	bc80      	pop	{r7}
 1c0:	4770      	bx	lr
 1c2:	bf00      	nop
	...
			1c4: R_ARM_ABS32	GPIOA_PRPH
			1c8: R_ARM_ABS32	GPIOD_PRPH
