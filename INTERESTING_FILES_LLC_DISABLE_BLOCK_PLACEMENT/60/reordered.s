	.text
	.file	""
	.globl	init_class                      # -- Begin function init_class
	.p2align	4, 0x90
	.type	init_class,@function
init_class:                             # @init_class
# %bb.0:                                # %entry
	movq	(%rsi), %rax
	movq	%rax, 72(%rdi)
	movq	(%rdi), %rax
	movq	(%rdx), %rcx
	movq	%rcx, 80(%rdi)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, 96(%rdi)
	retq
.Lfunc_end0:
	.size	init_class, .Lfunc_end0-init_class
                                        # -- End function
	.globl	pack_long                       # -- Begin function pack_long
	.p2align	4, 0x90
	.type	pack_long,@function
pack_long:                              # @pack_long
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB1_2
# %bb.1:                                # %if.end
	movq	0, %rax
.LBB1_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	pack_long, .Lfunc_end1-pack_long
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
