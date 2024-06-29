	.text
	.file	""
	.globl	dump_long                       # -- Begin function dump_long
	.p2align	4, 0x90
	.type	dump_long,@function
dump_long:                              # @dump_long
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	jne	.LBB0_2
# %bb.1:                                # %if.else
	movl	0, %eax
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	dump_long, .Lfunc_end0-dump_long
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
