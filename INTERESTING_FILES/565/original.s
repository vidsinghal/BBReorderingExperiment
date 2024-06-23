	.text
	.file	""
	.globl	xnn_f32_dwconv2d_chw_ukernel_5x5s2p2__sse_2x4_acc2 # -- Begin function xnn_f32_dwconv2d_chw_ukernel_5x5s2p2__sse_2x4_acc2
	.p2align	4, 0x90
	.type	xnn_f32_dwconv2d_chw_ukernel_5x5s2p2__sse_2x4_acc2,@function
xnn_f32_dwconv2d_chw_ukernel_5x5s2p2__sse_2x4_acc2: # @xnn_f32_dwconv2d_chw_ukernel_5x5s2p2__sse_2x4_acc2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	testb	$1, %dil
	je	.LBB0_1
# %bb.3:                                # %for.end
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %for.body.preheader
	.cfi_def_cfa_offset 80
	movaps	%xmm3, 32(%rsp)                 # 16-byte Spill
	movaps	%xmm2, 16(%rsp)                 # 16-byte Spill
	movaps	%xmm1, (%rsp)                   # 16-byte Spill
	movaps	%xmm0, 48(%rsp)                 # 16-byte Spill
	.p2align	4, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	48(%rsp), %xmm0                 # 16-byte Reload
	callq	_mm_mul_ps@PLT
	movaps	(%rsp), %xmm0                   # 16-byte Reload
	callq	_mm_mul_ps@PLT
	movaps	16(%rsp), %xmm0                 # 16-byte Reload
	callq	_mm_mul_ps@PLT
	movaps	32(%rsp), %xmm0                 # 16-byte Reload
	callq	_mm_mul_ps@PLT
	jmp	.LBB0_2
.Lfunc_end0:
	.size	xnn_f32_dwconv2d_chw_ukernel_5x5s2p2__sse_2x4_acc2, .Lfunc_end0-xnn_f32_dwconv2d_chw_ukernel_5x5s2p2__sse_2x4_acc2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
