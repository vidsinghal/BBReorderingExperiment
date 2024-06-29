	.text
	.file	""
	.globl	s2n_server_cookie_recv          # -- Begin function s2n_server_cookie_recv
	.p2align	4, 0x90
	.type	s2n_server_cookie_recv,@function
s2n_server_cookie_recv:                 # @s2n_server_cookie_recv
# %bb.0:                                # %entry
	movl	$1, %eax
	testb	$1, %dil
	je	.LBB0_2
.LBB0_1:                                # %common.ret.sink.split
	movq	s2n_debug_str@GOTTPOFF(%rip), %rcx
	movq	$0, %fs:(%rcx)
	retq
.LBB0_2:                                # %do.body7
	movzbl	0, %eax
	xorl	%eax, %eax
	testb	$1, %sil
	je	.LBB0_1
# %bb.3:                                # %common.ret
	retq
.Lfunc_end0:
	.size	s2n_server_cookie_recv, .Lfunc_end0-s2n_server_cookie_recv
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
