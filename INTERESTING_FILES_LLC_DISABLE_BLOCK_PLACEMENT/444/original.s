	.text
	.file	""
	.globl	cunmqr_check                    # -- Begin function cunmqr_check
	.p2align	4, 0x90
	.type	cunmqr_check,@function
cunmqr_check:                           # @cunmqr_check
# %bb.0:                                # %entry
	testb	$1, %dl
	je	.LBB0_2
# %bb.1:                                # %if.else17
	movl	0, %eax
	testb	$1, %cl
	jne	.LBB0_3
	jmp	.LBB0_4
.LBB0_2:                                # %if.else17.thread
	testb	$1, %cl
	je	.LBB0_5
.LBB0_3:                                # %if.then20
	movq	%rsi, %rdi
.LBB0_4:                                # %common.ret.sink.split
	movl	$0, (%rdi)
.LBB0_5:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cunmqr_check, .Lfunc_end0-cunmqr_check
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
