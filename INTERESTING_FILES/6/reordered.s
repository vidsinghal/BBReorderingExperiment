	.text
	.file	""
	.globl	xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32 # -- Begin function xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32
	.p2align	4, 0x90
	.type	xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32,@function
xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32: # @xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorps	%xmm0, %xmm0
	callq	_mm_add_epi32@PLT
	testb	$1, %bpl
	jne	.LBB0_1
# %bb.2:                                # %if.then152
	movb	$0, (%rbx)
	.p2align	4, 0x90
.LBB0_1:                                # %do.body.backedge
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	callq	_mm_add_epi32@PLT
	jmp	.LBB0_1
.Lfunc_end0:
	.size	xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32, .Lfunc_end0-xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
