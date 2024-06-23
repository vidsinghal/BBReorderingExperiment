	.text
	.file	""
	.globl	ssbtrd_                         # -- Begin function ssbtrd_
	.p2align	4, 0x90
	.type	ssbtrd_,@function
ssbtrd_:                                # @ssbtrd_
# %bb.0:                                # %entry
	testl	%r8d, %r8d
	setg	%al
	testb	%al, 8(%rsp)
	je	.LBB0_2
# %bb.1:                                # %if.then24
	movl	$0, (%rdi)
.LBB0_2:                                # %if.end38
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ssbtrd_, .Lfunc_end0-ssbtrd_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
