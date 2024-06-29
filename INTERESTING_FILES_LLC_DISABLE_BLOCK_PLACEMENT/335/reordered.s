	.text
	.file	""
	.globl	axl_dbg                         # -- Begin function axl_dbg
	.p2align	4, 0x90
	.type	axl_dbg,@function
axl_dbg:                                # @axl_dbg
# %bb.0:                                # %entry
	xorb	$1, %dil
	movl	0, %eax
	movq	axl_debug@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	setns	%al
	testb	%dil, %al
	je	.LBB0_2
# %bb.1:                                # %if.then4
	movl	0, %eax
.LBB0_2:                                # %if.end12
	retq
.Lfunc_end0:
	.size	axl_dbg, .Lfunc_end0-axl_dbg
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
