	.text
	.file	""
	.globl	SLIP_matrix_nnz                 # -- Begin function SLIP_matrix_nnz
	.p2align	4, 0x90
	.type	SLIP_matrix_nnz,@function
SLIP_matrix_nnz:                        # @SLIP_matrix_nnz
# %bb.0:                                # %entry
	xorb	$1, %sil
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	jne	.LBB0_3
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %sw.bb7
	movq	(%rdi), %rax
	retq
.Lfunc_end0:
	.size	SLIP_matrix_nnz, .Lfunc_end0-SLIP_matrix_nnz
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
