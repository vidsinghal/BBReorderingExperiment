	.text
	.file	""
	.globl	escapifychar                    # -- Begin function escapifychar
	.p2align	4, 0x90
	.type	escapifychar,@function
escapifychar:                           # @escapifychar
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:
	movb	$1, %cl
	xorl	%eax, %eax
	movb	%cl, (%rdi)
	retq
.LBB0_2:                                # %if.then17
	movb	$0, 1(%rdi)
	xorl	%ecx, %ecx
	movq	%rdi, %rax
	movb	%cl, (%rdi)
	retq
.Lfunc_end0:
	.size	escapifychar, .Lfunc_end0-escapifychar
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
