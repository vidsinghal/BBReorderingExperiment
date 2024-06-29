	.text
	.file	""
	.globl	FLA_Tridiag_UT_l_step_ops_var2  # -- Begin function FLA_Tridiag_UT_l_step_ops_var2
	.p2align	4, 0x90
	.type	FLA_Tridiag_UT_l_step_ops_var2,@function
FLA_Tridiag_UT_l_step_ops_var2:         # @FLA_Tridiag_UT_l_step_ops_var2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	testb	$1, %sil
	jne	.LBB0_2
# %bb.1:
	xorl	%ebx, %ebx
	jmp	.LBB0_3
.LBB0_2:                                # %cond.true37
	movq	(%rdi), %rbx
.LBB0_3:                                # %cond.end48
	callq	FLA_malloc@PLT
	movss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)
	movl	$0, 8(%rsp)
	leaq	12(%rsp), %rdi
	callq	bl1_saxpyv@PLT
	leaq	8(%rsp), %rdi
	callq	bl1_saxpyv@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	FLA_Tridiag_UT_l_step_ops_var2, .Lfunc_end0-FLA_Tridiag_UT_l_step_ops_var2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
