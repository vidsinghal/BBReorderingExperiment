	.text
	.file	""
	.globl	pcfWriteFont                    # -- Begin function pcfWriteFont
	.p2align	4, 0x90
	.type	pcfWriteFont,@function
pcfWriteFont:                           # @pcfWriteFont
# %bb.0:                                # %entry
	movl	%esi, (%rdi)
	testb	$1, %dl
	jne	.LBB0_2
.LBB0_1:                                # %infloop
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.LBB0_2:                                # %sw.bb.preheader.peel.newph
	movl	$0, 4
	testb	$1, %sil
	sete	%al
	orb	%dl, %al
.LBB0_3:                                # %sw.bb
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	jne	.LBB0_3
	jmp	.LBB0_1
.Lfunc_end0:
	.size	pcfWriteFont, .Lfunc_end0-pcfWriteFont
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
