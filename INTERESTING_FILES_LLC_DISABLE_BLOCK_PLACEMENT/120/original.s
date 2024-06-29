	.text
	.file	""
	.globl	lsystem                         # -- Begin function lsystem
	.p2align	4, 0x90
	.type	lsystem,@function
lsystem:                                # @lsystem
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.else
	movl	$0, 0
.LBB0_2:                                # %if.end
	testb	$1, %sil
	je	.LBB0_4
# %bb.3:                                # %if.then8
	movl	0, %eax
.LBB0_4:                                # %if.end10
	testq	%rdx, %rdx
	je	.LBB0_6
# %bb.5:                                # %land.lhs.true
	movq	0, %rax
.LBB0_6:                                # %if.end38
	retq
.Lfunc_end0:
	.size	lsystem, .Lfunc_end0-lsystem
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
