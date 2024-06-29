	.text
	.file	""
	.globl	rd_hdr_histogram_mean           # -- Begin function rd_hdr_histogram_mean
	.p2align	4, 0x90
	.type	rd_hdr_histogram_mean,@function
rd_hdr_histogram_mean:                  # @rd_hdr_histogram_mean
# %bb.0:                                # %entry
	xorps	%xmm0, %xmm0
	retq
.Lfunc_end0:
	.size	rd_hdr_histogram_mean, .Lfunc_end0-rd_hdr_histogram_mean
                                        # -- End function
	.globl	rd_hdr_iter_next                # -- Begin function rd_hdr_iter_next
	.p2align	4, 0x90
	.type	rd_hdr_iter_next,@function
rd_hdr_iter_next:                       # @rd_hdr_iter_next
# %bb.0:                                # %entry
	cmpq	$0, 64
	jns	.LBB1_3
# %bb.1:                                # %if.end
	cmpl	$0, 48
	je	.LBB1_3
# %bb.2:                                # %if.then9
	movl	$0, (%rdi)
.LBB1_3:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	rd_hdr_iter_next, .Lfunc_end1-rd_hdr_iter_next
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
