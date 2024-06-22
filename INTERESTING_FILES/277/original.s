	.text
	.file	""
	.globl	H5Z___can_apply_szip            # -- Begin function H5Z___can_apply_szip
	.p2align	4, 0x90
	.type	H5Z___can_apply_szip,@function
H5Z___can_apply_szip:                   # @H5Z___can_apply_szip
# %bb.0:                                # %entry
	testl	%edi, %edi
	setne	%al
	testb	%sil, %al
	je	.LBB0_2
# %bb.1:                                # %if.then7
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	H5Z___can_apply_szip, .Lfunc_end0-H5Z___can_apply_szip
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
