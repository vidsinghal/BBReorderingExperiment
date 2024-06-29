	.text
	.file	""
	.globl	Tcl_InitHashTable               # -- Begin function Tcl_InitHashTable
	.p2align	4, 0x90
	.type	Tcl_InitHashTable,@function
Tcl_InitHashTable:                      # @Tcl_InitHashTable
# %bb.0:                                # %entry
	testl	%esi, %esi
	je	.LBB0_3
# %bb.1:                                # %entry
	cmpl	$1, %esi
	jne	.LBB0_4
# %bb.2:                                # %if.then10
	addq	$64, %rdi
.LBB0_3:                                # %common.ret.sink.split
	movq	$0, (%rdi)
.LBB0_4:                                # %common.ret
	retq
.Lfunc_end0:
	.size	Tcl_InitHashTable, .Lfunc_end0-Tcl_InitHashTable
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
