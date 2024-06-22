	.text
	.file	""
	.globl	nvme_wait_for_completion_robust_lock_timeout_poll # -- Begin function nvme_wait_for_completion_robust_lock_timeout_poll
	.p2align	4, 0x90
	.type	nvme_wait_for_completion_robust_lock_timeout_poll,@function
nvme_wait_for_completion_robust_lock_timeout_poll: # @nvme_wait_for_completion_robust_lock_timeout_poll
# %bb.0:                                # %entry
	cmpb	$1, (%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then66
	movb	$1, (%rdi)
.LBB0_2:                                # %if.end67
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	nvme_wait_for_completion_robust_lock_timeout_poll, .Lfunc_end0-nvme_wait_for_completion_robust_lock_timeout_poll
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
