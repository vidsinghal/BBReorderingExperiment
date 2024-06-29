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
	je	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.end
	movq	(%rdi), %rax
	retq
.Lfunc_end0:
	.size	cs_cl_reach, .Lfunc_end0-cs_cl_reach
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
