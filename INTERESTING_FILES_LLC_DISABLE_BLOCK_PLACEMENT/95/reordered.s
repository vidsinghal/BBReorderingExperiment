	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	movl	0, %eax
	cmpl	$118, %edi
	je	.LBB0_4
# %bb.1:                                # %entry
	cmpl	$1, %edi
	je	.LBB0_6
# %bb.2:                                # %entry
	testl	%edi, %edi
	jne	.LBB0_5
# %bb.3:                                # %while.end
	movl	0, %eax
.LBB0_4:                                # %sw.bb2
	movl	0, %eax
.LBB0_5:                                # %common.ret
	xorl	%eax, %eax
	retq
.LBB0_6:                                # %sw.bb
	pushq	%rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	addq	$8, %rsp
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
