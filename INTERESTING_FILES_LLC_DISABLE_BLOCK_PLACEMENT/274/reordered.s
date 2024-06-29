	.text
	.file	""
	.globl	cs_cl_reach                     # -- Begin function cs_cl_reach
	.p2align	4, 0x90
	.type	cs_cl_reach,@function
cs_cl_reach:                            # @cs_cl_reach
# %bb.0:                                # %entry
	xorb	$1, %sil
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	jne	.LBB0_3
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %if.end
	movq	(%rdi), %rax
	retq
.Lfunc_end0:
	.size	cs_cl_reach, .Lfunc_end0-cs_cl_reach
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
