	.text
	.file	""
	.globl	semaphore_init                  # -- Begin function semaphore_init
	.p2align	4, 0x90
	.type	semaphore_init,@function
semaphore_init:                         # @semaphore_init
# %bb.0:                                # %entry
	movl	0, %ecx
	testb	$1, %dl
	jne	.LBB0_3
# %bb.1:                                # %if.end
	movl	%edi, %eax
	movl	0, %ecx
	testb	$1, %sil
	jne	.LBB0_4
# %bb.2:                                # %if.then8
	movq	0, %rax
.LBB0_3:                                # %cleanup
	xorl	%eax, %eax
.LBB0_4:                                # %cleanup
	retq
.Lfunc_end0:
	.size	semaphore_init, .Lfunc_end0-semaphore_init
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
