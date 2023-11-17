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
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x3, 1
	mov	x2, x3
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	add	x1, sp, 159
	add	x5, sp, 120
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	ldp	x20, x19, [x0]
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	and	x23, x1, -32
	add	x4, sp, 112
	mov	x0, 0
	ldrsw	x1, [x20]
	bl	GOMP_loop_nonmonotonic_dynamic_start
	tbz	x0, 0, .L4
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -168
	.cfi_offset 21, -176
	add	x22, x20, 40
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -136
	.cfi_offset 25, -144
	mov	x26, x23
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -120
	.cfi_offset 27, -128
.L8:
	ldr	w0, [x20, 4]
	ldr	x1, [sp, 112]
	ldr	w27, [sp, 120]
	mov	w25, w1
	cmp	w0, 0
	ble	.L5
	sub	w13, w0, #1
	mov	w0, 48
	ldp	w12, w11, [x26, 16]
	lsr	w13, w13, 4
	add	w13, w13, 1
	sbfiz	x1, x1, 3, 32
	ldp	w10, w9, [x26, 24]
	and	w24, w12, 15
	ldp	w8, w7, [x26, 48]
	umull	x13, w13, w0
	ldp	w6, w5, [x26, 56]
	and	w23, w11, 15
	and	w21, w10, 15
	and	w18, w9, 15
	and	w17, w8, 15
	and	w16, w7, 15
	and	w15, w6, 15
	and	w14, w5, 15
	str	w27, [sp, 100]
	str	x26, [sp, 104]
.L7:
	mov	x0, 0
	str	w25, [sp, 96]
	.p2align 3,,7
.L6:
	ldr	x2, [x19]
	add	x25, x0, 3
	ldrh	w26, [x20, 40]
	add	x4, x0, 6
	ldrb	w30, [x22]
	ldr	x2, [x2, x1]
	ldrb	w27, [x22, 2]
	add	x3, x2, x0
	strh	w26, [x2, x0]
	negs	w2, w12
	and	w2, w2, 15
	add	x26, x0, 9
	strb	w27, [x3, 2]
	csneg	w2, w24, w2, mi
	ldr	x3, [x19]
	ldrh	w28, [x20, 41]
	ldr	x27, [x3, x1]
	sbfiz	x3, x2, 1, 32
	add	x2, x3, w2, sxtw
	add	x3, x20, x2
	add	x2, x27, x25
	strb	w30, [x27, x25]
	strh	w28, [x2, 1]
	ldr	x2, [x19]
	ldrh	w28, [x20, 40]
	ldrb	w30, [x22]
	ldr	x2, [x2, x1]
	ldrb	w27, [x22, 2]
	add	x25, x2, x4
	strh	w28, [x2, x4]
	negs	w2, w11
	and	w2, w2, 15
	strb	w27, [x25, 2]
	csneg	w2, w23, w2, mi
	add	x25, x0, 12
	ldr	x4, [x19]
	ldrh	w28, [x20, 41]
	ldr	x27, [x4, x1]
	sbfiz	x4, x2, 1, 32
	add	x2, x4, w2, sxtw
	add	x4, x20, x2
	add	x2, x27, x26
	strb	w30, [x27, x26]
	add	x26, x0, 15
	strh	w28, [x2, 1]
	negs	w2, w10
	and	w2, w2, 15
	ldr	x30, [x19]
	csneg	w2, w21, w2, mi
	ldrh	w27, [x3, 40]
	ldrb	w28, [x3, 42]
	ldr	x3, [x30, x1]
	sbfiz	x30, x2, 1, 32
	add	x2, x30, w2, sxtw
	add	x30, x3, x25
	add	x2, x20, x2
	strh	w27, [x3, x25]
	negs	w3, w9
	and	w3, w3, 15
	add	x27, x0, 18
	strb	w28, [x30, 2]
	csneg	w3, w18, w3, mi
	ldrb	w25, [x4, 42]
	ldrh	w30, [x4, 40]
	sbfiz	x4, x3, 1, 32
	ldr	x28, [x19]
	add	x3, x4, w3, sxtw
	add	x3, x20, x3
	ldr	x4, [x28, x1]
	add	x28, x0, 21
	strh	w30, [x4, x26]
	add	x4, x4, x26
	add	x30, x0, 24
	strb	w25, [x4, 2]
	ldr	x25, [x19]
	ldrh	w4, [x2, 40]
	ldrb	w2, [x2, 42]
	ldr	x26, [x25, x1]
	add	x25, x0, 27
	strh	w4, [x26, x27]
	add	x26, x26, x27
	add	x4, x0, 30
	strb	w2, [x26, 2]
	add	x26, x0, 33
	ldr	x2, [x19]
	ldrh	w27, [x3, 40]
	ldrb	w3, [x3, 42]
	ldr	x2, [x2, x1]
	strh	w27, [x2, x28]
	add	x2, x2, x28
	strb	w3, [x2, 2]
	ldr	x2, [x19]
	ldrh	w28, [x20, 40]
	ldrb	w27, [x22]
	ldr	x2, [x2, x1]
	ldrb	w3, [x22, 2]
	strh	w28, [x2, x30]
	add	x28, x2, x30
	negs	w2, w8
	and	w2, w2, 15
	strb	w3, [x28, 2]
	csneg	w2, w17, w2, mi
	ldr	x3, [x19]
	ldrh	w30, [x20, 41]
	ldr	x28, [x3, x1]
	sbfiz	x3, x2, 1, 32
	add	x2, x3, w2, sxtw
	add	x3, x20, x2
	add	x2, x28, x25
	strb	w27, [x28, x25]
	add	x25, x0, 36
	strh	w30, [x2, 1]
	ldr	x2, [x19]
	ldrb	w30, [x22]
	ldrb	w27, [x22, 2]
	ldrh	w28, [x20, 40]
	ldr	x2, [x2, x1]
	strh	w28, [x2, x4]
	add	x4, x2, x4
	negs	w2, w7
	and	w2, w2, 15
	strb	w27, [x4, 2]
	csneg	w2, w16, w2, mi
	ldr	x4, [x19]
	ldrh	w28, [x20, 41]
	ldr	x27, [x4, x1]
	sbfiz	x4, x2, 1, 32
	add	x2, x4, w2, sxtw
	add	x4, x20, x2
	add	x2, x27, x26
	strb	w30, [x27, x26]
	add	x26, x0, 39
	strh	w28, [x2, 1]
	negs	w2, w6
	and	w2, w2, 15
	ldr	x30, [x19]
	csneg	w2, w15, w2, mi
	ldrh	w27, [x3, 40]
	ldrb	w28, [x3, 42]
	ldr	x3, [x30, x1]
	sbfiz	x30, x2, 1, 32
	add	x2, x30, w2, sxtw
	add	x30, x3, x25
	add	x2, x20, x2
	strh	w27, [x3, x25]
	negs	w3, w5
	and	w3, w3, 15
	add	x25, x0, 42
	strb	w28, [x30, 2]
	csneg	w3, w14, w3, mi
	ldr	x30, [x19]
	ldrh	w27, [x4, 40]
	ldrb	w28, [x4, 42]
	ldr	x4, [x30, x1]
	sbfiz	x30, x3, 1, 32
	add	x3, x30, w3, sxtw
	add	x30, x4, x26
	add	x3, x20, x3
	strh	w27, [x4, x26]
	add	x4, x0, 45
	add	x0, x0, 48
	strb	w28, [x30, 2]
	ldr	x26, [x19]
	ldrh	w27, [x2, 40]
	ldrb	w28, [x2, 42]
	ldr	x2, [x26, x1]
	add	x26, x2, x25
	strh	w27, [x2, x25]
	strb	w28, [x26, 2]
	ldr	x2, [x19]
	ldrb	w26, [x3, 42]
	ldrh	w25, [x3, 40]
	ldr	x2, [x2, x1]
	add	x3, x2, x4
	strh	w25, [x2, x4]
	strb	w26, [x3, 2]
	cmp	x13, x0
	bne	.L6
	ldp	w25, w0, [sp, 96]
	add	x1, x1, 8
	add	w25, w25, 1
	cmp	w0, w25
	bgt	.L7
	ldr	x26, [sp, 104]
.L5:
	add	x1, sp, 120
	add	x0, sp, 112
	bl	GOMP_loop_nonmonotonic_dynamic_next
	tbnz	x0, 0, .L8
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
.L4:
	bl	GOMP_loop_end_nowait
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
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
	sub	sp, sp, #784
	.cfi_def_cfa_offset 784
	stp	x29, x30, [sp]
	.cfi_offset 29, -784
	.cfi_offset 30, -776
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	stp	d8, d9, [sp, 80]
	.cfi_offset 19, -768
	.cfi_offset 20, -760
	.cfi_offset 21, -752
	.cfi_offset 22, -744
	.cfi_offset 23, -736
	.cfi_offset 24, -728
	.cfi_offset 25, -720
	.cfi_offset 72, -704
	.cfi_offset 73, -696
	cmp	w0, 2
	bgt	.L189
	mov	x23, 480
	mov	x22, 640
	fmov	s9, w23
	fmov	s8, w22
	mov	w25, 128
	mov	w24, 1
.L167:
	adrp	x3, .LC11
	add	x3, x3, :lo12:.LC11
	add	x4, sp, 128
	mov	x7, 10
	add	x21, sp, 112
	add	x20, sp, 200
	ldr	x6, [x3]
	mov	x2, x23
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
	scvtf	s4, s8
	scvtf	s2, s9
	fmov	s1, 3.5e+0
	fmov	s0, 2.0e+0
	adrp	x0, .LC17
	fmov	s3, 1.0e+0
	adrp	x23, _ZSt4cout
	add	x23, x23, :lo12:_ZSt4cout
	fdiv	s1, s1, s4
	str	s3, [sp, 148]
	fdiv	s0, s0, s2
	stp	s9, s8, [sp, 112]
	ldr	q5, [x0, #:lo12:.LC17]
	adrp	x0, .LC18
	str	w25, [sp, 120]
	ldr	q4, [x0, #:lo12:.LC18]
	adrp	x0, .LC19
	str	q5, [sp, 152]
	ldr	q2, [x0, #:lo12:.LC19]
	adrp	x0, .LC20
	str	q4, [sp, 168]
	ldr	q3, [x0, #:lo12:.LC20]
	stp	s1, s0, [sp, 124]
	str	q2, [sp, 184]
	str	q3, [sp, 132]
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
	adrp	x0, .LC21
	ldr	d1, [x0, #:lo12:.LC21]
	mov	x0, x23
	fdiv	d0, d8, d0
	fmul	d0, d0, d1
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC15
	mov	x19, x0
	add	x1, x1, :lo12:.LC15
	mov	x2, 26
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, .LC21
	ldr	d0, [x0, #:lo12:.LC21]
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
	add	sp, sp, 784
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
	sxtw	x23, w0
	mov	w2, 10
	ldr	x0, [x20, 24]
	mov	x1, 0
	sxtw	x22, w22
	bl	__isoc23_strtol
	mov	w25, w0
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
	sxtw	x23, w0
	mov	w25, 128
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
	.byte	66
	.byte	30
	.byte	15
	.byte	25
	.byte	7
	.byte	26
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
	.align	4
.LC18:
	.byte	44
	.byte	-118
	.byte	24
	.byte	82
	.byte	-79
	.byte	57
	.byte	125
	.byte	-47
	.byte	-122
	.byte	-75
	.byte	-27
	.byte	-45
	.byte	-20
	.byte	-8
	.byte	-15
	.byte	-23
	.align	4
.LC19:
	.byte	-65
	.byte	-8
	.byte	-55
	.byte	95
	.byte	-1
	.byte	-86
	.byte	0
	.byte	-52
	.byte	-128
	.byte	0
	.byte	-103
	.byte	87
	.byte	0
	.byte	106
	.byte	52
	.byte	3
	.align	4
.LC20:
	.word	-1071644672
	.word	-1082130432
	.word	-1071644672
	.word	-1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC21:
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
