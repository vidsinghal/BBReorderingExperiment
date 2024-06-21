	.text
	.file	""
	.globl	hwloc_set_membind_by_nodeset    # -- Begin function hwloc_set_membind_by_nodeset
	.p2align	4, 0x90
	.type	hwloc_set_membind_by_nodeset,@function
hwloc_set_membind_by_nodeset:           # @hwloc_set_membind_by_nodeset
# %bb.0:                                # %entry
	testl	%edi, %edi
	sets	%al
	testb	%al, %dl
	je	.LBB0_2
# %bb.1:                                # %if.then
	movl	$0, (%rsi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	hwloc_set_membind_by_nodeset, .Lfunc_end0-hwloc_set_membind_by_nodeset
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
