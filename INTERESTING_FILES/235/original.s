	.text
	.file	""
	.globl	inflateBackInit_                # -- Begin function inflateBackInit_
	.p2align	4, 0x90
	.type	inflateBackInit_,@function
inflateBackInit_:                       # @inflateBackInit_
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	je	.LBB0_2
# %bb.1:                                # %if.end
	movq	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	inflateBackInit_, .Lfunc_end0-inflateBackInit_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
