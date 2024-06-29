	.text
	.file	""
	.globl	FLA_Axpy_internal               # -- Begin function FLA_Axpy_internal
	.p2align	4, 0x90
	.type	FLA_Axpy_internal,@function
FLA_Axpy_internal:                      # @FLA_Axpy_internal
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	%edi, %ebx
	leaq	32(%rsp), %r14
	callq	FLA_Check_error_level@PLT
	testb	$1, %bl
	je	.LBB0_2
# %bb.1:                                # %if.then.peel
	movl	(%r14), %eax
.LBB0_2:                                # %if.end.peel
	movq	0, %rax
	movq	48, %rax
	movq	%rax, 48(%r14)
	movq	40, %rax
	movq	%rax, 40(%r14)
	movq	32, %rax
	movq	%rax, 32(%r14)
	movq	24, %rax
	movq	%rax, 24(%r14)
	movq	16, %rax
	movq	%rax, 16(%r14)
	movq	0, %rax
	movq	8, %rcx
	movq	%rcx, 8(%r14)
	movq	%rax, (%r14)
.LBB0_3:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	callq	FLA_Check_error_level@PLT
	movq	0, %rax
	movq	0, %rax
	movq	8, %rcx
	movq	%rax, (%r14)
	movq	%rcx, 8(%r14)
	movq	16, %rax
	movq	%rax, 16(%r14)
	movq	24, %rax
	movq	%rax, 24(%r14)
	movq	32, %rax
	movq	%rax, 32(%r14)
	movq	40, %rax
	movq	%rax, 40(%r14)
	movq	48, %rax
	movq	%rax, 48(%r14)
	jmp	.LBB0_3
.Lfunc_end0:
	.size	FLA_Axpy_internal, .Lfunc_end0-FLA_Axpy_internal
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
