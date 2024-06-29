	.text
	.file	""
	.globl	MD5_compute                     # -- Begin function MD5_compute
	.p2align	4, 0x90
	.type	MD5_compute,@function
MD5_compute:                            # @MD5_compute
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	MD5_compute, .Lfunc_end0-MD5_compute
                                        # -- End function
	.globl	decode                          # -- Begin function decode
	.p2align	4, 0x90
	.type	decode,@function
decode:                                 # @decode
# %bb.0:                                # %entry
	testl	%esi, %esi
	je	.LBB1_3
# %bb.1:                                # %for.body.lr.ph
	movl	$0, (%rdi)
	cmpl	$1, %esi
	je	.LBB1_3
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB1_2
.LBB1_3:                                # %for.end
	retq
.Lfunc_end1:
	.size	decode, .Lfunc_end1-decode
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
