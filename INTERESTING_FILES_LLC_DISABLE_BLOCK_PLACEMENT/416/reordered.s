	.text
	.file	""
	.globl	xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64 # -- Begin function xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64
	.p2align	4, 0x90
	.type	xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64,@function
xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64: # @xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
                                        # implicit-def: $rbx
.LBB0_1:                                # %do.body25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpq	$2, %rbx
	jae	.LBB0_3
.LBB0_2:                                # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%edi, %edi
	callq	_mm_loadl_epi64@PLT
	jmp	.LBB0_1
.LBB0_3:                                # %while.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	0, %xmm0
	addq	$-8, %rbx
	cmpq	$1, %rbx
	ja	.LBB0_3
	jmp	.LBB0_2
.Lfunc_end0:
	.size	xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64, .Lfunc_end0-xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
