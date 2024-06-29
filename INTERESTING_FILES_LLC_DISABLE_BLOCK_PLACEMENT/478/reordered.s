	.text
	.file	""
	.globl	src_process                     # -- Begin function src_process
	.p2align	4, 0x90
	.type	src_process,@function
src_process:                            # @src_process
# %bb.0:                                # %entry
	testb	$1, %r8b
	jne	.LBB0_4
# %bb.1:                                # %if.end10
	testq	%rdx, %rdx
	sets	%al
	orb	%cl, %al
	testb	$1, %al
	je	.LBB0_3
# %bb.2:
	movq	$0, (%rdi)
.LBB0_3:
	movq	$0, (%rsi)
.LBB0_4:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	src_process, .Lfunc_end0-src_process
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
