	.text
	.file	""
	.globl	SLIP_matrix_nnz                 # -- Begin function SLIP_matrix_nnz
	.p2align	4, 0x90
	.type	SLIP_matrix_nnz,@function
SLIP_matrix_nnz:                        # @SLIP_matrix_nnz
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	je	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %sw.bb7
	movq	(%rdi), %rax
	retq
.Lfunc_end0:
	.size	SLIP_matrix_nnz, .Lfunc_end0-SLIP_matrix_nnz
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
