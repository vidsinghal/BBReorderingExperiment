	.text
	.file	""
	.globl	recvfd                          # -- Begin function recvfd
	.p2align	4, 0x90
	.type	recvfd,@function
recvfd:                                 # @recvfd
# %bb.0:                                # %entry
	movq	0, %rax
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	setne	%al
	andb	%sil, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end24
	pushq	%rax
	xorl	%edi, %edi
	xorl	%esi, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	fprintf@PLT
	addq	$8, %rsp
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	xorl	%edx, %edx
	retq
.Lfunc_end0:
	.size	recvfd, .Lfunc_end0-recvfd
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
