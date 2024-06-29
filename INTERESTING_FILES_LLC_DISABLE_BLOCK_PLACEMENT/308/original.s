	.text
	.file	""
	.globl	functionsLibCtxClear            # -- Begin function functionsLibCtxClear
	.p2align	4, 0x90
	.type	functionsLibCtxClear,@function
functionsLibCtxClear:                   # @functionsLibCtxClear
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	jmp	.LBB0_2
.LBB0_1:                                # %while.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	$0, 8
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	callq	dictNext@PLT
	testq	%rax, %rax
	jne	.LBB0_1
# %bb.3:                                # %while.end
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	functionsLibCtxClear, .Lfunc_end0-functionsLibCtxClear
	.cfi_endproc
                                        # -- End function
	.globl	functionsLibCtxClearCurrent     # -- Begin function functionsLibCtxClearCurrent
	.p2align	4, 0x90
	.type	functionsLibCtxClearCurrent,@function
functionsLibCtxClearCurrent:            # @functionsLibCtxClearCurrent
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	jmp	.LBB1_2
.LBB1_1:                                # %while.body.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$0, 8
.LBB1_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	callq	dictNext@PLT
	testq	%rax, %rax
	jne	.LBB1_1
# %bb.3:                                # %functionsLibCtxClear.exit
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	functionsLibCtxClearCurrent, .Lfunc_end1-functionsLibCtxClearCurrent
	.cfi_endproc
                                        # -- End function
	.globl	functionsLibCtxFree             # -- Begin function functionsLibCtxFree
	.p2align	4, 0x90
	.type	functionsLibCtxFree,@function
functionsLibCtxFree:                    # @functionsLibCtxFree
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	jmp	.LBB2_2
.LBB2_1:                                # %while.body.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	$0, 8
.LBB2_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	callq	dictNext@PLT
	testq	%rax, %rax
	jne	.LBB2_1
# %bb.3:                                # %functionsLibCtxClear.exit
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	functionsLibCtxFree, .Lfunc_end2-functionsLibCtxFree
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
