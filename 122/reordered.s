	.text
	.file	""
	.globl	WebPMultARGBRow_C               # -- Begin function WebPMultARGBRow_C
	.p2align	4, 0x90
	.type	WebPMultARGBRow_C,@function
WebPMultARGBRow_C:                      # @WebPMultARGBRow_C
# %bb.0:                                # %entry
	cmpl	$0, (%rsi)
	je	.LBB0_1
	.p2align	4, 0x90
.LBB0_4:                                # %for.cond.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_4
.LBB0_1:                                # %for.cond.outer.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jne	.LBB0_2
# %bb.3:                                # %if.then3
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%rdi)
	movl	(%rsi), %eax
	jmp	.LBB0_2
.Lfunc_end0:
	.size	WebPMultARGBRow_C, .Lfunc_end0-WebPMultARGBRow_C
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
