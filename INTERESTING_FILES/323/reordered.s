	.text
	.file	""
	.globl	ztpqrt_                         # -- Begin function ztpqrt_
	.p2align	4, 0x90
	.type	ztpqrt_,@function
ztpqrt_:                                # @ztpqrt_
# %bb.0:                                # %entry
	notb	%dl
	testl	%esi, %esi
	setle	%al
	orb	%dl, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then31
	movl	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ztpqrt_, .Lfunc_end0-ztpqrt_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
