	.text
	.file	""
	.globl	Dynprog_end5_gap                # -- Begin function Dynprog_end5_gap
	.p2align	4, 0x90
	.type	Dynprog_end5_gap,@function
Dynprog_end5_gap:                       # @Dynprog_end5_gap
# %bb.0:                                # %entry
	notb	%cl
	testl	%edx, %edx
	setns	%al
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then29
	movl	$0, (%rdi)
	movl	$0, (%rsi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	Dynprog_end5_gap, .Lfunc_end0-Dynprog_end5_gap
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
