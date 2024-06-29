	.text
	.file	""
	.globl	xnn_f32_vlrelu_ukernel__scalar_x4 # -- Begin function xnn_f32_vlrelu_ukernel__scalar_x4
	.p2align	4, 0x90
	.type	xnn_f32_vlrelu_ukernel__scalar_x4,@function
xnn_f32_vlrelu_ukernel__scalar_x4:      # @xnn_f32_vlrelu_ukernel__scalar_x4
# %bb.0:                                # %entry
	cmpq	$16, %rdi
	jb	.LBB0_7
# %bb.1:                                # %for.body.preheader
	leaq	-16(%rdi), %rax
	movl	%eax, %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$7, %ecx
	je	.LBB0_5
# %bb.2:                                # %for.body.prol.preheader
	shll	$4, %ecx
	xorl	%r8d, %r8d
.LBB0_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdx)
	movl	$0, (%rsi)
	addq	$16, %r8
	cmpq	%r8, %rcx
	jne	.LBB0_3
# %bb.4:                                # %for.body.prol.loopexit.loopexit
	subq	%r8, %rdi
.LBB0_5:                                # %for.body.prol.loopexit
	cmpq	$112, %rax
	jb	.LBB0_7
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdx)
	movl	$0, (%rsi)
	movl	$0, (%rdx)
	movl	$0, (%rsi)
	movl	$0, (%rdx)
	movl	$0, (%rsi)
	movl	$0, (%rdx)
	movl	$0, (%rsi)
	movl	$0, (%rdx)
	movl	$0, (%rsi)
	movl	$0, (%rdx)
	movl	$0, (%rsi)
	movl	$0, (%rdx)
	movl	$0, (%rsi)
	movl	$0, (%rdx)
	movl	$0, (%rsi)
	addq	$-128, %rdi
	cmpq	$15, %rdi
	ja	.LBB0_6
.LBB0_7:                                # %for.end
	retq
.Lfunc_end0:
	.size	xnn_f32_vlrelu_ukernel__scalar_x4, .Lfunc_end0-xnn_f32_vlrelu_ukernel__scalar_x4
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
