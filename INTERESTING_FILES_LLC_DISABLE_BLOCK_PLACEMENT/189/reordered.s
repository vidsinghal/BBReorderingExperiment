	.text
	.file	""
	.globl	progress_meter                  # -- Begin function progress_meter
	.p2align	4, 0x90
	.type	progress_meter,@function
progress_meter:                         # @progress_meter
# %bb.0:                                # %entry
	cmpb	$0, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	progress_meter, .Lfunc_end0-progress_meter
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
