	.text
	.file	""
	.globl	rte_mem_virt2phy                # -- Begin function rte_mem_virt2phy
	.p2align	4, 0x90
	.type	rte_mem_virt2phy,@function
rte_mem_virt2phy:                       # @rte_mem_virt2phy
# %bb.0:                                # %entry
	testb	$1, %dl
	je	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.end36
	movq	%rsi, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	je	.LBB0_3
# %bb.4:
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rdx, %rax
	orq	$1, %rax
	retq
.LBB0_3:
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %eax
	orq	$1, %rax
	retq
.Lfunc_end0:
	.size	rte_mem_virt2phy, .Lfunc_end0-rte_mem_virt2phy
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
