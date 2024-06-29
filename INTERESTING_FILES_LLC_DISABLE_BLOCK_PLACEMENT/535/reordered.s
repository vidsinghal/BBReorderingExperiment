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
	je	.LBB0_3
# %bb.1:                                # %entry
	cmpq	$1, %rdx
	je	.LBB0_4
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_3:                                # %if.then6
	xorl	%edi, %edi
.LBB0_4:                                # %if.then
	callq	HYPRE_SStructPCGSetPrecond@PLT
.LBB0_5:                                # %common.ret
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	hypre_sstructpcgsetprecond_, .Lfunc_end0-hypre_sstructpcgsetprecond_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
