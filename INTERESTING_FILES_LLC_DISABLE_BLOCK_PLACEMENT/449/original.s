	.text
	.file	""
	.globl	SLIP_matrix_nnz                 # -- Begin function SLIP_matrix_nnz
	.p2align	4, 0x90
	.type	SLIP_matrix_nnz,@function
SLIP_matrix_nnz:                        # @SLIP_matrix_nnz
# %bb.0:                                # %entry
	movq	%rdx, %rax
	testq	%rdi, %rdi
	setne	%cl
	cmoveq	%rdi, %rax
	andb	%sil, %cl
	cmpb	$1, %cl
	jne	.LBB0_2
# %bb.1:                                # %sw.bb7
	movq	(%rdi), %rax
.LBB0_2:                                # %return
	retq
.Lfunc_end0:
	.size	SLIP_matrix_nnz, .Lfunc_end0-SLIP_matrix_nnz
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
