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
.LBB0_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdx)
	leaq	1(%rdx), %rdx
	jne	.LBB0_3
# %bb.2:                                # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	testl	%esi, %esi
	jne	.LBB0_1
	jmp	.LBB0_5
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
.Lfunc_end0:
	.size	fs_build_range, .Lfunc_end0-fs_build_range
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
