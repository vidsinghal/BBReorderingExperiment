	.text
	.file	""
	.globl	ap_set_keepalive                # -- Begin function ap_set_keepalive
	.p2align	4, 0x90
	.type	ap_set_keepalive,@function
ap_set_keepalive:                       # @ap_set_keepalive
# %bb.0:                                # %entry
	cmpl	$2, %esi
	setae	%al
	andb	%dl, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %lor.lhs.false10
	movq	0, %rax
.LBB0_2:                                # %if.end125
	movl	$0, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ap_set_keepalive, .Lfunc_end0-ap_set_keepalive
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
