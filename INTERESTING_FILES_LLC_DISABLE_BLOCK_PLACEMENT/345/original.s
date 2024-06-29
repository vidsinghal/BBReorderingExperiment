	.text
	.file	""
	.globl	hypre_multmod                   # -- Begin function hypre_multmod
	.p2align	4, 0x90
	.type	hypre_multmod,@function
hypre_multmod:                          # @hypre_multmod
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jne	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	sarq	%rdi
	cmpq	$1, %rax
	ja	.LBB0_2
# %bb.3:                                # %while.end
	retq
.Lfunc_end0:
	.size	hypre_multmod, .Lfunc_end0-hypre_multmod
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
