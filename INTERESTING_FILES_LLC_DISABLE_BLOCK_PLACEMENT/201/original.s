	.text
	.file	""
	.globl	FLA_Copyt_internal              # -- Begin function FLA_Copyt_internal
	.p2align	4, 0x90
	.type	FLA_Copyt_internal,@function
FLA_Copyt_internal:                     # @FLA_Copyt_internal
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.LBB0_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	callq	FLA_Check_error_level@PLT
	cmpl	$0, (%rbx)
	jne	.LBB0_3
# %bb.2:                                # %land.lhs.true.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, 0
	je	.LBB0_1
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	FLA_Copyt_internal, .Lfunc_end0-FLA_Copyt_internal
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
