	.text
	.file	""
	.globl	lookup_translation              # -- Begin function lookup_translation
	.p2align	4, 0x90
	.type	lookup_translation,@function
lookup_translation:                     # @lookup_translation
# %bb.0:                                # %entry
	testb	$1, %sil
	jne	.LBB0_7
# %bb.1:                                # %for.body.preheader
	testb	$1, %cl
	je	.LBB0_4
# %bb.2:                                # %for.body.preheader.split.us
	testb	$1, %dl
	jne	.LBB0_7
.LBB0_3:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.LBB0_4:                                # %for.body.preheader.split
	testb	$1, %dl
	jne	.LBB0_6
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_5
.LBB0_6:                                # %cleanup107.thread
	movl	$0, (%rdi)
.LBB0_7:                                # %cleanup109
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	lookup_translation, .Lfunc_end0-lookup_translation
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
