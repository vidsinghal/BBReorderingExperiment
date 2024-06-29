	.text
	.file	""
	.globl	hypre_multmod                   # -- Begin function hypre_multmod
	.p2align	4, 0x90
	.type	hypre_multmod,@function
hypre_multmod:                          # @hypre_multmod
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jne	.LBB0_3
# %bb.1:
	xorl	%eax, %eax
.LBB0_2:                                # %while.end
	retq
.LBB0_3:
	movq	%rdi, %rcx
.LBB0_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	sarq	%rcx
	cmpq	$2, %rdi
	movq	%rdi, %rax
	movq	%rcx, %rdi
	jae	.LBB0_4
	jmp	.LBB0_2
.Lfunc_end0:
	.size	hypre_multmod, .Lfunc_end0-hypre_multmod
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
