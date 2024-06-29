	.text
	.file	""
	.globl	hypre_sstructpcgsetprecond_     # -- Begin function hypre_sstructpcgsetprecond_
	.p2align	4, 0x90
	.type	hypre_sstructpcgsetprecond_,@function
hypre_sstructpcgsetprecond_:            # @hypre_sstructpcgsetprecond_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testq	%rdx, %rdx
	je	.LBB0_5
# %bb.1:                                # %entry
	cmpq	$1, %rdx
	je	.LBB0_4
# %bb.2:
	xorl	%eax, %eax
.LBB0_3:                                # %common.ret
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.then
	.cfi_def_cfa_offset 16
	callq	HYPRE_SStructPCGSetPrecond@PLT
	jmp	.LBB0_3
.LBB0_5:                                # %if.then6
	xorl	%edi, %edi
	callq	HYPRE_SStructPCGSetPrecond@PLT
	jmp	.LBB0_3
.Lfunc_end0:
	.size	hypre_sstructpcgsetprecond_, .Lfunc_end0-hypre_sstructpcgsetprecond_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
