	.text
	.file	""
	.globl	hypre_AMR_CFCoarsen             # -- Begin function hypre_AMR_CFCoarsen
	.p2align	4, 0x90
	.type	hypre_AMR_CFCoarsen,@function
hypre_AMR_CFCoarsen:                    # @hypre_AMR_CFCoarsen
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %for.end134
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	callq	hypre_MAlloc@PLT
	movl	$0, (%r14)
	movl	$0, (%rbx)
	movl	$0, 4(%r14)
	movl	$0, 4(%rbx)
	movl	$0, 8(%r14)
	movl	$0, 8(%rbx)
	movl	$0, 12(%r14)
	movl	$0, 12(%rbx)
	movl	$0, 16(%r14)
	movl	$0, 16(%rbx)
	movl	$0, 20(%r14)
	movl	$0, 20(%rbx)
	movl	$0, 24(%r14)
	movl	$0, 24(%rbx)
	movl	$0, 28(%r14)
	movl	$0, 28(%rbx)
	movl	$0, 32(%r14)
	movl	$0, 32(%rbx)
	movl	$0, 36(%r14)
	movl	$0, 36(%rbx)
	movl	$0, 40(%r14)
	movl	$0, 40(%rbx)
	movl	$0, 44(%r14)
	movl	$0, 44(%rbx)
	movl	$0, 48(%r14)
	movl	$0, 48(%rbx)
	movl	$0, 52(%r14)
	movl	$0, 52(%rbx)
	movl	$0, 56(%r14)
	movl	$0, 56(%rbx)
	movl	$0, 60(%r14)
	movl	$0, 60(%rbx)
	movl	$0, 64(%r14)
	movl	$0, 64(%rbx)
	movl	$0, 68(%r14)
	movl	$0, 68(%rbx)
	movl	$0, 72(%r14)
	movl	$0, 72(%rbx)
	movl	$0, 76(%r14)
	movl	$0, 76(%rbx)
	movl	$0, 80(%r14)
	movl	$0, 80(%rbx)
	movl	$0, 84(%r14)
	movl	$0, 84(%rbx)
	movl	$0, 88(%r14)
	movl	$0, 88(%rbx)
	movl	$0, 92(%r14)
	movl	$0, 92(%rbx)
	movl	$0, 96(%r14)
	movl	$0, 96(%rbx)
	movl	$0, 100(%r14)
	movl	$0, 100(%rbx)
	movl	$0, 104(%r14)
	movl	$0, 104(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	hypre_AMR_CFCoarsen, .Lfunc_end0-hypre_AMR_CFCoarsen
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
