	.text
	.file	""
	.globl	FLA_Sylv_nh_blk_var1            # -- Begin function FLA_Sylv_nh_blk_var1
	.p2align	4, 0x90
	.type	FLA_Sylv_nh_blk_var1,@function
FLA_Sylv_nh_blk_var1:                   # @FLA_Sylv_nh_blk_var1
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %while.end
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %while.body
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	FLA_Repart_2x2_to_3x3@PLT
	movl	0, %eax
	movq	0, %rdi
	movq	8, %rax
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	movq	16, %rax
	movq	%rax, 16(%rbx)
	movq	24, %rax
	movq	%rax, 24(%rbx)
	movq	32, %rax
	movq	%rax, 32(%rbx)
	movq	40, %rax
	movq	%rax, 40(%rbx)
	movq	48, %rax
	movq	%rax, 48(%rbx)
	callq	FLA_Sylv_internal@PLT
.Lfunc_end0:
	.size	FLA_Sylv_nh_blk_var1, .Lfunc_end0-FLA_Sylv_nh_blk_var1
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
