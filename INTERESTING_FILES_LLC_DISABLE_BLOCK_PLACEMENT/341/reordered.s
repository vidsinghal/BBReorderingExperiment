	.text
	.file	""
	.globl	LispCharCompare                 # -- Begin function LispCharCompare
	.p2align	4, 0x90
	.type	LispCharCompare,@function
LispCharCompare:                        # @LispCharCompare
# %bb.0:                                # %entry
	movq	%rdi, %rax
	testb	$1, %sil
	jne	.LBB0_3
# %bb.1:                                # %land.rhs160
	cmpw	$0, (%rax)
	jne	.LBB0_3
# %bb.2:
	xorl	%eax, %eax
.LBB0_3:                                # %cleanup
	retq
.Lfunc_end0:
	.size	LispCharCompare, .Lfunc_end0-LispCharCompare
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
