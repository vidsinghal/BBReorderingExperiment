	.text
	.file	""
	.globl	fs_build_range                  # -- Begin function fs_build_range
	.p2align	4, 0x90
	.type	fs_build_range,@function
fs_build_range:                         # @fs_build_range
# %bb.0:                                # %entry
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	setne	%cl
	xorl	%eax, %eax
	xorl	%edx, %edx
.LBB0_1:                                # %while.body.peel
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	leaq	1(%rdx), %rdi
	cmpb	$0, (%rdx)
	je	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%rdi, %rdx
.LBB0_3:                                # %while.cond.outer.loopexit
                                        #   in Loop: Header=BB0_1 Depth=1
	testl	%esi, %esi
	movl	%ecx, %eax
	jne	.LBB0_1
# %bb.4:
	movl	%ecx, %eax
.LBB0_5:                                # %if.end292
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB0_6:                                # %while.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%esi, %esi
	je	.LBB0_5
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	1(%rdi), %rdx
	cmpb	$0, (%rdi)
	movq	%rdx, %rdi
	jne	.LBB0_3
	jmp	.LBB0_6
.Lfunc_end0:
	.size	fs_build_range, .Lfunc_end0-fs_build_range
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
