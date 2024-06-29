	.text
	.file	""
	.globl	H5F__efc_create                 # -- Begin function H5F__efc_create
	.p2align	4, 0x90
	.type	H5F__efc_create,@function
H5F__efc_create:                        # @H5F__efc_create
# %bb.0:                                # %entry
	cmpb	$0, (%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then77
	movq	0, %rax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	H5F__efc_create, .Lfunc_end0-H5F__efc_create
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
