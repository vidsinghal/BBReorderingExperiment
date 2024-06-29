	.text
	.file	""
	.globl	s2n_client_ems_recv             # -- Begin function s2n_client_ems_recv
	.p2align	4, 0x90
	.type	s2n_client_ems_recv,@function
s2n_client_ems_recv:                    # @s2n_client_ems_recv
# %bb.0:                                # %entry
	testb	$1, %sil
	jne	.LBB0_3
# %bb.1:                                # %do.body7
	testb	$1, %dl
	jne	.LBB0_4
# %bb.2:                                # %common.ret
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %do.body2
	movq	$0, (%rdi)
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %do.end18
	movl	$0, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s2n_client_ems_recv, .Lfunc_end0-s2n_client_ems_recv
                                        # -- End function
	.globl	s2n_client_ems_should_send      # -- Begin function s2n_client_ems_should_send
	.p2align	4, 0x90
	.type	s2n_client_ems_should_send,@function
s2n_client_ems_should_send:             # @s2n_client_ems_should_send
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB1_2
.LBB1_1:                                # %if.else
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	retq
.LBB1_2:                                # %land.lhs.true
	cmpl	$0, (%rdi)
	jne	.LBB1_1
# %bb.3:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end1:
	.size	s2n_client_ems_should_send, .Lfunc_end1-s2n_client_ems_should_send
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
