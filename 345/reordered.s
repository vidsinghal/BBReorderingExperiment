	.text
	.file	""
	.globl	hypre_partition1D               # -- Begin function hypre_partition1D
	.p2align	4, 0x90
	.type	hypre_partition1D,@function
hypre_partition1D:                      # @hypre_partition1D
# %bb.0:                                # %entry
	movq	%rdx, %r8
	testb	$1, %cl
	je	.LBB0_3
# %bb.1:
	xorl	%eax, %eax
	movq	%rax, (%r8)
	retq
.LBB0_3:                                # %if.else
	movq	%rdi, %rax
	orq	%rsi, %rax
	shrq	$32, %rax
	je	.LBB0_4
# %bb.5:
	movq	%rdi, %rax
	cqto
	idivq	%rsi
	imulq	%rdi, %rax
	movq	%rax, (%r8)
	retq
.LBB0_4:
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
	imulq	%rdi, %rax
	movq	%rax, (%r8)
	retq
.Lfunc_end0:
	.size	hypre_partition1D, .Lfunc_end0-hypre_partition1D
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
