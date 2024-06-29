	.text
	.file	""
	.globl	cgemlq_                         # -- Begin function cgemlq_
	.p2align	4, 0x90
	.type	cgemlq_,@function
cgemlq_:                                # @cgemlq_
# %bb.0:                                # %entry
	testl	%esi, %esi
	setns	%al
	testb	%dl, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end102.sink.split
	shrl	$31, %esi
	movl	%esi, (%rdi)
.LBB0_2:                                # %if.end102
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cgemlq_, .Lfunc_end0-cgemlq_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
