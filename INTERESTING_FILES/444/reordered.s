	.text
	.file	""
	.globl	cunmqr_check                    # -- Begin function cunmqr_check
	.p2align	4, 0x90
	.type	cunmqr_check,@function
cunmqr_check:                           # @cunmqr_check
# %bb.0:                                # %entry
	movl	0, %eax
	testl	%r8d, %r8d
	sets	%al
	andb	8(%rsp), %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then30
	movl	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cunmqr_check, .Lfunc_end0-cunmqr_check
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
