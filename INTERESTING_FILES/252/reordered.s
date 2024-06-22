	.text
	.file	""
	.globl	ucs_pgt_entry_dump_recurs       # -- Begin function ucs_pgt_entry_dump_recurs
	.p2align	4, 0x90
	.type	ucs_pgt_entry_dump_recurs,@function
ucs_pgt_entry_dump_recurs:              # @ucs_pgt_entry_dump_recurs
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_3
# %bb.1:                                # %for.cond.preheader
	pushq	%rax
	xorl	%edi, %edi
	callq	ucs_pgt_entry_dump_recurs@PLT
	addq	$8, %rsp
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %if.then
	retq
.Lfunc_end0:
	.size	ucs_pgt_entry_dump_recurs, .Lfunc_end0-ucs_pgt_entry_dump_recurs
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
