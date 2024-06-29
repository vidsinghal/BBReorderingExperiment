	.text
	.file	""
	.globl	isautom                         # -- Begin function isautom
	.p2align	4, 0x90
	.type	isautom,@function
isautom:                                # @isautom
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
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
.LBB0_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	xorl	%eax, %eax
.LBB0_2:                                # %while.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	nextelement@PLT
	testl	%eax, %eax
	jg	.LBB0_2
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	leaq	(%r14,%rbx,2), %r14
	jmp	.LBB0_1
.Lfunc_end0:
	.size	isautom, .Lfunc_end0-isautom
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
