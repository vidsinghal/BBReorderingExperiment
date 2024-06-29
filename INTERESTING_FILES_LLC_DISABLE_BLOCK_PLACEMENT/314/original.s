	.text
	.file	""
	.globl	t_add                           # -- Begin function t_add
	.p2align	4, 0x90
	.type	t_add,@function
t_add:                                  # @t_add
# %bb.0:                                # %entry
	movq	%rsi, %rax
	testb	$1, %cl
	je	.LBB0_2
# %bb.1:                                # %entry.land.end_crit_edge
	orq	%rdi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, (%rdx)
	retq
.LBB0_2:                                # %land.rhs
	incq	%rdi
	cmpq	$1, %rax
	adcq	$0, %rax
	xorl	%ecx, %ecx
	cmpq	%r8, %rax
	setbe	%cl
	movq	%rdi, %rax
	movl	%ecx, (%rdx)
	retq
.Lfunc_end0:
	.size	t_add, .Lfunc_end0-t_add
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
