	.text
	.file	""
	.globl	hypre_ParVectorCreate           # -- Begin function hypre_ParVectorCreate
	.p2align	4, 0x90
	.type	hypre_ParVectorCreate,@function
hypre_ParVectorCreate:                  # @hypre_ParVectorCreate
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %sil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, %r15
	callq	hypre_CAlloc@PLT
	movq	$0, (%r15)
	movl	$0, (%rbx)
	movl	(%r15), %ecx
	movl	%ecx, (%r14)
	movl	(%rbx), %ecx
	orl	$1, %ecx
	movl	%ecx, 16(%rax)
	movq	$0, (%rax)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	hypre_ParVectorCreate, .Lfunc_end0-hypre_ParVectorCreate
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
