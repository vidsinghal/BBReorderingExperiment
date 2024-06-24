	.text
	.file	""
	.globl	ztplqt_                         # -- Begin function ztplqt_
	.p2align	4, 0x90
	.type	ztplqt_,@function
ztplqt_:                                # @ztplqt_
# %bb.0:                                # %entry
	testl	%r8d, %r8d
	setg	%al
	andb	8(%rsp), %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then31
	movl	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ztplqt_, .Lfunc_end0-ztplqt_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
