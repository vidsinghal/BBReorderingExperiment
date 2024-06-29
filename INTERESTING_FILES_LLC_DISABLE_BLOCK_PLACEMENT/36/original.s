	.text
	.file	""
	.globl	ncgparse                        # -- Begin function ncgparse
	.p2align	4, 0x90
	.type	ncgparse,@function
ncgparse:                               # @ncgparse
# %bb.0:                                # %sw.epilog.peel
.LBB0_1:                                # %yysetstate
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$253, %rsi
	je	.LBB0_3
# %bb.2:                                # %yysetstate
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%rdx, %rax
	testq	%rsi, %rsi
	jne	.LBB0_4
.LBB0_3:                                # %sw.bb1033
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%rdi, %rax
.LBB0_4:                                # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	(%rax), %rax
	movq	%rax, (%rdi)
	jmp	.LBB0_1
.Lfunc_end0:
	.size	ncgparse, .Lfunc_end0-ncgparse
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
