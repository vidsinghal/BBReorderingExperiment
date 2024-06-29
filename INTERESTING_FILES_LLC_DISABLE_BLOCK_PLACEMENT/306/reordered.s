	.text
	.file	""
	.globl	umfdi_garbage_collection        # -- Begin function umfdi_garbage_collection
	.p2align	4, 0x90
	.type	umfdi_garbage_collection,@function
umfdi_garbage_collection:               # @umfdi_garbage_collection
# %bb.0:                                # %entry
	testl	%esi, %esi
	sets	%al
	testb	%dl, %al
	je	.LBB0_3
# %bb.1:                                # %for.body17.preheader
	movl	%esi, (%rdi)
.LBB0_2:                                # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %common.ret
	retq
.Lfunc_end0:
	.size	umfdi_garbage_collection, .Lfunc_end0-umfdi_garbage_collection
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
