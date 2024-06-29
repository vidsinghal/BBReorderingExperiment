	.text
	.file	""
	.globl	H5Z___set_local_szip            # -- Begin function H5Z___set_local_szip
	.p2align	4, 0x90
	.type	H5Z___set_local_szip,@function
H5Z___set_local_szip:                   # @H5Z___set_local_szip
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %if.end6
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	H5Z___set_local_szip, .Lfunc_end0-H5Z___set_local_szip
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
