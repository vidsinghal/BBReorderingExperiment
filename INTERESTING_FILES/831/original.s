	.text
	.file	""
	.globl	ucp_put_nbx                     # -- Begin function ucp_put_nbx
	.p2align	4, 0x90
	.type	ucp_put_nbx,@function
ucp_put_nbx:                            # @ucp_put_nbx
# %bb.0:                                # %entry
	andl	%edx, %esi
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then97
	movl	$0, 0
.LBB0_2:                                # %cleanup148
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ucp_put_nbx, .Lfunc_end0-ucp_put_nbx
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
