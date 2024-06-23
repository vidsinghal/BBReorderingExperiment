	.text
	.file	""
	.globl	FLA_Axpy_internal               # -- Begin function FLA_Axpy_internal
	.p2align	4, 0x90
	.type	FLA_Axpy_internal,@function
FLA_Axpy_internal:                      # @FLA_Axpy_internal
# %bb.0:                                # %entry
	cmpl	$0, 0
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movq	0, %rax
	cmpl	$0, 0
	jne	.LBB0_2
.LBB0_3:                                # %if.then
                                        # =>This Inner Loop Header: Depth=1
	movl	0, %eax
	movq	0, %rax
	cmpl	$0, 0
	jne	.LBB0_2
	jmp	.LBB0_3
.Lfunc_end0:
	.size	FLA_Axpy_internal, .Lfunc_end0-FLA_Axpy_internal
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
