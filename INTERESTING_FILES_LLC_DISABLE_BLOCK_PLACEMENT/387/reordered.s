	.text
	.file	""
	.globl	dggqrf_                         # -- Begin function dggqrf_
	.p2align	4, 0x90
	.type	dggqrf_,@function
dggqrf_:                                # @dggqrf_
# %bb.0:                                # %entry
	xorb	$1, %dl
	movq	$0, (%rdi)
	testl	%esi, %esi
	setle	%al
	testb	%dl, %al
	je	.LBB0_2
# %bb.1:                                # %if.then100
	movl	$0, (%rdi)
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	dggqrf_, .Lfunc_end0-dggqrf_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits