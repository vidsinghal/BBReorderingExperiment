	.text
	.file	""
	.globl	H5G__ent_to_link                # -- Begin function H5G__ent_to_link
	.p2align	4, 0x90
	.type	H5G__ent_to_link,@function
H5G__ent_to_link:                       # @H5G__ent_to_link
# %bb.0:                                # %entry
	cmpb	$0, (%rdi)
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movb	$0, (%rdi)
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	H5G__ent_to_link, .Lfunc_end0-H5G__ent_to_link
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
