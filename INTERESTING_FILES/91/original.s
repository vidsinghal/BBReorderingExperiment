	.text
	.file	""
	.globl	umfpack_zi_get_numeric          # -- Begin function umfpack_zi_get_numeric
	.p2align	4, 0x90
	.type	umfpack_zi_get_numeric,@function
umfpack_zi_get_numeric:                 # @umfpack_zi_get_numeric
# %bb.0:                                # %entry
	testl	%esi, %esi
	jle	.LBB0_4
# %bb.1:                                # %for.body.lr.ph
	cmpl	$1, %esi
	jne	.LBB0_2
# %bb.3:                                # %for.cond.for.end_crit_edge
	movl	$0, (%rdi)
.LBB0_4:                                # %for.end
	xorl	%eax, %eax
	retq
	.p2align	4, 0x90
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.Lfunc_end0:
	.size	umfpack_zi_get_numeric, .Lfunc_end0-umfpack_zi_get_numeric
                                        # -- End function
	.section	".note.GNU-stack","",@progbits