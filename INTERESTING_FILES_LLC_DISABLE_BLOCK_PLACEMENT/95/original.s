	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	movl	0, %eax
	testl	%edi, %edi
	je	.LBB0_6
# %bb.1:                                # %entry
	cmpl	$1, %edi
	je	.LBB0_4
# %bb.2:                                # %entry
	cmpl	$118, %edi
	je	.LBB0_5
# %bb.3:                                # %common.ret
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %sw.bb
	pushq	%rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	addq	$8, %rsp
	xorl	%eax, %eax
	retq
.LBB0_5:                                # %sw.bb2
	movl	0, %eax
	xorl	%eax, %eax
	retq
.LBB0_6:                                # %while.end
	movl	0, %eax
	movl	0, %eax
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
