	.text
	.file	""
	.globl	s2n_server_cookie_recv          # -- Begin function s2n_server_cookie_recv
	.p2align	4, 0x90
	.type	s2n_server_cookie_recv,@function
s2n_server_cookie_recv:                 # @s2n_server_cookie_recv
# %bb.0:                                # %entry
	movzbl	0, %eax
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %do.end18
	movl	0, %eax
.LBB0_2:                                # %common.ret1
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s2n_server_cookie_recv, .Lfunc_end0-s2n_server_cookie_recv
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
