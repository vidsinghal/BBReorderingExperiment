	.text
	.file	""
	.globl	semaphore_init                  # -- Begin function semaphore_init
	.p2align	4, 0x90
	.type	semaphore_init,@function
semaphore_init:                         # @semaphore_init
# %bb.0:                                # %entry
	movl	0, %ecx
	testb	$1, %dl
	je	.LBB0_3
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.then8
	movq	0, %rax
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %if.end
	movl	%edi, %eax
	movl	0, %ecx
	testb	$1, %sil
	je	.LBB0_2
# %bb.4:                                # %cleanup
	retq
.Lfunc_end0:
	.size	semaphore_init, .Lfunc_end0-semaphore_init
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
