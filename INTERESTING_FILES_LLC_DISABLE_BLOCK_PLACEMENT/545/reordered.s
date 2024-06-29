	.text
	.file	""
	.globl	FLA_LQ_UT_opz_var2              # -- Begin function FLA_LQ_UT_opz_var2
	.p2align	4, 0x90
	.type	FLA_LQ_UT_opz_var2,@function
FLA_LQ_UT_opz_var2:                     # @FLA_LQ_UT_opz_var2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rsi), %rax
	testb	$1, %r8b
	jne	.LBB0_2
# %bb.1:                                # %cond.false
	movq	16(%rsp), %rdx
	movq	(%rcx), %rdi
	shlq	$4, %rdx
	shlq	$4, %rdi
	addq	%rdx, %rax
	addq	%rax, %rdi
	jmp	.LBB0_3
.LBB0_2:                                # %cond.true
	addq	$88, %rax
	movq	%rax, %rdi
.LBB0_3:                                # %cond.end
	callq	bl1_zgemv@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	FLA_LQ_UT_opz_var2, .Lfunc_end0-FLA_LQ_UT_opz_var2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
