	.text
	.file	""
	.globl	WebPMultARGBRow_C               # -- Begin function WebPMultARGBRow_C
	.p2align	4, 0x90
	.type	WebPMultARGBRow_C,@function
WebPMultARGBRow_C:                      # @WebPMultARGBRow_C
# %bb.0:                                # %entry
	testl	%esi, %esi
	setg	%al
	andb	8(%rsp), %al
	cmpb	$1, %al
	jne	.LBB0_3
# %bb.1:                                # %for.body.lr.ph.split.us
	movl	$0, (%rdi)
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %for.end
	retq
.Lfunc_end0:
	.size	WebPMultARGBRow_C, .Lfunc_end0-WebPMultARGBRow_C
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
