	.text
	.file	""
	.globl	H5HF__huge_init                 # -- Begin function H5HF__huge_init
	.p2align	4, 0x90
	.type	H5HF__huge_init,@function
H5HF__huge_init:                        # @H5HF__huge_init
# %bb.0:                                # %entry
	movq	H5HF__huge_init.func_check@GOTPCREL(%rip), %rax
	cmpb	$1, (%rax)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movb	$0, (%rdi)
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	H5HF__huge_init, .Lfunc_end0-H5HF__huge_init
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
