	.text
	.file	""
	.globl	xnn_f32_vrndd_ukernel__avx_x16  # -- Begin function xnn_f32_vrndd_ukernel__avx_x16
	.p2align	4, 0x90
	.type	xnn_f32_vrndd_ukernel__avx_x16,@function
xnn_f32_vrndd_ukernel__avx_x16:         # @xnn_f32_vrndd_ukernel__avx_x16
# %bb.0:                                # %entry
	cmpq	$63, %rdi
	jbe	.LBB0_8
# %bb.1:                                # %for.body.preheader
	movaps	(%rsi), %xmm0
	movaps	16(%rsi), %xmm0
	leaq	-64(%rdi), %rax
	movl	$64, %esi
	cmpq	$63, %rax
	jbe	.LBB0_8
# %bb.2:                                # %for.body.preheader6
	addq	$-128, %rdi
	movl	%edi, %ecx
	shrl	$6, %ecx
	incl	%ecx
	andl	$7, %ecx
	je	.LBB0_6
# %bb.3:                                # %for.body.prol.preheader
	shll	$6, %ecx
	xorl	%r8d, %r8d
.LBB0_4:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	64, %xmm0
	movaps	80, %xmm0
	addq	$64, %r8
	cmpq	%r8, %rcx
	jne	.LBB0_4
# %bb.5:                                # %for.body.prol.loopexit.loopexit
	subq	%r8, %rax
.LBB0_6:                                # %for.body.prol.loopexit
	cmpq	$448, %rdi                      # imm = 0x1C0
	jb	.LBB0_8
.LBB0_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	64, %xmm0
	movaps	80, %xmm0
	movaps	64, %xmm0
	movaps	80, %xmm0
	movaps	64, %xmm0
	movaps	80, %xmm0
	movaps	64, %xmm0
	movaps	80, %xmm0
	movaps	64, %xmm0
	movaps	80, %xmm0
	movaps	64, %xmm0
	movaps	80, %xmm0
	movaps	64, %xmm0
	movaps	80, %xmm0
	movaps	64, %xmm0
	movaps	80, %xmm0
	addq	$-512, %rax                     # imm = 0xFE00
	cmpq	$63, %rax
	ja	.LBB0_7
.LBB0_8:                                # %for.cond.for.cond5_crit_edge
	movaps	(%rsi), %xmm0
	movaps	16(%rsi), %xmm1
	movaps	%xmm0, (%rdx)
	movaps	%xmm1, 16(%rdx)
.LBB0_9:                                # %for.cond5
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_9
.Lfunc_end0:
	.size	xnn_f32_vrndd_ukernel__avx_x16, .Lfunc_end0-xnn_f32_vrndd_ukernel__avx_x16
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
