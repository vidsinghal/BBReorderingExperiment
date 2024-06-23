	.text
	.file	""
	.globl	stfsm_                          # -- Begin function stfsm_
	.p2align	4, 0x90
	.type	stfsm_,@function
stfsm_:                                 # @stfsm_
# %bb.0:                                # %entry
	testl	%edi, %edi
	setne	%al
	testl	%esi, %esi
	sete	%cl
	testb	%cl, %al
	jne	.LBB0_2
# %bb.1:                                # %if.else13
	movl	0, %eax
.LBB0_2:                                # %if.end47
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	stfsm_, .Lfunc_end0-stfsm_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
