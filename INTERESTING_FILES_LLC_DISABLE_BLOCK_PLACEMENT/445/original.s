	.text
	.file	""
	.globl	_unur_set_params_burr           # -- Begin function _unur_set_params_burr
	.p2align	4, 0x90
	.type	_unur_set_params_burr,@function
_unur_set_params_burr:                  # @_unur_set_params_burr
# %bb.0:                                # %entry
	testb	$1, %cl
	je	.LBB0_2
# %bb.1:                                # %sw.bb38
	movabsq	$4607182418800017408, %rax      # imm = 0x3FF0000000000000
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %sw.default48
	testl	%edx, %edx
	je	.LBB0_6
# %bb.3:                                # %sw.default48
	cmpl	$1, %edx
	je	.LBB0_5
# %bb.4:                                # %sw.bb59
	movq	$0, (%rdi)
	xorl	%eax, %eax
	retq
.LBB0_5:                                # %sw.bb70
	movq	8(%rsp), %rax
	movq	$0, (%rax)
.LBB0_6:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	_unur_set_params_burr, .Lfunc_end0-_unur_set_params_burr
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
