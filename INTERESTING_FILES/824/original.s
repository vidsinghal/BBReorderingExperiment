	.text
	.file	""
	.globl	v3p_netlib_setgpfa_             # -- Begin function v3p_netlib_setgpfa_
	.p2align	4, 0x90
	.type	v3p_netlib_setgpfa_,@function
v3p_netlib_setgpfa_:                    # @v3p_netlib_setgpfa_
# %bb.0:                                # %entry
	movq	%rsi, %rax
	movq	%rsi, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB0_1
# %bb.2:
	cqto
	idivq	%rdi
	movq	%rdx, %rcx
	jmp	.LBB0_3
.LBB0_1:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %ecx
.LBB0_3:
	movq	%rdi, %rsi
	shrq	$32, %rsi
	.p2align	4, 0x90
.LBB0_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	testq	%rcx, %rcx
	jne	.LBB0_4
# %bb.5:                                # %L10.peel.next
                                        #   in Loop: Header=BB0_4 Depth=1
	testq	%rsi, %rsi
	je	.LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$1, %eax
	xorl	%edx, %edx
	idivq	%rdi
	jmp	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$1, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
	.p2align	4, 0x90
.LBB0_8:                                # %L10
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rdx, %rdx
	je	.LBB0_8
	jmp	.LBB0_4
.Lfunc_end0:
	.size	v3p_netlib_setgpfa_, .Lfunc_end0-v3p_netlib_setgpfa_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
