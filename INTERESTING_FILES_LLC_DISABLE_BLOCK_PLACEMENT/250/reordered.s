	.text
	.file	""
	.globl	xnn_f32_vrndu_ukernel__avx_x16  # -- Begin function xnn_f32_vrndu_ukernel__avx_x16
	.p2align	4, 0x90
	.type	xnn_f32_vrndu_ukernel__avx_x16,@function
xnn_f32_vrndu_ukernel__avx_x16:         # @xnn_f32_vrndu_ukernel__avx_x16
# %bb.0:                                # %entry
	movq	%rsi, %rax
	cmpq	$63, %rdi
	jbe	.LBB0_7
# %bb.1:                                # %for.body.preheader
	leaq	-64(%rdi), %rcx
	movl	%ecx, %eax
	shrl	$6, %eax
	incl	%eax
	andl	$7, %eax
	je	.LBB0_5
# %bb.2:                                # %for.body.prol.preheader
	shll	$6, %eax
	xorl	%edx, %edx
.LBB0_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	0, %xmm0
	movaps	16, %xmm0
	addq	$64, %rdx
	cmpq	%rdx, %rax
	jne	.LBB0_3
# %bb.4:                                # %for.body.prol.loopexit.loopexit
	subq	%rdx, %rdi
.LBB0_5:                                # %for.body.prol.loopexit
	movl	$64, %eax
	cmpq	$448, %rcx                      # imm = 0x1C0
	jb	.LBB0_7
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	addq	$-512, %rdi                     # imm = 0xFE00
	cmpq	$63, %rdi
	ja	.LBB0_6
.LBB0_7:                                # %for.cond5
	movaps	(%rax), %xmm0
	movaps	16(%rax), %xmm1
	movaps	%xmm0, (%rsi)
	movaps	%xmm1, 16(%rsi)
	retq
.Lfunc_end0:
	.size	xnn_f32_vrndu_ukernel__avx_x16, .Lfunc_end0-xnn_f32_vrndu_ukernel__avx_x16
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
