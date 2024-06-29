	.text
	.file	""
	.globl	nn_dns_check_hostname           # -- Begin function nn_dns_check_hostname
	.p2align	4, 0x90
	.type	nn_dns_check_hostname,@function
nn_dns_check_hostname:                  # @nn_dns_check_hostname
# %bb.0:                                # %entry
	movzbl	(%rdi), %eax
	cmpb	$1, %al
	setne	%al
	setge	%cl
	orb	%dl, %cl
	testb	%cl, %al
	je	.LBB0_3
# %bb.1:                                # %while.body.peel.next
	movzbl	(%rsi), %eax
	cmpb	$1, %al
	setne	%cl
	setge	%al
	orb	%dl, %al
	andb	%cl, %al
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB0_2
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	nn_dns_check_hostname, .Lfunc_end0-nn_dns_check_hostname
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
