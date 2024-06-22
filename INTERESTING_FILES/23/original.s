	.text
	.file	""
	.globl	hypre_dgetri                    # -- Begin function hypre_dgetri
	.p2align	4, 0x90
	.type	hypre_dgetri,@function
hypre_dgetri:                           # @hypre_dgetri
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	hypre_ilaenv@PLT
	movq	$0, (%r14)
	movq	$0, (%rbx)
	testb	$1, %bpl
	je	.LBB0_2
# %bb.1:                                # %if.then
	movl	$0, (%rbx)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	hypre_dgetri, .Lfunc_end0-hypre_dgetri
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
