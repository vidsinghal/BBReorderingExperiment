	.text
	.file	""
	.globl	cholmod_postorder               # -- Begin function cholmod_postorder
	.p2align	4, 0x90
	.type	cholmod_postorder,@function
cholmod_postorder:                      # @cholmod_postorder
# %bb.0:                                # %entry
	testl	%ecx, %ecx
	setg	%al
	andb	%r9b, %al
	cmpb	$1, %al
	jne	.LBB0_3
# %bb.1:                                # %for.cond.preheader
	movq	8(%rsp), %rax
	movl	$0, (%rax)
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cholmod_postorder, .Lfunc_end0-cholmod_postorder
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
