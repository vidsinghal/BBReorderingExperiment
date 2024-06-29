	.text
	.file	""
	.globl	cggrqf_                         # -- Begin function cggrqf_
	.p2align	4, 0x90
	.type	cggrqf_,@function
cggrqf_:                                # @cggrqf_
# %bb.0:                                # %entry
	movl	$0, (%rsi)
	testl	%edx, %edx
	setg	%al
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then101
	movl	$0, (%rdi)
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cggrqf_, .Lfunc_end0-cggrqf_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
