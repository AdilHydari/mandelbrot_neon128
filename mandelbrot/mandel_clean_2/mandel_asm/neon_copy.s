	.arch armv8-a
	.file	"neon_copy.cc"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, %function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB5654:
	.cfi_startproc
	mov	w0, w1
	ret
	.cfi_endproc
.LFE5654:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0, %function
_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0:
.LFB9240:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x1, x0
	mov	x3, 1
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	add	x5, sp, 72
	add	x4, sp, 64
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	ldp	x19, x20, [x1]
	mov	x2, x3
	mov	x0, 0
	ldrsw	x1, [x19]
	bl	GOMP_loop_nonmonotonic_dynamic_start
	tbz	x0, 0, .L9
	stp	d8, d9, [sp, 32]
	.cfi_offset 73, -40
	.cfi_offset 72, -48
	fmov	s8, 3.0e+0
	str	d10, [sp, 48]
	.cfi_offset 74, -32
.L4:
	ldp	s23, s27, [x19, 12]
	fmov	s22, 8.0e+0
	ldr	w6, [x19, 4]
	mov	w0, 24
	ldr	s24, [x19, 28]
	mov	x8, 0
	fmul	s22, s23, s22
	sub	w4, w6, #1
	fadd	s0, s23, s23
	fmul	s28, s23, s8
	lsr	w4, w4, 3
	ldr	w7, [sp, 72]
	ldr	x3, [sp, 64]
	fadd	s25, s24, s22
	add	w4, w4, 1
	ins	v23.s[1], v0.s[0]
	fmov	v19.4s, 4.0e+0
	ldr	s26, [x19, 36]
	dup	v22.4s, v22.s[0]
	mov	w5, w3
	umull	x4, w4, w0
	sbfiz	x3, x3, 3, 32
	dup	v24.4s, v24.s[0]
	dup	v25.4s, v25.s[0]
	.p2align 3,,7
.L8:
	umov	x2, v23.d[0]
	scvtf	s17, w5
	fmov	w9, s28
	mov	x1, 0
	mov	x0, 0
	and	x10, x1, -4294967296
	bfi	x0, x8, 0, 32
	fnmsub	s17, s17, s27, s26
	orr	x1, x10, x2, lsr 32
	bfi	x0, x2, 32, 32
	fmov	d0, x0
	bfi	x1, x9, 32, 32
	ins	v0.d[1], x1
	dup	v17.4s, v17.s[0]
	fadd	v21.4s, v24.4s, v0.4s
	fadd	v20.4s, v25.4s, v0.4s
	cmp	w6, 0
	ble	.L5
	ldr	s18, [x19, 8]
	mov	x1, 0
	dup	v18.4s, v18.s[0]
	.p2align 3,,7
.L6:
	movi	v0.4s, 0
	movi	v7.4s, 0
	mov	v1.16b, v0.16b
	mov	v16.16b, v7.16b
	mov	v6.16b, v0.16b
	mov	v5.16b, v0.16b
	.p2align 3,,7
.L7:
	fmul	v29.4s, v1.4s, v1.4s
	fmul	v4.4s, v0.4s, v0.4s
	cmeq	v31.4s, v18.4s, v16.4s
	cmeq	v10.4s, v18.4s, v7.4s
	mov	v3.16b, v29.16b
	mov	v2.16b, v4.16b
	fneg	v29.4s, v29.4s
	fmul	v1.4s, v5.4s, v1.4s
	fmla	v3.4s, v5.4s, v5.4s
	fmla	v2.4s, v6.4s, v6.4s
	fmla	v29.4s, v5.4s, v5.4s
	fmul	v0.4s, v6.4s, v0.4s
	fcmgt	v3.4s, v19.4s, v3.4s
	fcmgt	v2.4s, v19.4s, v2.4s
	fneg	v4.4s, v4.4s
	fadd	v1.4s, v1.4s, v1.4s
	bic	v9.16b, v3.16b, v31.16b
	bic	v30.16b, v2.16b, v10.16b
	orr	v2.16b, v2.16b, v10.16b
	orr	v3.16b, v3.16b, v31.16b
	dup	s10, v9.s[1]
	dup	s31, v30.s[1]
	fadd	v0.4s, v0.4s, v0.4s
	not	v3.16b, v3.16b
	fmla	v4.4s, v6.4s, v6.4s
	orr	v5.8b, v10.8b, v9.8b
	not	v2.16b, v2.16b
	fadd	v1.4s, v17.4s, v1.4s
	sub	v16.4s, v16.4s, v3.4s
	fmov	w0, s5
	orr	v5.8b, v31.8b, v30.8b
	fadd	v0.4s, v17.4s, v0.4s
	fadd	v6.4s, v4.4s, v20.4s
	sub	v7.4s, v7.4s, v2.4s
	cmp	w0, 0
	fmov	w0, s5
	fadd	v5.4s, v29.4s, v21.4s
	ccmp	w0, 0, 4, ne
	beq	.L7
	fmov	w0, s16
	umov	w11, v16.s[1]
	ldr	x12, [x20]
	add	x13, x1, 3
	fadd	v21.4s, v21.4s, v22.4s
	add	x10, x1, 6
	fadd	v20.4s, v20.4s, v22.4s
	negs	w9, w0
	and	w9, w9, 7
	and	w0, w0, 7
	csneg	w9, w0, w9, mi
	umov	w0, v16.s[2]
	ldr	x12, [x12, x3]
	sbfiz	x2, x9, 1, 32
	add	x9, x2, w9, sxtw
	negs	w2, w11
	add	x9, x19, x9
	add	x15, x12, x1
	and	w11, w11, 7
	and	w2, w2, 7
	csneg	w2, w11, w2, mi
	and	w14, w0, 7
	ldrh	w16, [x9, 40]
	negs	w0, w0
	ldrb	w11, [x9, 42]
	sbfiz	x9, x2, 1, 32
	strh	w16, [x12, x1]
	add	x2, x9, w2, sxtw
	strb	w11, [x15, 2]
	add	x2, x19, x2
	umov	w9, v16.s[3]
	and	w0, w0, 7
	ldr	x11, [x20]
	csneg	w0, w14, w0, mi
	ldrh	w16, [x2, 40]
	add	x12, x1, 9
	ldrb	w15, [x2, 42]
	sbfiz	x2, x0, 1, 32
	ldr	x11, [x11, x3]
	add	x0, x2, w0, sxtw
	negs	w2, w9
	and	w9, w9, 7
	add	x14, x11, x13
	and	w2, w2, 7
	strh	w16, [x11, x13]
	fmov	w13, s7
	csneg	w2, w9, w2, mi
	fmov	w9, s7
	strb	w15, [x14, 2]
	add	x0, x19, x0
	sbfiz	x15, x2, 1, 32
	umov	w11, v7.s[1]
	and	w14, w13, 7
	add	x2, x15, w2, sxtw
	ldr	x13, [x20]
	negs	w9, w9
	ldrh	w16, [x0, 40]
	add	x2, x19, x2
	ldrb	w15, [x0, 42]
	and	w0, w9, 7
	ldr	x13, [x13, x3]
	csneg	w0, w14, w0, mi
	negs	w9, w11
	and	w11, w11, 7
	add	x14, x13, x10
	and	w9, w9, 7
	strh	w16, [x13, x10]
	sbfiz	x10, x0, 1, 32
	add	x0, x10, w0, sxtw
	csneg	w9, w11, w9, mi
	strb	w15, [x14, 2]
	add	x0, x19, x0
	sbfiz	x11, x9, 1, 32
	add	x15, x1, 12
	ldr	x10, [x20]
	add	x9, x11, w9, sxtw
	ldrh	w18, [x2, 40]
	umov	w11, v7.s[2]
	ldrb	w17, [x2, 42]
	add	x9, x19, x9
	ldr	x2, [x10, x3]
	umov	w10, v7.s[3]
	add	x14, x1, 15
	add	x13, x1, 18
	add	x16, x2, x12
	strh	w18, [x2, x12]
	negs	w2, w11
	and	w2, w2, 7
	and	w11, w11, 7
	strb	w17, [x16, 2]
	csneg	w2, w11, w2, mi
	add	x12, x1, 21
	add	x1, x1, 24
	ldr	x16, [x20]
	ldrh	w18, [x0, 40]
	ldrb	w17, [x0, 42]
	negs	w0, w10
	ldr	x11, [x16, x3]
	sbfiz	x16, x2, 1, 32
	add	x2, x16, w2, sxtw
	and	w10, w10, 7
	add	x16, x11, x15
	and	w0, w0, 7
	strh	w18, [x11, x15]
	csneg	w0, w10, w0, mi
	add	x2, x19, x2
	strb	w17, [x16, 2]
	sbfiz	x10, x0, 1, 32
	add	x0, x10, w0, sxtw
	ldrb	w11, [x9, 42]
	add	x0, x19, x0
	ldrh	w15, [x9, 40]
	ldr	x9, [x20]
	ldr	x9, [x9, x3]
	add	x10, x9, x14
	strh	w15, [x9, x14]
	strb	w11, [x10, 2]
	ldr	x9, [x20]
	ldrb	w10, [x2, 42]
	ldrh	w11, [x2, 40]
	ldr	x2, [x9, x3]
	add	x9, x2, x13
	strh	w11, [x2, x13]
	strb	w10, [x9, 2]
	ldr	x2, [x20]
	ldrh	w10, [x0, 40]
	ldrb	w9, [x0, 42]
	ldr	x0, [x2, x3]
	add	x2, x0, x12
	strh	w10, [x0, x12]
	strb	w9, [x2, 2]
	cmp	x1, x4
	bne	.L6
.L5:
	add	w5, w5, 1
	add	x3, x3, 8
	cmp	w7, w5
	bgt	.L8
	add	x1, sp, 72
	add	x0, sp, 64
	bl	GOMP_loop_nonmonotonic_dynamic_next
	tbnz	x0, 0, .L4
	ldp	d8, d9, [sp, 32]
	.cfi_restore 73
	.cfi_restore 72
	ldr	d10, [sp, 48]
	.cfi_restore 74
.L9:
	bl	GOMP_loop_end_nowait
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9240:
	.size	_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0, .-_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0
	.align	2
	.p2align 4,,11
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, %function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB9249:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x20, [x0, 240]
	cbz	x20, .L22
	ldrb	w0, [x20, 56]
	cbz	w0, .L18
	ldrb	w1, [x20, 67]
.L19:
	mov	x0, x19
	bl	_ZNSo3putEc
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZNSo5flushEv
.L18:
	.cfi_restore_state
	mov	x0, x20
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x1, [x20]
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	ldr	x2, [x1, 48]
	cmp	x2, x0
	bne	.L23
	mov	w1, 10
	b	.L19
.L23:
	mov	w1, 10
	mov	x0, x20
	blr	x2
	and	w1, w0, 255
	b	.L19
.L22:
	bl	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE9249:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text._ZN7EasyBMP5ImageD2Ev,"axG",@progbits,_ZN7EasyBMP5ImageD5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7EasyBMP5ImageD2Ev
	.type	_ZN7EasyBMP5ImageD2Ev, %function
_ZN7EasyBMP5ImageD2Ev:
.LFB8388:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8388
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	ldr	x0, [x0]
	cbz	x0, .L25
	ldr	x1, [x0]
	cbz	x1, .L26
	mov	x0, x1
	ldr	x1, [x0, -8]!
	add	x1, x1, x1, lsl 1
	add	x1, x1, 8
	bl	_ZdaPvm
	ldr	x0, [x19]
	cbnz	x0, .L26
	str	xzr, [x19]
.L25:
	ldr	x0, [x19, 544]
	add	x1, x19, 560
	cmp	x0, x1
	beq	.L28
	ldr	x1, [x19, 560]
	add	x1, x1, 1
	bl	_ZdlPvm
.L28:
	adrp	x1, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	adrp	x2, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	add	x2, x2, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	adrp	x0, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	add	x0, x0, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	stp	x0, x2, [x19, 24]
	add	x0, x19, 32
	str	x1, [x19, 280]
.LEHB0:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE0:
.L30:
	add	x0, x19, 144
	bl	_ZNSt12__basic_fileIcED1Ev
	adrp	x0, _ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x0, x0, :lo12:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	str	x0, [x19, 32]
	add	x0, x19, 88
	bl	_ZNSt6localeD1Ev
	adrp	x1, _ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	add	x1, x1, :lo12:_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	adrp	x2, _ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	add	x2, x2, :lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	add	x0, x19, 280
	ldp	x3, x4, [x1, 8]
	ldr	x1, [x3, -24]
	str	x3, [x19, 24]
	add	x1, x19, x1
	str	x4, [x1, 24]
	str	x2, [x19, 280]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	b	_ZNSt8ios_baseD2Ev
	.p2align 2,,3
.L26:
	.cfi_restore_state
	bl	_ZdaPv
	str	xzr, [x19]
	b	.L25
.L31:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L30
	.cfi_endproc
.LFE8388:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZN7EasyBMP5ImageD2Ev,"aG",@progbits,_ZN7EasyBMP5ImageD5Ev,comdat
	.align	2
.LLSDA8388:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT8388-.LLSDATTD8388
.LLSDATTD8388:
	.byte	0x1
	.uleb128 .LLSDACSE8388-.LLSDACSB8388
.LLSDACSB8388:
	.uleb128 .LEHB0-.LFB8388
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L31-.LFB8388
	.uleb128 0x1
.LLSDACSE8388:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT8388:
	.section	.text._ZN7EasyBMP5ImageD2Ev,"axG",@progbits,_ZN7EasyBMP5ImageD5Ev,comdat
	.size	_ZN7EasyBMP5ImageD2Ev, .-_ZN7EasyBMP5ImageD2Ev
	.weak	_ZN7EasyBMP5ImageD1Ev
	.set	_ZN7EasyBMP5ImageD1Ev,_ZN7EasyBMP5ImageD2Ev
	.section	.rodata._ZN7EasyBMP5Image5WriteEv.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"EasyBMP ERROR: Can't open file to write data."
	.align	3
.LC1:
	.string	"void EasyBMP::Image::Write()"
	.align	3
.LC2:
	.string	"EasyBMP.hpp"
	.align	3
.LC3:
	.string	"false"
	.section	.text._ZN7EasyBMP5Image5WriteEv,"axG",@progbits,_ZN7EasyBMP5Image5WriteEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7EasyBMP5Image5WriteEv
	.type	_ZN7EasyBMP5Image5WriteEv, %function
_ZN7EasyBMP5Image5WriteEv:
.LFB8411:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	w2, 20
	mov	x29, sp
	ldr	x1, [x0, 544]
	str	x27, [sp, 80]
	.cfi_offset 27, -80
	add	x27, x0, 32
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -144
	.cfi_offset 20, -136
	add	x20, x0, 24
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -128
	.cfi_offset 22, -120
	mov	x22, x0
	mov	x0, x27
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	.cfi_offset 23, -112
	.cfi_offset 24, -104
	.cfi_offset 25, -96
	.cfi_offset 26, -88
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	cbz	x0, .L120
	ldr	x0, [x22, 24]
	mov	w1, 0
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L44:
	add	x0, x22, 144
	bl	_ZNKSt12__basic_fileIcE7is_openEv
	tbz	x0, 0, .L121
	ldr	x3, [x22, 8]
	mov	w2, 4
	mov	w26, 0
	add	x0, x3, x3, lsl 1
	negs	x1, x0
	and	x4, x0, 3
	and	x1, x1, 3
	csneg	x1, x4, x1, mi
	sub	w1, w2, w1
	cmp	w1, w2
	beq	.L49
	mov	w26, w1
	add	x0, x0, w1, uxtw
.L49:
	ldp	x4, x2, [x22, 16]
	mov	w1, 66
	strb	w1, [sp, 103]
	mov	x5, 54
	movk	x5, 0x28, lsl 32
	str	wzr, [sp, 108]
	str	x5, [sp, 112]
	stp	w3, w4, [sp, 120]
	ldr	x2, [x2, -24]
	mul	w0, w4, w0
	stp	wzr, w0, [sp, 132]
	add	x2, x20, x2
	add	w3, w0, 54
	str	w3, [sp, 104]
	str	xzr, [sp, 140]
	ldr	x2, [x2, 16]
	str	xzr, [sp, 148]
	cbnz	x2, .L122
	mov	x0, x20
	bl	_ZNSo3putEc
	mov	x0, x20
	mov	w1, 77
	strb	w1, [sp, 103]
	ldr	x2, [x0]
	ldr	x2, [x2, -24]
	add	x2, x0, x2
	ldr	x2, [x2, 16]
	cbz	x2, .L52
.L125:
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L53:
	add	x21, sp, 104
	add	x23, sp, 128
	mov	x24, x21
.L63:
	ldr	x0, [x20]
	ldr	w19, [x24]
	and	w1, w19, 255
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L54
.L129:
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x20]
	ubfx	x1, x19, 8, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L56
.L130:
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x20]
	ubfx	x1, x19, 16, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L58
.L131:
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L59:
	ldr	x0, [x20]
	lsr	w1, w19, 24
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L60
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	add	x24, x24, 4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmp	x23, x24
	bne	.L63
.L62:
	ldr	x0, [x22, 24]
	mov	w1, 1
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L64
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L65:
	strb	wzr, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L66
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L67:
	mov	w1, 24
	strb	w1, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L68
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L69:
	strb	wzr, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L70
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	.p2align 3,,7
.L81:
	ldr	x0, [x20]
	ldr	w19, [x21, 28]
	and	w1, w19, 255
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L72
.L126:
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x20]
	ubfx	x1, x19, 8, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L74
.L127:
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x20]
	ubfx	x1, x19, 16, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L76
.L128:
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L77:
	ldr	x0, [x20]
	lsr	w1, w19, 24
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L78
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	add	x21, x21, 4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmp	x21, x23
	bne	.L81
.L80:
	ldr	x25, [x22, 16]
	subs	x25, x25, #1
	bmi	.L83
	ldr	x0, [x22, 8]
	cmp	x0, 0
	ble	.L99
	.p2align 3,,7
.L93:
	lsl	x24, x25, 3
	mov	x21, 0
	mov	x23, 0
	.p2align 3,,7
.L91:
	ldr	x0, [x22]
	ldr	x2, [x20]
	ldr	x0, [x0, x24]
	add	x0, x0, x21
	ldrb	w1, [x0, 2]
	strb	w1, [sp, 103]
	ldr	x0, [x2, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L84
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L85:
	ldr	x0, [x22]
	ldr	x0, [x0, x24]
	add	x0, x0, x21
	ldrb	w1, [x0, 1]
	strb	w1, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L86
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L87:
	ldr	x0, [x22]
	ldr	x0, [x0, x24]
	ldrb	w1, [x0, x21]
	strb	w1, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L88
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x22, 8]
	add	x23, x23, 1
	add	x21, x21, 3
	cmp	x23, x0
	blt	.L91
.L99:
	add	w21, w26, 1
	cbnz	w26, .L92
	sub	x25, x25, #1
	cmn	x25, #1
	beq	.L83
.L123:
	cmp	x0, 0
	bgt	.L93
	sub	x25, x25, #1
	cmn	x25, #1
	bne	.L123
	.p2align 3,,7
.L83:
	mov	x0, x27
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L124
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 160
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L122:
	.cfi_restore_state
	add	x1, sp, 103
	mov	x2, 1
	mov	x0, x20
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	w1, 77
	strb	w1, [sp, 103]
	ldr	x2, [x0]
	ldr	x2, [x2, -24]
	add	x2, x0, x2
	ldr	x2, [x2, 16]
	cbnz	x2, .L125
.L52:
	bl	_ZNSo3putEc
	b	.L53
	.p2align 2,,3
.L95:
	mov	x0, x20
	mov	w1, 0
	add	w19, w19, 1
	bl	_ZNSo3putEc
	cmp	w19, w21
	bne	.L98
.L117:
	sub	x25, x25, #1
	cmn	x25, #1
	beq	.L83
	ldr	x0, [x22, 8]
	cmp	x0, 0
	bgt	.L93
	.p2align 3,,7
.L92:
	mov	w19, 1
	.p2align 3,,7
.L98:
	ldr	x0, [x20]
	strb	wzr, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L95
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	add	w19, w19, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmp	w21, w19
	bne	.L98
	b	.L117
	.p2align 2,,3
.L88:
	mov	x0, x19
	bl	_ZNSo3putEc
	ldr	x0, [x22, 8]
	add	x23, x23, 1
	add	x21, x21, 3
	cmp	x0, x23
	bgt	.L91
	b	.L99
	.p2align 2,,3
.L86:
	mov	x0, x19
	bl	_ZNSo3putEc
	b	.L87
	.p2align 2,,3
.L84:
	mov	x0, x20
	mov	x19, x20
	bl	_ZNSo3putEc
	b	.L85
	.p2align 2,,3
.L78:
	mov	x0, x20
	add	x21, x21, 4
	bl	_ZNSo3putEc
	cmp	x21, x23
	beq	.L80
	ldr	x0, [x20]
	ldr	w19, [x21, 28]
	and	w1, w19, 255
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L126
.L72:
	mov	x0, x20
	bl	_ZNSo3putEc
	ldr	x0, [x20]
	ubfx	x1, x19, 8, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L127
.L74:
	mov	x0, x20
	bl	_ZNSo3putEc
	ldr	x0, [x20]
	ubfx	x1, x19, 16, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L128
.L76:
	mov	x0, x20
	bl	_ZNSo3putEc
	b	.L77
	.p2align 2,,3
.L60:
	mov	x0, x20
	add	x24, x24, 4
	bl	_ZNSo3putEc
	cmp	x24, x23
	beq	.L62
	ldr	x0, [x20]
	ldr	w19, [x24]
	and	w1, w19, 255
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L129
.L54:
	mov	x0, x20
	bl	_ZNSo3putEc
	ldr	x0, [x20]
	ubfx	x1, x19, 8, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L130
.L56:
	mov	x0, x20
	bl	_ZNSo3putEc
	ldr	x0, [x20]
	ubfx	x1, x19, 16, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L131
.L58:
	mov	x0, x20
	bl	_ZNSo3putEc
	b	.L59
.L70:
	mov	x0, x19
	mov	w1, 0
	bl	_ZNSo3putEc
	b	.L81
.L68:
	mov	x0, x19
	bl	_ZNSo3putEc
	b	.L69
.L66:
	mov	x0, x19
	mov	w1, 0
	bl	_ZNSo3putEc
	b	.L67
.L64:
	mov	x0, x20
	mov	x19, x20
	bl	_ZNSo3putEc
	b	.L65
.L120:
	ldr	x0, [x22, 24]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L44
.L124:
	ldr	x0, [x22, 24]
	ldp	x21, x22, [sp, 32]
	ldr	x0, [x0, -24]
	ldp	x23, x24, [sp, 48]
	add	x0, x20, x0
	ldp	x19, x20, [sp, 16]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldr	w1, [x0, 32]
	ldp	x29, x30, [sp], 160
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	orr	w1, w1, 4
	b	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L121:
	.cfi_restore_state
	adrp	x19, _ZSt4cerr
	add	x20, x19, :lo12:_ZSt4cerr
	mov	x0, x20
	adrp	x1, .LC0
	mov	x2, 45
	add	x1, x1, :lo12:.LC0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x19, #:lo12:_ZSt4cerr]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x19, [x0, 240]
	cbz	x19, .L132
	ldrb	w0, [x19, 56]
	cbz	w0, .L47
	ldrb	w1, [x19, 67]
.L48:
	mov	x0, x20
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	adrp	x3, .LC1
	adrp	x1, .LC2
	adrp	x0, .LC3
	add	x3, x3, :lo12:.LC1
	add	x1, x1, :lo12:.LC2
	add	x0, x0, :lo12:.LC3
	mov	w2, 290
	bl	__assert_fail
.L132:
	bl	_ZSt16__throw_bad_castv
.L47:
	mov	x0, x19
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x1, [x19]
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	ldr	x2, [x1, 48]
	cmp	x2, x0
	bne	.L133
	mov	w1, 10
	b	.L48
.L133:
	mov	w1, 10
	mov	x0, x19
	blr	x2
	and	w1, w0, 255
	b	.L48
	.cfi_endproc
.LFE8411:
	.size	_ZN7EasyBMP5Image5WriteEv, .-_ZN7EasyBMP5Image5WriteEv
	.section	.rodata._ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.str1.8,"aMS",@progbits,1
	.align	3
.LC4:
	.string	"void EasyBMP::Image::Init(int64_t, int64_t)"
	.align	3
.LC5:
	.string	"_width > 0 and _height > 0"
	.align	3
.LC6:
	.string	"image.bmp"
	.align	3
.LC7:
	.string	"void EasyBMP::Image::SetFileName(const std::string&)"
	.align	3
.LC8:
	.string	"_outFileName.size() > 0"
	.align	3
.LC9:
	.string	"EasyBMP ERROR: bad_alloc error (Can't create image buffer) -> "
	.align	3
.LC10:
	.string	"void EasyBMP::Image::Setup()"
	.section	.text._ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7EasyBMP5ImageC5EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB8394:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8394
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	add	x24, x0, 280
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x0
	mov	x20, x3
	mov	x0, x24
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x1
	mov	x21, x2
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	adrp	x25, _ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	bl	_ZNSt8ios_baseC2Ev
	adrp	x0, _ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	add	x0, x0, :lo12:_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	add	x25, x25, :lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	movi	v0.4s, 0
	str	x25, [x19, 280]
	str	xzr, [x24, 216]
	add	x23, x19, 24
	ldp	x26, x28, [x0, 8]
	strh	wzr, [x19, 504]
	stp	q0, q0, [x19, 512]
	mov	x1, 0
	ldr	x2, [x26, -24]
	str	x26, [x19, 24]
	add	x0, x23, x2
	str	x28, [x23, x2]
.LEHB1:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE1:
	adrp	x1, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	add	x1, x1, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	adrp	x0, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	add	x0, x0, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	str	x1, [x19, 24]
	add	x27, x19, 32
	str	x0, [x19, 280]
	mov	x0, x27
.LEHB2:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE2:
	mov	x1, x27
	mov	x0, x24
.LEHB3:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE3:
	add	x24, x19, 544
	add	x0, x19, 560
	str	x0, [x19, 544]
	cmp	x22, 0
	ccmp	x21, 0, 4, gt
	str	xzr, [x24, 8]
	strb	wzr, [x19, 560]
	ble	.L164
	stp	xzr, x22, [x19]
	adrp	x3, .LC6
	mov	x0, x24
	str	x21, [x19, 16]
	add	x3, x3, :lo12:.LC6
	mov	x4, 9
	mov	x2, 0
	mov	x1, 0
.LEHB4:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	ldr	x1, [x20, 8]
	mov	w0, -1
	strh	w0, [x19, 576]
	strb	w0, [x19, 578]
	cbz	x1, .L165
	mov	x1, x20
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.LEHE4:
	ldp	x20, x0, [x19, 8]
	mov	x1, 1152921504606846975
	mul	x20, x0, x20
	cmp	x0, x1
	bhi	.L141
	lsl	x0, x0, 3
.LEHB5:
	bl	_Znam
	add	x1, x20, x20, lsl 1
	str	x0, [x19]
	add	x0, x1, 8
	mov	x1, -6148914691236517206
	movk	x1, 0xaaa8, lsl 0
	movk	x1, 0x2aaa, lsl 48
	cmp	x20, x1
	csinv	x0, x0, xzr, ls
	bl	_Znam
.LEHE5:
	str	x20, [x0], 8
	add	x5, x20, x20, lsl 1
	add	x5, x0, x5
	cmp	x0, x5
	beq	.L144
	mov	x1, x0
	add	x2, x19, 576
	.p2align 3,,7
.L145:
	ldrh	w4, [x2]
	add	x1, x1, 3
	ldrb	w3, [x2, 2]
	strh	w4, [x1, -3]
	strb	w3, [x1, -1]
	cmp	x5, x1
	bne	.L145
.L144:
	ldr	x3, [x19, 16]
	cmp	x3, 0
	ble	.L134
	ldp	x2, x4, [x19]
	mov	x1, x0
	add	x0, x2, x3, lsl 3
	add	x3, x4, x4, lsl 1
	.p2align 3,,7
.L147:
	str	x1, [x2], 8
	add	x1, x1, x3
	cmp	x0, x2
	bne	.L147
.L134:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L164:
	.cfi_restore_state
	adrp	x3, .LC4
	adrp	x1, .LC2
	adrp	x0, .LC5
	add	x3, x3, :lo12:.LC4
	add	x1, x1, :lo12:.LC2
	add	x0, x0, :lo12:.LC5
	mov	w2, 123
	bl	__assert_fail
.L165:
	adrp	x3, .LC7
	adrp	x1, .LC2
	adrp	x0, .LC8
	add	x3, x3, :lo12:.LC7
	add	x1, x1, :lo12:.LC2
	add	x0, x0, :lo12:.LC8
	mov	w2, 273
	bl	__assert_fail
.L156:
	mov	x20, x0
	mov	x0, x27
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L137:
	ldr	x0, [x26, -24]
	str	x26, [x19, 24]
	str	x28, [x23, x0]
.L138:
	str	x25, [x19, 280]
	mov	x0, x24
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x20
.LEHB6:
	bl	_Unwind_Resume
.LEHE6:
.L155:
	mov	x20, x0
	b	.L137
.L154:
	mov	x20, x0
	b	.L138
.L158:
	mov	x19, x0
	cmp	x1, 1
	bne	.L150
	bl	__cxa_begin_catch
	adrp	x19, _ZSt4cerr
	add	x19, x19, :lo12:_ZSt4cerr
	mov	x20, x0
	adrp	x1, .LC9
	mov	x0, x19
	add	x1, x1, :lo12:.LC9
	mov	x2, 62
.LEHB7:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	mov	x0, x20
	ldr	x1, [x1, 16]
	blr	x1
	mov	x1, x0
	mov	x0, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE7:
	adrp	x3, .LC10
	adrp	x1, .LC2
	adrp	x0, .LC3
	add	x3, x3, :lo12:.LC10
	add	x1, x1, :lo12:.LC2
	add	x0, x0, :lo12:.LC3
	mov	w2, 147
	bl	__assert_fail
.L141:
.LEHB8:
	bl	__cxa_throw_bad_array_new_length
.LEHE8:
.L153:
	mov	x19, x0
.L150:
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x23
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB9:
	bl	_Unwind_Resume
.LEHE9:
.L157:
	mov	x19, x0
	bl	__cxa_end_catch
	b	.L150
	.cfi_endproc
.LFE8394:
	.section	.gcc_except_table._ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN7EasyBMP5ImageC5EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
.LLSDA8394:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT8394-.LLSDATTD8394
.LLSDATTD8394:
	.byte	0x1
	.uleb128 .LLSDACSE8394-.LLSDACSB8394
.LLSDACSB8394:
	.uleb128 .LEHB1-.LFB8394
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L154-.LFB8394
	.uleb128 0
	.uleb128 .LEHB2-.LFB8394
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L155-.LFB8394
	.uleb128 0
	.uleb128 .LEHB3-.LFB8394
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L156-.LFB8394
	.uleb128 0
	.uleb128 .LEHB4-.LFB8394
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L153-.LFB8394
	.uleb128 0
	.uleb128 .LEHB5-.LFB8394
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L158-.LFB8394
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB8394
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8394
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L157-.LFB8394
	.uleb128 0
	.uleb128 .LEHB8-.LFB8394
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L158-.LFB8394
	.uleb128 0x3
	.uleb128 .LEHB9-.LFB8394
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE8394:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align	2
	.4byte	DW.ref._ZTISt9bad_alloc-.
.LLSDATT8394:
	.section	.text._ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7EasyBMP5ImageC5EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.size	_ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZN7EasyBMP5ImageC1EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.set	_ZN7EasyBMP5ImageC1EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZN7EasyBMP5ImageC2EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC11:
	.string	"render.bmp"
	.align	3
.LC12:
	.string	"Using "
	.align	3
.LC13:
	.string	" threads"
	.align	3
.LC14:
	.string	"Rendering done\nAvg time per frame: "
	.align	3
.LC15:
	.string	" (ms)\nTotal time taken:   "
	.align	3
.LC16:
	.string	" (ms)"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB8423:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8423
	sub	sp, sp, #768
	.cfi_def_cfa_offset 768
	stp	x29, x30, [sp]
	.cfi_offset 29, -768
	.cfi_offset 30, -760
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	stp	d8, d9, [sp, 80]
	.cfi_offset 19, -752
	.cfi_offset 20, -744
	.cfi_offset 21, -736
	.cfi_offset 22, -728
	.cfi_offset 23, -720
	.cfi_offset 24, -712
	.cfi_offset 25, -704
	.cfi_offset 72, -688
	.cfi_offset 73, -680
	cmp	w0, 2
	bgt	.L189
	mov	x25, 480
	mov	x22, 640
	fmov	s9, w25
	fmov	s8, w22
	mov	w23, 128
	mov	w24, 1
.L167:
	adrp	x3, .LC11
	add	x3, x3, :lo12:.LC11
	add	x4, sp, 128
	mov	x7, 10
	add	x21, sp, 112
	add	x20, sp, 184
	ldr	x6, [x3]
	mov	x2, x25
	ldrh	w5, [x3, 8]
	mov	x1, x22
	mov	x0, x20
	mov	x3, x21
	stp	x4, x7, [sp, 112]
	str	x6, [sp, 128]
	strh	w5, [sp, 136]
	strb	wzr, [sp, 138]
.LEHB10:
	bl	_ZN7EasyBMP5ImageC1EllRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE10:
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	scvtf	s3, s8
	scvtf	s2, s9
	mov	w2, 62914
	mov	w1, 26214
	movk	w2, 0x3f88, lsl 16
	movk	w1, 0x3f26, lsl 16
	fmov	s1, w2
	fmov	s0, w1
	adrp	x0, .LC17
	adrp	x1, .LC18
	fdiv	s1, s1, s3
	stp	s9, s8, [sp, 112]
	ldr	d3, [x1, #:lo12:.LC18]
	fdiv	s0, s0, s2
	str	w23, [sp, 120]
	ldr	q4, [x0, #:lo12:.LC17]
	mov	w0, 26214
	movk	w0, 0x3ea6, lsl 16
	fmov	s2, w0
	adrp	x0, .LC19
	adrp	x23, _ZSt4cout
	add	x23, x23, :lo12:_ZSt4cout
	str	s2, [sp, 148]
	ldr	q5, [x0, #:lo12:.LC19]
	str	q4, [sp, 152]
	str	d3, [sp, 168]
	str	q5, [sp, 132]
	stp	s1, s0, [sp, 124]
	bl	_ZNSt6thread20hardware_concurrencyEv
	adrp	x1, .LC12
	mov	w19, w0
	add	x1, x1, :lo12:.LC12
	mov	x0, x23
	mov	x2, 6
.LEHB11:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	w1, w19
	mov	x0, x23
	bl	_ZNSolsEi
	adrp	x1, .LC13
	mov	x19, x0
	add	x1, x1, :lo12:.LC13
	mov	x2, 8
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x22, [x0, 240]
	cbz	x22, .L190
	ldrb	w0, [x22, 56]
	cbz	w0, .L170
	ldrb	w1, [x22, 67]
.L171:
	mov	x0, x19
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	adrp	x22, _ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	w19, w24, #1
	mov	x25, x0
	add	x22, x22, :lo12:_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0
	cbz	w24, .L174
	.p2align 3,,7
.L172:
	sub	w19, w19, #1
	add	x1, sp, 96
	mov	x0, x22
	mov	w3, 0
	mov	w2, 0
	stp	x21, x20, [sp, 96]
	bl	GOMP_parallel
	cmn	w19, #1
	bne	.L172
.L174:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x25, x0, x25
	adrp	x1, .LC14
	mov	x0, x23
	add	x1, x1, :lo12:.LC14
	mov	x2, 35
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	scvtf	d8, x25
	scvtf	d0, w24
	adrp	x0, .LC20
	ldr	d1, [x0, #:lo12:.LC20]
	mov	x0, x23
	fdiv	d0, d8, d0
	fmul	d0, d0, d1
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC15
	mov	x19, x0
	add	x1, x1, :lo12:.LC15
	mov	x2, 26
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, .LC20
	ldr	d0, [x0, #:lo12:.LC20]
	mov	x0, x19
	fmul	d0, d8, d0
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC16
	mov	x19, x0
	add	x1, x1, :lo12:.LC16
	mov	x2, 5
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	mov	x0, x20
	bl	_ZN7EasyBMP5Image5WriteEv
	mov	x0, x20
	bl	_ZN7EasyBMP5ImageD1Ev
	ldp	x29, x30, [sp]
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	d8, d9, [sp, 80]
	add	sp, sp, 768
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
.L170:
	.cfi_restore_state
	mov	x0, x22
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x1, [x22]
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	ldr	x2, [x1, 48]
	cmp	x2, x0
	bne	.L191
	mov	w1, 10
	b	.L171
.L189:
	mov	x20, x1
	mov	w19, w0
	mov	w2, 10
	mov	x1, 0
	ldr	x0, [x20, 8]
	bl	__isoc23_strtol
	fmov	s8, w0
	mov	x22, x0
	mov	w2, 10
	ldr	x0, [x20, 16]
	mov	x1, 0
	bl	__isoc23_strtol
	fmov	s9, w0
	cmp	w19, 3
	beq	.L192
	sxtw	x25, w0
	mov	w2, 10
	ldr	x0, [x20, 24]
	mov	x1, 0
	sxtw	x22, w22
	bl	__isoc23_strtol
	mov	w23, w0
	cmp	w19, 4
	bne	.L193
	mov	w24, 1
	b	.L167
.L193:
	ldr	x0, [x20, 32]
	mov	w2, 10
	mov	x1, 0
	bl	__isoc23_strtol
	mov	w24, w0
	b	.L167
.L192:
	sxtw	x22, w22
	sxtw	x25, w0
	mov	w23, 128
	mov	w24, 1
	b	.L167
.L191:
	mov	x0, x22
	mov	w1, 10
	blr	x2
	and	w1, w0, 255
	b	.L171
.L190:
	bl	_ZSt16__throw_bad_castv
.LEHE11:
.L180:
	mov	x19, x0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x19
.LEHB12:
	bl	_Unwind_Resume
.L181:
	mov	x19, x0
	mov	x0, x20
	bl	_ZN7EasyBMP5ImageD1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE12:
	.cfi_endproc
.LFE8423:
	.section	.gcc_except_table,"a",@progbits
.LLSDA8423:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8423-.LLSDACSB8423
.LLSDACSB8423:
	.uleb128 .LEHB10-.LFB8423
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L180-.LFB8423
	.uleb128 0
	.uleb128 .LEHB11-.LFB8423
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L181-.LFB8423
	.uleb128 0
	.uleb128 .LEHB12-.LFB8423
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8423:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC17:
	.byte	-1
	.byte	0
	.byte	0
	.byte	-18
	.byte	51
	.byte	0
	.byte	9
	.byte	1
	.byte	47
	.byte	4
	.byte	4
	.byte	73
	.byte	0
	.byte	7
	.byte	100
	.byte	12
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC18:
	.byte	44
	.byte	-118
	.byte	24
	.byte	82
	.byte	-79
	.byte	57
	.byte	125
	.byte	-47
	.section	.rodata.cst16
	.align	4
.LC19:
	.word	-1086408622
	.word	-1096391066
	.word	-1086408622
	.word	-1096391066
	.section	.rodata.cst8
	.align	3
.LC20:
	.word	-1598689907
	.word	1051772663
	.hidden	DW.ref._ZTISt9bad_alloc
	.weak	DW.ref._ZTISt9bad_alloc
	.section	.data.DW.ref._ZTISt9bad_alloc,"awG",@progbits,DW.ref._ZTISt9bad_alloc,comdat
	.align	3
	.type	DW.ref._ZTISt9bad_alloc, %object
	.size	DW.ref._ZTISt9bad_alloc, 8
DW.ref._ZTISt9bad_alloc:
	.xword	_ZTISt9bad_alloc
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20231011 (Red Hat 13.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
