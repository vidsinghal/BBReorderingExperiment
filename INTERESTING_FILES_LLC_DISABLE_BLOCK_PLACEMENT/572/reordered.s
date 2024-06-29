	.text
	.file	""
	.globl	rte_vfio_clear_group            # -- Begin function rte_vfio_clear_group
	.p2align	4, 0x90
	.type	rte_vfio_clear_group,@function
rte_vfio_clear_group:                   # @rte_vfio_clear_group
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	get_vfio_cfg_by_group_fd@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	rte_vfio_clear_group, .Lfunc_end0-rte_vfio_clear_group
	.cfi_endproc
                                        # -- End function
	.globl	get_vfio_group_idx              # -- Begin function get_vfio_group_idx
	.p2align	4, 0x90
	.type	get_vfio_group_idx,@function
get_vfio_group_idx:                     # @get_vfio_group_idx
# %bb.0:                                # %entry
	orl	$1, %esi
	cmpl	$0, 4(%rdi)
	setne	%al
	cmpl	$64, %esi
	setb	%cl
	testb	%cl, %al
	je	.LBB1_3
# %bb.1:                                # %for.body3.peel.next
	movl	%esi, %eax
	leaq	(%rax,%rax,2), %rax
	movl	4(%rdi,%rax,4), %eax
.LBB1_2:                                # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jne	.LBB1_2
.LBB1_3:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	get_vfio_group_idx, .Lfunc_end1-get_vfio_group_idx
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
