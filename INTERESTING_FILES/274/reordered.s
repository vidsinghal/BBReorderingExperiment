	.text
	.file	""
	.globl	cs_cl_reach                     # -- Begin function cs_cl_reach
	.p2align	4, 0x90
	.type	cs_cl_reach,@function
cs_cl_reach:                            # @cs_cl_reach
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movq	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cs_cl_reach, .Lfunc_end0-cs_cl_reach
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
