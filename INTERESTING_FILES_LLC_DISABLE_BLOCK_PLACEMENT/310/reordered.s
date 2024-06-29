	.text
	.file	""
	.globl	H5G_rootof                      # -- Begin function H5G_rootof
	.p2align	4, 0x90
	.type	H5G_rootof,@function
H5G_rootof:                             # @H5G_rootof
# %bb.0:                                # %entry
	movq	H5G_rootof.func_check@GOTPCREL(%rip), %rax
	cmpb	$1, (%rax)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movb	$1, (%rax)
.LBB0_2:                                # %lor.lhs.false
	movq	(%rdi), %rax
	retq
.Lfunc_end0:
	.size	H5G_rootof, .Lfunc_end0-H5G_rootof
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
