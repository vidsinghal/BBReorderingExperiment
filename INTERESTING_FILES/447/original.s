	.text
	.file	""
	.globl	FLA_Sylv_nh_blk_var1            # -- Begin function FLA_Sylv_nh_blk_var1
	.p2align	4, 0x90
	.type	FLA_Sylv_nh_blk_var1,@function
FLA_Sylv_nh_blk_var1:                   # @FLA_Sylv_nh_blk_var1
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %while.body
	pushq	%rax
	.cfi_def_cfa_offset 16
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
	callq	FLA_Gemm_internal@PLT
	addq	$232, %rsp
	.cfi_adjust_cfa_offset -232
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	FLA_Sylv_nh_blk_var1, .Lfunc_end0-FLA_Sylv_nh_blk_var1
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
