	.text
	.file	""
	.globl	FLA_Sylv_nn_blk_var6            # -- Begin function FLA_Sylv_nn_blk_var6
	.p2align	4, 0x90
	.type	FLA_Sylv_nn_blk_var6,@function
FLA_Sylv_nn_blk_var6:                   # @FLA_Sylv_nn_blk_var6
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %while.body
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	48, %rax
	movq	40, %rcx
	movq	32, %rdx
	movq	24, %rsi
	movq	16, %rdi
	movq	0, %r8
	movq	8, %r9
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	callq	FLA_Repart_2x2_to_3x3@PLT
	addq	$112, %rsp
	.cfi_adjust_cfa_offset -112
	movq	48, %rax
	movq	40, %rcx
	movq	32, %rdx
	movq	24, %rsi
	movq	16, %rdi
	movq	0, %r8
	movq	8, %r9
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rcx
	.cfi_adjust_cfa_offset 8
	pushq	%rdx
	.cfi_adjust_cfa_offset 8
	pushq	%rsi
	.cfi_adjust_cfa_offset 8
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	%r9
	.cfi_adjust_cfa_offset 8
	pushq	%r8
	.cfi_adjust_cfa_offset 8
	callq	FLA_Repart_2x2_to_3x3@PLT
	addq	$120, %rsp
	.cfi_adjust_cfa_offset -120
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	FLA_Sylv_nn_blk_var6, .Lfunc_end0-FLA_Sylv_nn_blk_var6
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
