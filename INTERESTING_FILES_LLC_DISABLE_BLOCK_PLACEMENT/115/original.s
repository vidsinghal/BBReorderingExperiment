	.text
	.file	""
	.globl	FLA_Trmm_lut_unb_var2           # -- Begin function FLA_Trmm_lut_unb_var2
	.p2align	4, 0x90
	.type	FLA_Trmm_lut_unb_var2,@function
FLA_Trmm_lut_unb_var2:                  # @FLA_Trmm_lut_unb_var2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	movq	0, %rax
	jne	.LBB0_4
# %bb.1:                                # %while.body.lr.ph
	testb	$1, %sil
	je	.LBB0_3
.LBB0_2:                                # %while.body.us.us
                                        # =>This Inner Loop Header: Depth=1
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	48, %r9
	movq	40, %r8
	movq	32, %rdi
	movq	24, %rsi
	movq	16, %rcx
	movq	0, %rax
	movq	8, %rdx
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	FLA_Repart_2x2_to_3x3@PLT
	addq	$176, %rsp
	.cfi_adjust_cfa_offset -176
	movq	0, %rax
	jmp	.LBB0_2
.LBB0_3:                                # %while.body.us2
                                        # =>This Inner Loop Header: Depth=1
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	48, %r9
	movq	40, %r8
	movq	32, %rdi
	movq	24, %rsi
	movq	16, %rcx
	movq	0, %rax
	movq	8, %rdx
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	FLA_Repart_2x2_to_3x3@PLT
	addq	$176, %rsp
	.cfi_adjust_cfa_offset -176
	movl	0, %eax
	movq	0, %rax
	jmp	.LBB0_3
.LBB0_4:                                # %while.end
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	FLA_Trmm_lut_unb_var2, .Lfunc_end0-FLA_Trmm_lut_unb_var2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
