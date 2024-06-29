	.text
	.file	""
	.globl	cunmqr_check                    # -- Begin function cunmqr_check
	.p2align	4, 0x90
	.type	cunmqr_check,@function
cunmqr_check:                           # @cunmqr_check
# %bb.0:                                # %entry
	testb	$1, %dl
	je	.LBB0_3
# %bb.1:                                # %if.else17
	movl	0, %eax
	testb	$1, %cl
	jne	.LBB0_5
.LBB0_2:                                # %common.ret.sink.split
	movl	$0, (%rdi)
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %if.else17.thread
	testb	$1, %cl
	movq	%rsi, %rdi
	jne	.LBB0_2
# %bb.4:                                # %common.ret
	xorl	%eax, %eax
	retq
.LBB0_5:                                # %if.then20
	movl	$0, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cunmqr_check, .Lfunc_end0-cunmqr_check
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
