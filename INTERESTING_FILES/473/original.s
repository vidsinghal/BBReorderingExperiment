	.text
	.file	""
	.globl	umfpack_zl_get_lunz             # -- Begin function umfpack_zl_get_lunz
	.p2align	4, 0x90
	.type	umfpack_zl_get_lunz,@function
umfpack_zl_get_lunz:                    # @umfpack_zl_get_lunz
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	testq	%rsi, %rsi
	setne	%cl
	testb	%cl, %al
	je	.LBB0_2
# %bb.1:                                # %lor.lhs.false5
	movq	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	umfpack_zl_get_lunz, .Lfunc_end0-umfpack_zl_get_lunz
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
