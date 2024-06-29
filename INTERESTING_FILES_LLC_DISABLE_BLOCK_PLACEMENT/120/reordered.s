	.text
	.file	""
	.globl	lsystem                         # -- Begin function lsystem
	.p2align	4, 0x90
	.type	lsystem,@function
lsystem:                                # @lsystem
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_5
.LBB0_1:                                # %if.end
	testb	$1, %sil
	jne	.LBB0_4
.LBB0_2:                                # %if.end10
	testq	%rdx, %rdx
	jne	.LBB0_6
# %bb.3:                                # %if.end38
	retq
.LBB0_4:                                # %if.then8
	movl	0, %eax
	jmp	.LBB0_2
.LBB0_5:                                # %if.else
	movl	$0, 0
	jmp	.LBB0_1
.LBB0_6:                                # %land.lhs.true
	movq	0, %rax
	retq
.Lfunc_end0:
	.size	lsystem, .Lfunc_end0-lsystem
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
