	.text
	.file	""
	.globl	ssbtrd_                         # -- Begin function ssbtrd_
	.p2align	4, 0x90
	.type	ssbtrd_,@function
ssbtrd_:                                # @ssbtrd_
# %bb.0:                                # %entry
	movl	$0, (%rdi)
	testl	%esi, %esi
	setne	%al
	testl	%edx, %edx
	setg	%cl
	testb	%cl, %al
	jne	.LBB0_3
# %bb.1:                                # %for.cond538.preheader
	movl	$0, (%rdi)
.LBB0_2:                                # %for.cond538
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ssbtrd_, .Lfunc_end0-ssbtrd_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
