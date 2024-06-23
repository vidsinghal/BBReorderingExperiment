	.text
	.file	""
	.globl	FLA_Axpy_internal               # -- Begin function FLA_Axpy_internal
	.p2align	4, 0x90
	.type	FLA_Axpy_internal,@function
FLA_Axpy_internal:                      # @FLA_Axpy_internal
# %bb.0:                                # %entry
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_3:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	0, %rax
.LBB0_1:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 0
	jne	.LBB0_3
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	0, %eax
	jmp	.LBB0_3
.Lfunc_end0:
	.size	FLA_Axpy_internal, .Lfunc_end0-FLA_Axpy_internal
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
