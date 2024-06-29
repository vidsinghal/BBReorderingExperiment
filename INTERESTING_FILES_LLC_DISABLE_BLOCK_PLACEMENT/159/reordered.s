	.text
	.file	""
	.globl	nn_err_strerror                 # -- Begin function nn_err_strerror
	.p2align	4, 0x90
	.type	nn_err_strerror,@function
nn_err_strerror:                        # @nn_err_strerror
# %bb.0:                                # %entry
	testl	%edi, %edi
	je	.LBB0_4
# %bb.1:                                # %entry
	cmpl	$1, %edi
	jne	.LBB0_3
# %bb.2:
	movq	.str@GOTPCREL(%rip), %rax
	retq
.LBB0_3:                                # %sw.default
	movq	0, %rax
.LBB0_4:                                # %sw.bb1
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	nn_err_strerror, .Lfunc_end0-nn_err_strerror
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
