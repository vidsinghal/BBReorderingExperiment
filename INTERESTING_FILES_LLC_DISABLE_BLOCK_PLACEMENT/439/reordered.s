	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	movq	__const.main.fuse_opts@GOTPCREL(%rip), %rax
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movaps	%xmm1, 8(%rsp)
	movaps	%xmm2, 24(%rsp)
	movaps	%xmm3, 40(%rsp)
	movq	64(%rax), %rax
	movq	%rax, 56(%rsp)
	movaps	%xmm0, -8(%rsp)
	movq	$0, (%rsi)
	movl	$0, (%rsi)
	movq	$0, (%rdi)
	movl	$0, (%rdi)
	movq	$0, 24(%rdx)
	movl	$0, (%rdx)
	movl	-8(%rsp), %eax
	movl	$0, 0
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	sqfs_ll_open                    # -- Begin function sqfs_ll_open
	.p2align	4, 0x90
	.type	sqfs_ll_open,@function
sqfs_ll_open:                           # @sqfs_ll_open
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB1_2
# %bb.1:                                # %if.then4
	movl	0, %eax
.LBB1_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	sqfs_ll_open, .Lfunc_end1-sqfs_ll_open
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
