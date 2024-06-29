	.text
	.file	""
	.globl	init_class                      # -- Begin function init_class
	.p2align	4, 0x90
	.type	init_class,@function
init_class:                             # @init_class
# %bb.0:                                # %entry
	movq	$0, (%rsi)
	movq	(%rdi), %rax
	movq	$0, 72(%rdi)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, 96(%rdi)
	movq	(%rsi), %rax
	movq	(%rax), %rax
	movq	%rax, 272(%rdi)
	movq	(%rsi), %rax
	movq	(%rax), %rax
	movq	%rax, 280(%rdi)
	movq	(%rsi), %rax
	movq	(%rax), %rax
	movq	%rax, 288(%rdi)
	movq	(%rsi), %rax
	movq	(%rax), %rax
	movq	%rax, 312(%rdi)
	retq
.Lfunc_end0:
	.size	init_class, .Lfunc_end0-init_class
                                        # -- End function
	.globl	unpack_string                   # -- Begin function unpack_string
	.p2align	4, 0x90
	.type	unpack_string,@function
unpack_string:                          # @unpack_string
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB1_2
# %bb.1:                                # %if.end
	movq	0, %rax
.LBB1_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	unpack_string, .Lfunc_end1-unpack_string
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
