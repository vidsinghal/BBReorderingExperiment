	.text
	.file	""
	.globl	xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32 # -- Begin function xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32
	.p2align	4, 0x90
	.type	xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32,@function
xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32: # @xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movsbl	%dil, %edi
	callq	_mm_cvtsi32_si128@PLT
	testb	$1, %bl
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32, .Lfunc_end0-xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
