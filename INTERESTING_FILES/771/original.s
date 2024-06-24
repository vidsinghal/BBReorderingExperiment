	.text
	.file	""
	.globl	nasm_catfile                    # -- Begin function nasm_catfile
	.p2align	4, 0x90
	.type	nasm_catfile,@function
nasm_catfile:                           # @nasm_catfile
# %bb.0:                                # %entry
	movq	0, %rax
	cmpb	$0, 0
	jne	.LBB0_2
# %bb.1:                                # %if.then8
	movb	$0, (%rdi)
.LBB0_2:                                # %if.end9
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	nasm_catfile, .Lfunc_end0-nasm_catfile
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
