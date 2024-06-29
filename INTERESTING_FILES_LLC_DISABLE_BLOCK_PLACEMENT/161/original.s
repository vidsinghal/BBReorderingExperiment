	.text
	.file	""
	.globl	start_pass_dpost                # -- Begin function start_pass_dpost
	.p2align	4, 0x90
	.type	start_pass_dpost,@function
start_pass_dpost:                       # @start_pass_dpost
# %bb.0:                                # %entry
	cmpl	$1, %edi
	je	.LBB0_3
# %bb.1:                                # %entry
	movl	$8, %eax
	testl	%edi, %edi
	jne	.LBB0_4
.LBB0_2:                                # %common.ret.sink.split
	movq	$0, (%rax)
.LBB0_3:                                # %common.ret
	retq
.LBB0_4:                                # %sw.bb
	addq	$8, %rsi
	movq	%rsi, %rax
	jmp	.LBB0_2
.Lfunc_end0:
	.size	start_pass_dpost, .Lfunc_end0-start_pass_dpost
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
