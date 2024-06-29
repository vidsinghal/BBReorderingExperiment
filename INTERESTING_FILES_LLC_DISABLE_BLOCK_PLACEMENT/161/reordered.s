	.text
	.file	""
	.globl	start_pass_dpost                # -- Begin function start_pass_dpost
	.p2align	4, 0x90
	.type	start_pass_dpost,@function
start_pass_dpost:                       # @start_pass_dpost
# %bb.0:                                # %entry
	testl	%edi, %edi
	jne	.LBB0_2
# %bb.1:
	movl	$8, %esi
	jmp	.LBB0_4
.LBB0_2:                                # %entry
	cmpl	$1, %edi
	je	.LBB0_5
# %bb.3:                                # %sw.bb
	addq	$8, %rsi
.LBB0_4:                                # %common.ret.sink.split
	movq	$0, (%rsi)
.LBB0_5:                                # %common.ret
	retq
.Lfunc_end0:
	.size	start_pass_dpost, .Lfunc_end0-start_pass_dpost
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
