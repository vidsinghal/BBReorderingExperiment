	.text
	.file	""
	.globl	topology_take_snapshot          # -- Begin function topology_take_snapshot
	.p2align	4, 0x90
	.type	topology_take_snapshot,@function
topology_take_snapshot:                 # @topology_take_snapshot
# %bb.0:                                # %entry
	movq	0, %rax
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end11.i
	movb	$0, 1
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.then10.i
	movl	$0, 0
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	topology_take_snapshot, .Lfunc_end0-topology_take_snapshot
                                        # -- End function
	.globl	topology_sysfs_get_system_props # -- Begin function topology_sysfs_get_system_props
	.p2align	4, 0x90
	.type	topology_sysfs_get_system_props,@function
topology_sysfs_get_system_props:        # @topology_sysfs_get_system_props
# %bb.0:                                # %entry
	testq	$1, 0
	je	.LBB1_3
# %bb.1:                                # %if.then10
	movl	$0, 0
	xorl	%eax, %eax
	retq
.LBB1_3:                                # %if.end11
	movb	$0, 1
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	topology_sysfs_get_system_props, .Lfunc_end1-topology_sysfs_get_system_props
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
