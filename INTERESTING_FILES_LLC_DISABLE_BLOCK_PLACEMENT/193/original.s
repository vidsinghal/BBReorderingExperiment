	.text
	.file	""
	.globl	dggsvp_                         # -- Begin function dggsvp_
	.p2align	4, 0x90
	.type	dggsvp_,@function
dggsvp_:                                # @dggsvp_
# %bb.0:                                # %entry
	cmpl	$0, 8(%rsp)
	setg	%al
	testb	%al, 16(%rsp)
	je	.LBB0_2
# %bb.1:                                # %if.then69
	movl	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	dggsvp_, .Lfunc_end0-dggsvp_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
