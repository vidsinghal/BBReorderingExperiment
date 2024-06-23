	.text
	.file	""
	.globl	writeny                         # -- Begin function writeny
	.p2align	4, 0x90
	.type	writeny,@function
writeny:                                # @writeny
# %bb.0:                                # %entry
	testl	%edi, %edi
	setg	%al
	cmpl	%edi, %esi
	setl	%cl
	testb	%cl, %al
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_1:                                # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	jle	.LBB0_1
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond2
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %for.end22
	retq
.Lfunc_end0:
	.size	writeny, .Lfunc_end0-writeny
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
