	.text
	.file	""
	.globl	is_same_seed                    # -- Begin function is_same_seed
	.p2align	4, 0x90
	.type	is_same_seed,@function
is_same_seed:                           # @is_same_seed
# %bb.0:                                # %entry
	testl	%esi, %esi
	setne	%cl
	andb	%dl, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.end32
	movl	(%rdi), %eax
.LBB0_2:                                # %cleanup
	retq
.Lfunc_end0:
	.size	is_same_seed, .Lfunc_end0-is_same_seed
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
