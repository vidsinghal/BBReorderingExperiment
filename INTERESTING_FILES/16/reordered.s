	.text
	.file	""
	.globl	dptsvx_                         # -- Begin function dptsvx_
	.p2align	4, 0x90
	.type	dptsvx_,@function
dptsvx_:                                # @dptsvx_
# %bb.0:                                # %entry
	testl	%esi, %esi
	setg	%al
	andb	%dl, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then16
	movl	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	dptsvx_, .Lfunc_end0-dptsvx_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
