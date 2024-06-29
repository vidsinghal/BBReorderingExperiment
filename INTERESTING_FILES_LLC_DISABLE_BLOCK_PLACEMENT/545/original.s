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
	movq	(%rsi), %rdi
	testb	$1, %r8b
	je	.LBB0_2
# %bb.1:                                # %cond.true
	addq	$88, %rdi
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movq	16(%rsp), %rax
	movq	(%rcx), %rcx
	shlq	$4, %rax
	shlq	$4, %rcx
	addq	%rax, %rdi
	addq	%rcx, %rdi
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
