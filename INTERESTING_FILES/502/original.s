	.text
	.file	""
	.globl	try_reduce_to_chain             # -- Begin function try_reduce_to_chain
	.p2align	4, 0x90
	.type	try_reduce_to_chain,@function
try_reduce_to_chain:                    # @try_reduce_to_chain
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%al
	andb	%r8b, %al
	cmpb	$1, %al
	je	.LBB0_2
# %bb.1:                                # %if.end
	movl	8(%rsp), %eax
	movq	0, %rcx
	movl	%eax, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	try_reduce_to_chain, .Lfunc_end0-try_reduce_to_chain
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
