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
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	xorl	%edi, %edi
	callq	bl1_saxpyv@PLT
	testl	%ebx, %ebx
	jne	.LBB0_2
.LBB0_1:                                # %land.lhs.true.peel
	movl	$0, 0
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	bl1_saxpyv@PLT
	cmpl	$1, %ebx
	jne	.LBB0_2
	jmp	.LBB0_1
.Lfunc_end0:
	.size	FLA_Tridiag_UT_l_step_ops_var2, .Lfunc_end0-FLA_Tridiag_UT_l_step_ops_var2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
