	.text
	.file	""
	.globl	cheapautom                      # -- Begin function cheapautom
	.p2align	4, 0x90
	.type	cheapautom,@function
cheapautom:                             # @cheapautom
# %bb.0:                                # %entry
	notb	%sil
	testl	%edi, %edi
	setne	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_4
# %bb.1:                                # %for.body.preheader
	testb	$1, %dl
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_4:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cheapautom, .Lfunc_end0-cheapautom
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
