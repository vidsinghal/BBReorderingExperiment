	.text
	.file	""
	.globl	WebPMultARGBRow_C               # -- Begin function WebPMultARGBRow_C
	.p2align	4, 0x90
	.type	WebPMultARGBRow_C,@function
WebPMultARGBRow_C:                      # @WebPMultARGBRow_C
# %bb.0:                                # %entry
	cmpl	$0, (%rsi)
	jne	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                # %if.then
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	cmpl	$0, (%rsi)
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.Lfunc_end0:
	.size	WebPMultARGBRow_C, .Lfunc_end0-WebPMultARGBRow_C
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
