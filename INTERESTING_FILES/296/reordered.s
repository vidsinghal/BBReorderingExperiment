	.text
	.file	""
	.globl	qh_fprintf                      # -- Begin function qh_fprintf
	.p2align	4, 0x90
	.type	qh_fprintf,@function
qh_fprintf:                             # @qh_fprintf
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	orb	%sil, %al
	testb	$1, %al
	je	.LBB0_2
# %bb.1:                                # %if.then7
	movl	0, %eax
.LBB0_2:                                # %if.end14
	retq
.Lfunc_end0:
	.size	qh_fprintf, .Lfunc_end0-qh_fprintf
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
