	.text
	.file	""
	.globl	sppsv_                          # -- Begin function sppsv_
	.p2align	4, 0x90
	.type	sppsv_,@function
sppsv_:                                 # @sppsv_
# %bb.0:                                # %entry
	testl	%esi, %esi
	setg	%al
	testl	%edx, %edx
	sets	%cl
	testb	%cl, %al
	je	.LBB0_2
# %bb.1:                                # %if.then6
	movl	$0, (%rdi)
.LBB0_2:                                # %if.end13
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	sppsv_, .Lfunc_end0-sppsv_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
