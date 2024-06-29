	.text
	.file	""
	.globl	init_class                      # -- Begin function init_class
	.p2align	4, 0x90
	.type	init_class,@function
init_class:                             # @init_class
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movq	$0, 80(%rdi)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, 112(%rdi)
	movq	$0, 312(%rdi)
	retq
.Lfunc_end0:
	.size	init_class, .Lfunc_end0-init_class
                                        # -- End function
	.globl	value_count                     # -- Begin function value_count
	.p2align	4, 0x90
	.type	value_count,@function
value_count:                            # @value_count
# %bb.0:                                # %entry
	testl	%edi, %edi
	je	.LBB1_2
# %bb.1:                                # %if.then
	movl	$0, 0
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	value_count, .Lfunc_end1-value_count
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
