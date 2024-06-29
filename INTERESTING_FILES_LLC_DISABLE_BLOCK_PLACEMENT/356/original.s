	.text
	.file	""
	.globl	aws_http_proxy_strategy_new_tunneling_kerberos # -- Begin function aws_http_proxy_strategy_new_tunneling_kerberos
	.p2align	4, 0x90
	.type	aws_http_proxy_strategy_new_tunneling_kerberos,@function
aws_http_proxy_strategy_new_tunneling_kerberos: # @aws_http_proxy_strategy_new_tunneling_kerberos
# %bb.0:                                # %entry
	cmpq	$0, 0
	jne	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.end7
	movq	%rdi, %rax
	movq	$0, 16
	addq	$24, %rax
	retq
.Lfunc_end0:
	.size	aws_http_proxy_strategy_new_tunneling_kerberos, .Lfunc_end0-aws_http_proxy_strategy_new_tunneling_kerberos
                                        # -- End function
	.globl	aws_http_proxy_strategy_new_tunneling_ntlm # -- Begin function aws_http_proxy_strategy_new_tunneling_ntlm
	.p2align	4, 0x90
	.type	aws_http_proxy_strategy_new_tunneling_ntlm,@function
aws_http_proxy_strategy_new_tunneling_ntlm: # @aws_http_proxy_strategy_new_tunneling_ntlm
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB1_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB1_2:                                # %if.end7
	movq	%rdi, %rax
	movq	$0, (%rdi)
	retq
.Lfunc_end1:
	.size	aws_http_proxy_strategy_new_tunneling_ntlm, .Lfunc_end1-aws_http_proxy_strategy_new_tunneling_ntlm
                                        # -- End function
	.globl	aws_http_proxy_strategy_new_tunneling_adaptive # -- Begin function aws_http_proxy_strategy_new_tunneling_adaptive
	.p2align	4, 0x90
	.type	aws_http_proxy_strategy_new_tunneling_adaptive,@function
aws_http_proxy_strategy_new_tunneling_adaptive: # @aws_http_proxy_strategy_new_tunneling_adaptive
# %bb.0:                                # %entry
	testb	$1, %sil
	jne	.LBB2_5
# %bb.1:                                # %if.then7
	cmpq	$0, 0
	jne	.LBB2_3
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB2_4
.LBB2_3:                                # %if.end7.i
	movq	$0, 16
	movl	$24, %eax
.LBB2_4:                                # %aws_http_proxy_strategy_new_tunneling_kerberos.exit
	movq	%rax, (%rdi)
.LBB2_5:                                # %if.end16
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	aws_http_proxy_strategy_new_tunneling_adaptive, .Lfunc_end2-aws_http_proxy_strategy_new_tunneling_adaptive
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
