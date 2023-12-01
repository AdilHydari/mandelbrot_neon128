	.arch armv8-a
	.file	"neon.cc"
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
.LFB7188:
	.cfi_startproc
	mov	w0, w1
	ret
	.cfi_endproc
.LFE7188:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
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
	cbz	x20, .L9
	ldrb	w0, [x20, 56]
	cbz	w0, .L5
	ldrb	w1, [x20, 67]
.L6:
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
.L5:
	.cfi_restore_state
	mov	x0, x20
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x1, [x20]
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	ldr	x2, [x1, 48]
	cmp	x2, x0
	bne	.L10
	mov	w1, 10
	b	.L6
.L10:
	mov	w1, 10
	mov	x0, x20
	blr	x2
	and	w1, w0, 255
	b	.L6
.L9:
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
	cbz	x0, .L12
	ldr	x1, [x0]
	cbz	x1, .L13
	mov	x0, x1
	ldr	x1, [x0, -8]!
	add	x1, x1, x1, lsl 1
	add	x1, x1, 8
	bl	_ZdaPvm
	ldr	x0, [x19]
	cbnz	x0, .L13
	str	xzr, [x19]
.L12:
	ldr	x0, [x19, 544]
	add	x1, x19, 560
	cmp	x0, x1
	beq	.L15
	ldr	x1, [x19, 560]
	add	x1, x1, 1
	bl	_ZdlPvm
.L15:
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
.L17:
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
.L13:
	.cfi_restore_state
	bl	_ZdaPv
	str	xzr, [x19]
	b	.L12
.L18:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L17
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
	.uleb128 .L18-.LFB8388
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
	cbz	x0, .L107
	ldr	x0, [x22, 24]
	mov	w1, 0
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L31:
	add	x0, x22, 144
	bl	_ZNKSt12__basic_fileIcE7is_openEv
	tbz	x0, 0, .L108
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
	beq	.L36
	mov	w26, w1
	add	x0, x0, w1, uxtw
.L36:
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
	cbnz	x2, .L109
	mov	x0, x20
	bl	_ZNSo3putEc
	mov	x0, x20
	mov	w1, 77
	strb	w1, [sp, 103]
	ldr	x2, [x0]
	ldr	x2, [x2, -24]
	add	x2, x0, x2
	ldr	x2, [x2, 16]
	cbz	x2, .L39
.L112:
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L40:
	add	x21, sp, 104
	add	x23, sp, 128
	mov	x24, x21
.L50:
	ldr	x0, [x20]
	ldr	w19, [x24]
	and	w1, w19, 255
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L41
.L116:
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
	cbz	x0, .L43
.L117:
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
	cbz	x0, .L45
.L118:
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L46:
	ldr	x0, [x20]
	lsr	w1, w19, 24
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L47
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	add	x24, x24, 4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmp	x23, x24
	bne	.L50
.L49:
	ldr	x0, [x22, 24]
	mov	w1, 1
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L51
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L52:
	strb	wzr, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L53
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L54:
	mov	w1, 24
	strb	w1, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L55
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L56:
	strb	wzr, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L57
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	.p2align 3,,7
.L68:
	ldr	x0, [x20]
	ldr	w19, [x21, 28]
	and	w1, w19, 255
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L59
.L113:
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
	cbz	x0, .L61
.L114:
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
	cbz	x0, .L63
.L115:
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L64:
	ldr	x0, [x20]
	lsr	w1, w19, 24
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L65
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	add	x21, x21, 4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmp	x21, x23
	bne	.L68
.L67:
	ldr	x25, [x22, 16]
	subs	x25, x25, #1
	bmi	.L70
	ldr	x0, [x22, 8]
	cmp	x0, 0
	ble	.L86
	.p2align 3,,7
.L80:
	lsl	x24, x25, 3
	mov	x21, 0
	mov	x23, 0
	.p2align 3,,7
.L78:
	ldr	x0, [x22]
	ldr	x2, [x20]
	ldr	x0, [x0, x24]
	add	x0, x0, x21
	ldrb	w1, [x0, 2]
	strb	w1, [sp, 103]
	ldr	x0, [x2, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L71
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L72:
	ldr	x0, [x22]
	ldr	x0, [x0, x24]
	add	x0, x0, x21
	ldrb	w1, [x0, 1]
	strb	w1, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L73
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x19, x0
.L74:
	ldr	x0, [x22]
	ldr	x0, [x0, x24]
	ldrb	w1, [x0, x21]
	strb	w1, [sp, 103]
	ldr	x0, [x19]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L75
	mov	x0, x19
	add	x1, sp, 103
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x22, 8]
	add	x23, x23, 1
	add	x21, x21, 3
	cmp	x23, x0
	blt	.L78
.L86:
	add	w21, w26, 1
	cbnz	w26, .L79
	sub	x25, x25, #1
	cmn	x25, #1
	beq	.L70
.L110:
	cmp	x0, 0
	bgt	.L80
	sub	x25, x25, #1
	cmn	x25, #1
	bne	.L110
	.p2align 3,,7
.L70:
	mov	x0, x27
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L111
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
.L109:
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
	cbnz	x2, .L112
.L39:
	bl	_ZNSo3putEc
	b	.L40
	.p2align 2,,3
.L82:
	mov	x0, x20
	mov	w1, 0
	add	w19, w19, 1
	bl	_ZNSo3putEc
	cmp	w19, w21
	bne	.L85
.L104:
	sub	x25, x25, #1
	cmn	x25, #1
	beq	.L70
	ldr	x0, [x22, 8]
	cmp	x0, 0
	bgt	.L80
	.p2align 3,,7
.L79:
	mov	w19, 1
	.p2align 3,,7
.L85:
	ldr	x0, [x20]
	strb	wzr, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbz	x0, .L82
	add	x1, sp, 103
	mov	x0, x20
	mov	x2, 1
	add	w19, w19, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmp	w21, w19
	bne	.L85
	b	.L104
	.p2align 2,,3
.L75:
	mov	x0, x19
	bl	_ZNSo3putEc
	ldr	x0, [x22, 8]
	add	x23, x23, 1
	add	x21, x21, 3
	cmp	x0, x23
	bgt	.L78
	b	.L86
	.p2align 2,,3
.L73:
	mov	x0, x19
	bl	_ZNSo3putEc
	b	.L74
	.p2align 2,,3
.L71:
	mov	x0, x20
	mov	x19, x20
	bl	_ZNSo3putEc
	b	.L72
	.p2align 2,,3
.L65:
	mov	x0, x20
	add	x21, x21, 4
	bl	_ZNSo3putEc
	cmp	x21, x23
	beq	.L67
	ldr	x0, [x20]
	ldr	w19, [x21, 28]
	and	w1, w19, 255
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L113
.L59:
	mov	x0, x20
	bl	_ZNSo3putEc
	ldr	x0, [x20]
	ubfx	x1, x19, 8, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L114
.L61:
	mov	x0, x20
	bl	_ZNSo3putEc
	ldr	x0, [x20]
	ubfx	x1, x19, 16, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L115
.L63:
	mov	x0, x20
	bl	_ZNSo3putEc
	b	.L64
	.p2align 2,,3
.L47:
	mov	x0, x20
	add	x24, x24, 4
	bl	_ZNSo3putEc
	cmp	x24, x23
	beq	.L49
	ldr	x0, [x20]
	ldr	w19, [x24]
	and	w1, w19, 255
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L116
.L41:
	mov	x0, x20
	bl	_ZNSo3putEc
	ldr	x0, [x20]
	ubfx	x1, x19, 8, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L117
.L43:
	mov	x0, x20
	bl	_ZNSo3putEc
	ldr	x0, [x20]
	ubfx	x1, x19, 16, 8
	strb	w1, [sp, 103]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	x0, [x0, 16]
	cbnz	x0, .L118
.L45:
	mov	x0, x20
	bl	_ZNSo3putEc
	b	.L46
.L57:
	mov	x0, x19
	mov	w1, 0
	bl	_ZNSo3putEc
	b	.L68
.L55:
	mov	x0, x19
	bl	_ZNSo3putEc
	b	.L56
.L53:
	mov	x0, x19
	mov	w1, 0
	bl	_ZNSo3putEc
	b	.L54
.L51:
	mov	x0, x20
	mov	x19, x20
	bl	_ZNSo3putEc
	b	.L52
.L107:
	ldr	x0, [x22, 24]
	ldr	x0, [x0, -24]
	add	x0, x20, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L31
.L111:
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
.L108:
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
	cbz	x19, .L119
	ldrb	w0, [x19, 56]
	cbz	w0, .L34
	ldrb	w1, [x19, 67]
.L35:
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
.L119:
	bl	_ZSt16__throw_bad_castv
.L34:
	mov	x0, x19
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x1, [x19]
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	ldr	x2, [x1, 48]
	cmp	x2, x0
	bne	.L120
	mov	w1, 10
	b	.L35
.L120:
	mov	w1, 10
	mov	x0, x19
	blr	x2
	and	w1, w0, 255
	b	.L35
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
	ble	.L151
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
	cbz	x1, .L152
	mov	x1, x20
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.LEHE4:
	ldp	x20, x0, [x19, 8]
	mov	x1, 1152921504606846975
	mul	x20, x0, x20
	cmp	x0, x1
	bhi	.L128
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
	beq	.L131
	mov	x1, x0
	add	x2, x19, 576
	.p2align 3,,7
.L132:
	ldrh	w4, [x2]
	add	x1, x1, 3
	ldrb	w3, [x2, 2]
	strh	w4, [x1, -3]
	strb	w3, [x1, -1]
	cmp	x5, x1
	bne	.L132
.L131:
	ldr	x3, [x19, 16]
	cmp	x3, 0
	ble	.L121
	ldp	x2, x4, [x19]
	mov	x1, x0
	add	x0, x2, x3, lsl 3
	add	x3, x4, x4, lsl 1
	.p2align 3,,7
.L134:
	str	x1, [x2], 8
	add	x1, x1, x3
	cmp	x0, x2
	bne	.L134
.L121:
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
.L151:
	.cfi_restore_state
	adrp	x3, .LC4
	adrp	x1, .LC2
	adrp	x0, .LC5
	add	x3, x3, :lo12:.LC4
	add	x1, x1, :lo12:.LC2
	add	x0, x0, :lo12:.LC5
	mov	w2, 123
	bl	__assert_fail
.L152:
	adrp	x3, .LC7
	adrp	x1, .LC2
	adrp	x0, .LC8
	add	x3, x3, :lo12:.LC7
	add	x1, x1, :lo12:.LC2
	add	x0, x0, :lo12:.LC8
	mov	w2, 273
	bl	__assert_fail
.L143:
	mov	x20, x0
	mov	x0, x27
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L124:
	ldr	x0, [x26, -24]
	str	x26, [x19, 24]
	str	x28, [x23, x0]
.L125:
	str	x25, [x19, 280]
	mov	x0, x24
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x20
.LEHB6:
	bl	_Unwind_Resume
.LEHE6:
.L142:
	mov	x20, x0
	b	.L124
.L141:
	mov	x20, x0
	b	.L125
.L145:
	mov	x19, x0
	cmp	x1, 1
	bne	.L137
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
.L128:
.LEHB8:
	bl	__cxa_throw_bad_array_new_length
.LEHE8:
.L140:
	mov	x19, x0
.L137:
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x23
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB9:
	bl	_Unwind_Resume
.LEHE9:
.L144:
	mov	x19, x0
	bl	__cxa_end_catch
	b	.L137
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
	.uleb128 .L141-.LFB8394
	.uleb128 0
	.uleb128 .LEHB2-.LFB8394
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L142-.LFB8394
	.uleb128 0
	.uleb128 .LEHB3-.LFB8394
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L143-.LFB8394
	.uleb128 0
	.uleb128 .LEHB4-.LFB8394
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L140-.LFB8394
	.uleb128 0
	.uleb128 .LEHB5-.LFB8394
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L145-.LFB8394
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB8394
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8394
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L144-.LFB8394
	.uleb128 0
	.uleb128 .LEHB8-.LFB8394
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L145-.LFB8394
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
	bgt	.L176
	mov	x23, 480
	mov	x22, 640
	fmov	s9, w23
	fmov	s8, w22
	mov	w25, 128
	mov	w24, 1
.L154:
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
	cbz	x22, .L177
	ldrb	w0, [x22, 56]
	cbz	w0, .L157
	ldrb	w1, [x22, 67]
.L158:
	mov	x0, x19
	bl	_ZNSo3putEc
	bl	_ZNSo5flushEv
	adrp	x22, _ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	w19, w24, #1
	mov	x25, x0
	add	x22, x22, :lo12:_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0
	cbz	w24, .L161
	.p2align 3,,7
.L159:
	sub	w19, w19, #1
	add	x1, sp, 96
	mov	x0, x22
	mov	w3, 0
	mov	w2, 0
	stp	x21, x20, [sp, 96]
	bl	GOMP_parallel
	cmn	w19, #1
	bne	.L159
.L161:
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
.L157:
	.cfi_restore_state
	mov	x0, x22
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x1, [x22]
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	ldr	x2, [x1, 48]
	cmp	x2, x0
	bne	.L178
	mov	w1, 10
	b	.L158
.L176:
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
	beq	.L179
	sxtw	x23, w0
	mov	w2, 10
	ldr	x0, [x20, 24]
	mov	x1, 0
	sxtw	x22, w22
	bl	__isoc23_strtol
	mov	w25, w0
	cmp	w19, 4
	bne	.L180
	mov	w24, 1
	b	.L154
.L180:
	ldr	x0, [x20, 32]
	mov	w2, 10
	mov	x1, 0
	bl	__isoc23_strtol
	mov	w24, w0
	b	.L154
.L179:
	sxtw	x22, w22
	sxtw	x23, w0
	mov	w25, 128
	mov	w24, 1
	b	.L154
.L178:
	mov	x0, x22
	mov	w1, 10
	blr	x2
	and	w1, w0, 255
	b	.L158
.L177:
	bl	_ZSt16__throw_bad_castv
.LEHE11:
.L167:
	mov	x19, x0
	mov	x0, x21
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x19
.LEHB12:
	bl	_Unwind_Resume
.L168:
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
	.uleb128 .L167-.LFB8423
	.uleb128 0
	.uleb128 .LEHB11-.LFB8423
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L168-.LFB8423
	.uleb128 0
	.uleb128 .LEHB12-.LFB8423
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8423:
	.section	.text.startup
	.size	main, .-main
	.section	.text._ZN23MandelbrotMultiThreadedI11ColorSchemeE12LineRendererEiPN7EasyBMP5ImageE,"axG",@progbits,_ZN23MandelbrotMultiThreadedI11ColorSchemeE12LineRendererEiPN7EasyBMP5ImageE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN23MandelbrotMultiThreadedI11ColorSchemeE12LineRendererEiPN7EasyBMP5ImageE
	.type	_ZN23MandelbrotMultiThreadedI11ColorSchemeE12LineRendererEiPN7EasyBMP5ImageE, %function
_ZN23MandelbrotMultiThreadedI11ColorSchemeE12LineRendererEiPN7EasyBMP5ImageE:
.LFB9012:
	.cfi_startproc
	sub	sp, sp, #896
	.cfi_def_cfa_offset 896
	mov	x15, x0
	mov	x4, 0
	mov	x0, 0
	bfi	x4, x0, 0, 32
	fmov	s1, 3.0e+0
	stp	x29, x30, [sp]
	.cfi_offset 29, -896
	.cfi_offset 30, -888
	mov	x29, sp
	mov	x3, 0
	ldr	q24, [x15, 12]
	mov	x6, 0
	bfi	x6, x3, 0, 32
	mov	x7, 0
	fmov	s0, 8.0e+0
	ldr	s2, [x15, 28]
	fadd	s3, s24, s24
	fmov	w0, s24
	fmul	s1, s1, s24
	fmov	w3, s24
	fmadd	s0, s0, s24, s2
	scvtf	s6, w1
	mov	w16, w1
	mov	x5, 0
	bfi	x6, x0, 32, 32
	fmov	w0, s3
	bfi	x4, x3, 32, 32
	fmov	w3, s1
	fmov	w1, s3
	ldr	s5, [x15, 16]
	dup	v2.4s, v2.s[0]
	ldr	s17, [x15, 36]
	bfi	x7, x0, 0, 32
	fmov	w0, s1
	fmov	d1, x6
	fnmsub	s17, s6, s5, s17
	bfi	x7, x3, 32, 32
	bfi	x5, x1, 0, 32
	dup	v0.4s, v0.s[0]
	ldr	w1, [x15, 4]
	ins	v1.d[1], x7
	bfi	x5, x0, 32, 32
	adrp	x0, .LC22
	ldr	q4, [x0, #:lo12:.LC22]
	add	x0, sp, 367
	fadd	v3.4s, v2.4s, v1.4s
	and	x0, x0, -32
	fmov	d1, x4
	fmla	v2.4s, v4.4s, v24.s[0]
	ins	v1.d[1], x5
	stp	q3, q2, [x0, 448]
	fadd	v1.4s, v0.4s, v1.4s
	fmla	v0.4s, v4.4s, v24.s[0]
	ldp	q2, q3, [x0, 448]
	stp	q1, q0, [x0, 480]
	ldp	q0, q1, [x0, 480]
	stp	q2, q3, [sp, 304]
	stp	q0, q1, [sp, 272]
	cmp	w1, 0
	ble	.L181
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -872
	.cfi_offset 19, -880
	sub	w20, w1, #1
	ldr	s18, [x15, 8]
	lsr	w20, w20, 4
	mov	w1, 48
	add	w20, w20, 1
	mov	x17, x2
	dup	v17.4s, v17.s[0]
	sbfiz	x16, x16, 3, 32
	fmov	v19.4s, 4.0e+0
	add	x14, x0, 320
	umull	x20, w20, w1
	add	x13, x0, 352
	dup	v18.4s, v18.s[0]
	add	x12, x0, 384
	add	x11, x0, 416
	add	x10, x0, 512
	add	x9, x0, 64
	add	x8, x0, 96
	add	x7, x0, 128
	add	x6, x0, 160
	add	x5, x0, 192
	add	x4, x0, 224
	add	x30, x0, 256
	add	x18, x0, 288
	add	x19, x0, 32
	mov	x3, 0
	fmov	s25, 1.6e+1
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -856
	.cfi_offset 21, -864
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -840
	.cfi_offset 23, -848
	str	x25, [sp, 64]
	.cfi_offset 25, -832
	str	d8, [sp, 72]
	.cfi_offset 72, -824
	.p2align 3,,7
.L183:
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	ldp	q22, q23, [sp, 272]
	stp	xzr, xzr, [sp, 144]
	ld1	{v0.16b - v1.16b}, [x1]
	add	x1, sp, 80
	ldp	q21, q20, [sp, 304]
	stp	xzr, xzr, [sp, 160]
	st1	{v0.16b - v1.16b}, [x1]
	add	x1, sp, 112
	stp	xzr, xzr, [sp, 176]
	stp	xzr, xzr, [sp, 192]
	stp	xzr, xzr, [sp, 208]
	stp	xzr, xzr, [sp, 224]
	stp	xzr, xzr, [sp, 240]
	stp	xzr, xzr, [sp, 256]
	st1	{v0.16b - v1.16b}, [x1]
	.p2align 3,,7
.L184:
	ldp	q5, q4, [sp, 176]
	ldp	q3, q2, [sp, 208]
	ldp	q26, q16, [sp, 240]
	ldp	q28, q27, [sp, 144]
	fmul	v6.4s, v5.4s, v5.4s
	fmul	v7.4s, v4.4s, v4.4s
	fmul	v1.4s, v3.4s, v3.4s
	fmul	v0.4s, v2.4s, v2.4s
	fmul	v5.4s, v5.4s, v26.4s
	fmul	v4.4s, v4.4s, v16.4s
	fneg	v8.4s, v6.4s
	fneg	v31.4s, v7.4s
	fneg	v30.4s, v1.4s
	fmul	v3.4s, v3.4s, v28.4s
	fneg	v29.4s, v0.4s
	fmul	v2.4s, v2.4s, v27.4s
	fadd	v5.4s, v5.4s, v5.4s
	fadd	v4.4s, v4.4s, v4.4s
	fmla	v29.4s, v27.4s, v27.4s
	fmla	v8.4s, v26.4s, v26.4s
	fmla	v31.4s, v16.4s, v16.4s
	fmla	v30.4s, v28.4s, v28.4s
	fadd	v5.4s, v17.4s, v5.4s
	fadd	v4.4s, v17.4s, v4.4s
	fadd	v3.4s, v3.4s, v3.4s
	fadd	v2.4s, v2.4s, v2.4s
	fadd	v8.4s, v8.4s, v21.4s
	fadd	v31.4s, v31.4s, v20.4s
	stp	q5, q4, [x0, 320]
	fadd	v3.4s, v17.4s, v3.4s
	fadd	v5.4s, v29.4s, v23.4s
	fadd	v2.4s, v17.4s, v2.4s
	stp	q8, q31, [x0, 384]
	fadd	v30.4s, v30.4s, v22.4s
	fmla	v1.4s, v28.4s, v28.4s
	str	q5, [x0, 432]
	fmla	v0.4s, v27.4s, v27.4s
	stp	q3, q2, [x0, 352]
	ldp	q8, q28, [x14]
	str	q30, [x0, 416]
	ldp	q2, q3, [x13]
	stp	q8, q28, [sp, 176]
	ldp	q4, q5, [x11]
	stp	q2, q3, [sp, 208]
	ldp	q29, q31, [x12]
	stp	q4, q5, [sp, 144]
	fcmgt	v1.4s, v19.4s, v1.4s
	fcmgt	v0.4s, v19.4s, v0.4s
	stp	q29, q31, [sp, 240]
	fmla	v7.4s, v16.4s, v16.4s
	fmla	v6.4s, v26.4s, v26.4s
	stp	q1, q0, [x10]
	ldr	q8, [sp, 80]
	stp	q18, q18, [x0, 128]
	ldp	q5, q2, [x7]
	stp	q18, q18, [x0, 64]
	ldp	q4, q3, [x9]
	cmeq	v5.4s, v5.4s, v8.4s
	ldr	q8, [sp, 96]
	fcmgt	v6.4s, v19.4s, v6.4s
	fcmgt	v7.4s, v19.4s, v7.4s
	cmeq	v2.4s, v2.4s, v8.4s
	ldr	q8, [sp, 128]
	stp	q5, q2, [x0, 160]
	cmeq	v3.4s, v3.4s, v8.4s
	ldr	q8, [sp, 112]
	cmeq	v4.4s, v4.4s, v8.4s
	stp	q4, q3, [x0, 96]
	ldp	q16, q4, [x6]
	ldp	q5, q8, [x8]
	bic	v3.16b, v1.16b, v16.16b
	bic	v27.16b, v0.16b, v4.16b
	bic	v2.16b, v6.16b, v5.16b
	bic	v4.16b, v0.16b, v4.16b
	bic	v26.16b, v7.16b, v8.16b
	orr	v3.16b, v3.16b, v27.16b
	bic	v16.16b, v1.16b, v16.16b
	bic	v5.16b, v6.16b, v5.16b
	orr	v1.16b, v2.16b, v26.16b
	dup	d0, v3.d[1]
	bic	v8.16b, v7.16b, v8.16b
	stp	q16, q4, [x0, 224]
	ldp	q2, q4, [x4]
	orr	v0.8b, v0.8b, v3.8b
	dup	d6, v1.d[1]
	stp	q5, q8, [x0, 192]
	ldp	q5, q3, [x5]
	fmov	x1, d0
	ldr	q0, [sp, 96]
	sub	v4.4s, v0.4s, v4.4s
	orr	v0.8b, v6.8b, v1.8b
	ldr	q1, [sp, 128]
	fmov	x2, d0
	ldr	q0, [sp, 80]
	orr	x1, x1, x2
	add	x2, sp, 112
	sub	v0.4s, v0.4s, v2.4s
	sub	v2.4s, v1.4s, v3.4s
	ldr	q1, [sp, 112]
	stp	q0, q4, [x0, 288]
	sub	v1.4s, v1.4s, v5.4s
	stp	q1, q2, [x0, 256]
	ld1	{v0.16b - v1.16b}, [x30]
	st1	{v0.16b - v1.16b}, [x2]
	add	x2, sp, 80
	ld1	{v0.16b - v1.16b}, [x18]
	st1	{v0.16b - v1.16b}, [x2]
	cbnz	x1, .L184
	ldr	w1, [sp, 112]
	fmul	s0, s24, s25
	ldr	x22, [x17]
	negs	w2, w1
	and	w2, w2, 15
	and	w1, w1, 15
	dup	v0.4s, v0.s[0]
	csneg	w2, w1, w2, mi
	ldr	x1, [sp, 112]
	sbfiz	x23, x2, 1, 32
	ldr	x22, [x22, x16]
	add	x2, x23, w2, sxtw
	add	x2, x15, x2
	asr	x21, x1, 32
	add	x23, x22, x3
	negs	w1, w21
	and	w1, w1, 15
	and	w21, w21, 15
	ldrh	w24, [x2, 40]
	csneg	w1, w21, w1, mi
	fadd	v21.4s, v0.4s, v21.4s
	ldrb	w21, [x2, 42]
	strh	w24, [x22, x3]
	sbfiz	x2, x1, 1, 32
	strb	w21, [x23, 2]
	add	x1, x2, w1, sxtw
	add	x2, x15, x1
	add	x21, x3, 3
	ldr	x23, [x17]
	ldrh	w22, [x2, 40]
	ldrb	w24, [x2, 42]
	ldr	x2, [x23, x16]
	fadd	v20.4s, v0.4s, v20.4s
	ldr	w1, [sp, 120]
	fadd	v22.4s, v0.4s, v22.4s
	add	x23, x2, x21
	strh	w22, [x2, x21]
	negs	w1, w1
	ldr	w2, [sp, 120]
	and	w1, w1, 15
	strb	w24, [x23, 2]
	add	x22, x3, 6
	and	w2, w2, 15
	stp	q21, q20, [x0]
	csneg	w1, w2, w1, mi
	ldr	x2, [sp, 120]
	ldr	x23, [x17]
	fadd	v0.4s, v0.4s, v23.4s
	asr	x21, x2, 32
	sbfiz	x2, x1, 1, 32
	ldr	x23, [x23, x16]
	add	x2, x2, w1, sxtw
	negs	w1, w21
	add	x2, x15, x2
	and	w21, w21, 15
	and	w1, w1, 15
	csneg	w1, w21, w1, mi
	add	x21, x23, x22
	ldp	q2, q3, [x0]
	stp	q22, q0, [x0, 32]
	ldrh	w25, [x2, 40]
	ldrb	w24, [x2, 42]
	sbfiz	x2, x1, 1, 32
	add	x1, x2, w1, sxtw
	strh	w25, [x23, x22]
	add	x1, x15, x1
	strb	w24, [x21, 2]
	ldp	q0, q1, [x19]
	stp	q2, q3, [sp, 304]
	ldr	w2, [sp, 128]
	ldr	x24, [x17]
	negs	w2, w2
	ldrb	w23, [x1, 42]
	and	w2, w2, 15
	ldrh	w25, [x1, 40]
	add	x21, x3, 9
	ldr	w1, [sp, 128]
	add	x22, x3, 12
	ldr	x24, [x24, x16]
	and	w1, w1, 15
	csneg	w1, w1, w2, mi
	stp	q0, q1, [sp, 272]
	sbfiz	x2, x1, 1, 32
	strh	w25, [x24, x21]
	add	x1, x2, w1, sxtw
	add	x2, x15, x1
	add	x1, x24, x21
	ldr	x21, [sp, 128]
	strb	w23, [x1, 2]
	ldr	x23, [x17]
	asr	x21, x21, 32
	negs	w1, w21
	and	w21, w21, 15
	and	w1, w1, 15
	ldrh	w25, [x2, 40]
	csneg	w1, w21, w1, mi
	ldrb	w24, [x2, 42]
	ldr	x21, [x23, x16]
	sbfiz	x2, x1, 1, 32
	add	x1, x2, w1, sxtw
	add	x23, x21, x22
	add	x2, x15, x1
	strh	w25, [x21, x22]
	add	x21, x3, 15
	ldr	w1, [sp, 136]
	strb	w24, [x23, 2]
	negs	w1, w1
	ldr	x22, [x17]
	and	w1, w1, 15
	ldrh	w24, [x2, 40]
	ldrb	w23, [x2, 42]
	ldr	x2, [x22, x16]
	ldr	w22, [sp, 136]
	and	w22, w22, 15
	strh	w24, [x2, x21]
	csneg	w1, w22, w1, mi
	add	x22, x2, x21
	add	x21, x3, 18
	sbfiz	x2, x1, 1, 32
	strb	w23, [x22, 2]
	add	x1, x2, w1, sxtw
	ldr	x2, [sp, 136]
	add	x1, x15, x1
	ldr	x22, [x17]
	asr	x2, x2, 32
	ldrh	w24, [x1, 40]
	ldrb	w23, [x1, 42]
	negs	w1, w2
	ldr	x22, [x22, x16]
	and	w2, w2, 15
	and	w1, w1, 15
	csneg	w1, w2, w1, mi
	add	x25, x22, x21
	strh	w24, [x22, x21]
	add	x21, x3, 21
	sbfiz	x2, x1, 1, 32
	add	x1, x2, w1, sxtw
	strb	w23, [x25, 2]
	add	x2, x15, x1
	ldr	w1, [sp, 80]
	ldr	x22, [x17]
	negs	w1, w1
	ldrh	w24, [x2, 40]
	and	w1, w1, 15
	ldrb	w23, [x2, 42]
	ldr	x2, [x22, x16]
	ldr	w22, [sp, 80]
	and	w22, w22, 15
	strh	w24, [x2, x21]
	csneg	w1, w22, w1, mi
	add	x22, x2, x21
	add	x21, x3, 24
	sbfiz	x2, x1, 1, 32
	strb	w23, [x22, 2]
	add	x1, x2, w1, sxtw
	ldr	x2, [sp, 80]
	add	x1, x15, x1
	ldr	x22, [x17]
	asr	x2, x2, 32
	ldrb	w23, [x1, 42]
	ldrh	w25, [x1, 40]
	negs	w1, w2
	ldr	x22, [x22, x16]
	and	w2, w2, 15
	and	w1, w1, 15
	add	x24, x22, x21
	csneg	w1, w2, w1, mi
	strh	w25, [x22, x21]
	add	x21, x3, 27
	sbfiz	x2, x1, 1, 32
	strb	w23, [x24, 2]
	add	x1, x2, w1, sxtw
	add	x2, x15, x1
	ldr	w1, [sp, 88]
	ldr	x22, [x17]
	negs	w1, w1
	ldrh	w24, [x2, 40]
	and	w1, w1, 15
	ldrb	w23, [x2, 42]
	ldr	x2, [x22, x16]
	ldr	w22, [sp, 88]
	and	w22, w22, 15
	strh	w24, [x2, x21]
	csneg	w1, w22, w1, mi
	add	x22, x2, x21
	add	x21, x3, 30
	sbfiz	x2, x1, 1, 32
	strb	w23, [x22, 2]
	add	x1, x2, w1, sxtw
	ldr	x2, [sp, 88]
	add	x1, x15, x1
	ldr	x22, [x17]
	asr	x2, x2, 32
	ldrb	w23, [x1, 42]
	ldrh	w24, [x1, 40]
	negs	w1, w2
	ldr	x22, [x22, x16]
	and	w2, w2, 15
	and	w1, w1, 15
	add	x25, x22, x21
	csneg	w1, w2, w1, mi
	strh	w24, [x22, x21]
	add	x21, x3, 33
	sbfiz	x2, x1, 1, 32
	strb	w23, [x25, 2]
	add	x1, x2, w1, sxtw
	add	x2, x15, x1
	ldr	w1, [sp, 96]
	ldr	x22, [x17]
	negs	w1, w1
	ldrh	w24, [x2, 40]
	and	w1, w1, 15
	ldrb	w23, [x2, 42]
	ldr	x2, [x22, x16]
	ldr	w22, [sp, 96]
	and	w22, w22, 15
	strh	w24, [x2, x21]
	csneg	w1, w22, w1, mi
	add	x22, x2, x21
	add	x21, x3, 36
	sbfiz	x2, x1, 1, 32
	strb	w23, [x22, 2]
	add	x1, x2, w1, sxtw
	ldr	x2, [sp, 96]
	add	x1, x15, x1
	ldr	x22, [x17]
	asr	x2, x2, 32
	ldrh	w24, [x1, 40]
	ldrb	w23, [x1, 42]
	negs	w1, w2
	ldr	x22, [x22, x16]
	and	w2, w2, 15
	and	w1, w1, 15
	add	x25, x22, x21
	csneg	w1, w2, w1, mi
	strh	w24, [x22, x21]
	add	x21, x3, 39
	sbfiz	x2, x1, 1, 32
	ldr	w22, [sp, 104]
	strb	w23, [x25, 2]
	add	x1, x2, w1, sxtw
	ldr	w2, [sp, 104]
	add	x1, x15, x1
	ldr	x23, [x17]
	negs	w2, w2
	and	w24, w22, 15
	and	w2, w2, 15
	ldrh	w22, [x1, 40]
	csneg	w2, w24, w2, mi
	ldrb	w24, [x1, 42]
	ldr	x1, [x23, x16]
	sbfiz	x23, x2, 1, 32
	add	x2, x23, w2, sxtw
	add	x23, x1, x21
	add	x2, x15, x2
	strh	w22, [x1, x21]
	add	x22, x3, 42
	ldr	x1, [sp, 104]
	strb	w24, [x23, 2]
	ldrb	w23, [x2, 42]
	asr	x21, x1, 32
	ldrh	w25, [x2, 40]
	negs	w1, w21
	and	w21, w21, 15
	ldr	x2, [x17]
	and	w1, w1, 15
	csneg	w1, w21, w1, mi
	sbfiz	x21, x1, 1, 32
	add	x1, x21, w1, sxtw
	ldr	x21, [x2, x16]
	add	x1, x15, x1
	add	x2, x3, 45
	add	x3, x3, 48
	add	x24, x21, x22
	strh	w25, [x21, x22]
	strb	w23, [x24, 2]
	ldr	x21, [x17]
	ldrb	w22, [x1, 42]
	ldrh	w23, [x1, 40]
	ldr	x1, [x21, x16]
	add	x21, x1, x2
	strh	w23, [x1, x2]
	strb	w22, [x21, 2]
	cmp	x3, x20
	bne	.L183
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldr	x25, [sp, 64]
	.cfi_restore 25
	ldr	d8, [sp, 72]
	.cfi_restore 72
.L181:
	ldp	x29, x30, [sp]
	add	sp, sp, 896
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9012:
	.size	_ZN23MandelbrotMultiThreadedI11ColorSchemeE12LineRendererEiPN7EasyBMP5ImageE, .-_ZN23MandelbrotMultiThreadedI11ColorSchemeE12LineRendererEiPN7EasyBMP5ImageE
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0, %function
_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0:
.LFB9240:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x1, x0
	mov	x3, 1
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	add	x5, sp, 56
	add	x4, sp, 48
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	ldp	x21, x22, [x1]
	mov	x2, x3
	mov	x0, 0
	ldrsw	x1, [x21]
	bl	GOMP_loop_nonmonotonic_dynamic_start
	tbz	x0, 0, .L189
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -40
	.cfi_offset 19, -48
	.p2align 3,,7
.L191:
	ldr	w19, [sp, 48]
	ldr	w20, [sp, 56]
	.p2align 3,,7
.L190:
	mov	w1, w19
	mov	x2, x22
	mov	x0, x21
	add	w19, w19, 1
	bl	_ZN23MandelbrotMultiThreadedI11ColorSchemeE12LineRendererEiPN7EasyBMP5ImageE
	cmp	w20, w19
	bgt	.L190
	add	x1, sp, 56
	add	x0, sp, 48
	bl	GOMP_loop_nonmonotonic_dynamic_next
	tbnz	x0, 0, .L191
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L189:
	bl	GOMP_loop_end_nowait
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9240:
	.size	_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0, .-_ZN23MandelbrotMultiThreadedI11ColorSchemeE19RenderMultiThreadedEPN7EasyBMP5ImageE._omp_fn.0
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
	.section	.rodata.cst16
	.align	4
.LC22:
	.word	1082130432
	.word	1084227584
	.word	1086324736
	.word	1088421888
	.section	.rodata
	.align	4
.LC23:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
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
