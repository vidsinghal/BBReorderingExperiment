	.text
	.file	""
	.globl	x64_mulmod                      # -- Begin function x64_mulmod
	.p2align	4, 0x90
	.type	x64_mulmod,@function
x64_mulmod:                             # @x64_mulmod
# %bb.0:                                # %entry
	movl	$1, %eax
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.else
	movq	(%rsi), %rax
.LBB0_2:                                # %cleanup
	retq
.Lfunc_end0:
	.size	x64_mulmod, .Lfunc_end0-x64_mulmod
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
