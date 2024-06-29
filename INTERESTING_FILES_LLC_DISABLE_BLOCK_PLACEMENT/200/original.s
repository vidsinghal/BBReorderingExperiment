	.text
	.file	""
	.globl	umfzl_assemble_fixq             # -- Begin function umfzl_assemble_fixq
	.p2align	4, 0x90
	.type	umfzl_assemble_fixq,@function
umfzl_assemble_fixq:                    # @umfzl_assemble_fixq
# %bb.0:                                # %entry
	xorl	%eax, %eax
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rax
	jae	.LBB0_1
# %bb.2:                                # %for.body67.lr.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	leaq	16(%rax), %rcx
	cmpq	%rcx, %rdi
	cmovaq	%rdi, %rcx
	movq	%rax, %rdx
	notq	%rdx
	addq	%rcx, %rdx
	andq	$-16, %rdx
	leaq	16(%rax,%rdx), %rax
	jmp	.LBB0_1
.Lfunc_end0:
	.size	umfzl_assemble_fixq, .Lfunc_end0-umfzl_assemble_fixq
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
