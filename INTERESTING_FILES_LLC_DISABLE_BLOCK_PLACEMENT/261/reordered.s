	.text
	.file	""
	.globl	cs_di_cumsum                    # -- Begin function cs_di_cumsum
	.p2align	4, 0x90
	.type	cs_di_cumsum,@function
cs_di_cumsum:                           # @cs_di_cumsum
# %bb.0:                                # %entry
	notb	%sil
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movl	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorps	%xmm0, %xmm0
	retq
.Lfunc_end0:
	.size	cs_di_cumsum, .Lfunc_end0-cs_di_cumsum
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
