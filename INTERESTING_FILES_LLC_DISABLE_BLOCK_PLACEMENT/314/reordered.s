	.text
	.file	""
	.globl	t_add                           # -- Begin function t_add
	.p2align	4, 0x90
	.type	t_add,@function
t_add:                                  # @t_add
# %bb.0:                                # %entry
	movq	%rdi, %rax
	testb	$1, %cl
	jne	.LBB0_2
# %bb.1:                                # %land.rhs
	incq	%rax
	cmpq	$1, %rsi
	adcq	$0, %rsi
	xorl	%ecx, %ecx
	cmpq	%r8, %rsi
	setbe	%cl
	movl	%ecx, (%rdx)
	retq
.LBB0_2:                                # %entry.land.end_crit_edge
	orq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, (%rdx)
	retq
.Lfunc_end0:
	.size	t_add, .Lfunc_end0-t_add
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
