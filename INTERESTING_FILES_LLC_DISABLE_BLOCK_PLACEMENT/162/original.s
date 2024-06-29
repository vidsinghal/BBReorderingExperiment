	.text
	.file	""
	.globl	gk_gkmcoreCreate                # -- Begin function gk_gkmcoreCreate
	.p2align	4, 0x90
	.type	gk_gkmcoreCreate,@function
gk_gkmcoreCreate:                       # @gk_gkmcoreCreate
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	andb	%sil, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then4
	movl	$0, 0
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gk_gkmcoreCreate, .Lfunc_end0-gk_gkmcoreCreate
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
