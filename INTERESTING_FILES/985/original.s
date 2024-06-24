	.text
	.file	""
	.globl	scamac_matrix_Anderson_check    # -- Begin function scamac_matrix_Anderson_check
	.p2align	4, 0x90
	.type	scamac_matrix_Anderson_check,@function
scamac_matrix_Anderson_check:           # @scamac_matrix_Anderson_check
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	testq	%rsi, %rsi
	setne	%cl
	testb	%cl, %al
	je	.LBB0_2
# %bb.1:                                # %if.then2
	movl	$0, 0
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	scamac_matrix_Anderson_check, .Lfunc_end0-scamac_matrix_Anderson_check
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
