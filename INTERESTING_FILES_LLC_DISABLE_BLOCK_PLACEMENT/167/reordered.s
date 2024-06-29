	.text
	.file	""
	.globl	xnn_x32_zip_x2_ukernel__sse2    # -- Begin function xnn_x32_zip_x2_ukernel__sse2
	.p2align	4, 0x90
	.type	xnn_x32_zip_x2_ukernel__sse2,@function
xnn_x32_zip_x2_ukernel__sse2:           # @xnn_x32_zip_x2_ukernel__sse2
# %bb.0:                                # %entry
	leaq	-16(%rdi), %rcx
	movl	%ecx, %edx
	shrl	$4, %edx
	incl	%edx
	andl	$7, %edx
	jne	.LBB0_6
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB0_3
.LBB0_2:                                # %while.body.prol.loopexit.loopexit
	subq	%rax, %rdi
.LBB0_3:                                # %while.body.prol.loopexit
	cmpq	$112, %rcx
	jb	.LBB0_5
.LBB0_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	subq	$-128, %rax
	addq	$-128, %rdi
	cmpq	$15, %rdi
	ja	.LBB0_4
.LBB0_5:                                # %while.end
	movl	(%rax), %eax
	movl	%eax, (%rsi)
	retq
.LBB0_6:                                # %while.body.prol.preheader
	shll	$4, %edx
	xorl	%eax, %eax
.LBB0_7:                                # %while.body.prol
                                        # =>This Inner Loop Header: Depth=1
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.LBB0_7
	jmp	.LBB0_2
.Lfunc_end0:
	.size	xnn_x32_zip_x2_ukernel__sse2, .Lfunc_end0-xnn_x32_zip_x2_ukernel__sse2
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
