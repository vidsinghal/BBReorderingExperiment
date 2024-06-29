	.text
	.file	""
	.globl	FLA_LU_nopiv_blk_var2           # -- Begin function FLA_LU_nopiv_blk_var2
	.p2align	4, 0x90
	.type	FLA_LU_nopiv_blk_var2,@function
FLA_LU_nopiv_blk_var2:                  # @FLA_LU_nopiv_blk_var2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	FLA_Part_2x2@PLT
	movq	0, %rax
	testq	%r14, %r14
	je	.LBB0_2
# %bb.1:                                # %while.end
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:                                # %land.rhs
	.cfi_def_cfa_offset 32
	callq	FLA_Repart_2x2_to_3x3@PLT
	movq	(%rbx), %rdi
	movq	48, %r10
	movq	40, %r9
	movq	32, %r8
	movq	24, %rsi
	movq	16, %rcx
	movq	0, %rax
	movq	8, %rdx
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	FLA_Gemm_internal@PLT
	addq	$224, %rsp
	.cfi_adjust_cfa_offset -224
	movq	(%rbx), %rdi
	movq	48, %r10
	movq	40, %r9
	movq	32, %r8
	movq	24, %rsi
	movq	16, %rcx
	movq	0, %rax
	movq	8, %rdx
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	FLA_Gemm_internal@PLT
.Lfunc_end0:
	.size	FLA_LU_nopiv_blk_var2, .Lfunc_end0-FLA_LU_nopiv_blk_var2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
