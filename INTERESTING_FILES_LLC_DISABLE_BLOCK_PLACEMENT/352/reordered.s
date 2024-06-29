	.text
	.file	""
	.globl	HTable_Resize                   # -- Begin function HTable_Resize
	.p2align	4, 0x90
	.type	HTable_Resize,@function
HTable_Resize:                          # @HTable_Resize
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, (%rdi)
	jne	.LBB0_2
.LBB0_1:                                # %for.cond6
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 16(%rbx)
	je	.LBB0_1
.LBB0_2:                                # %if.then
	xorl	%edi, %edi
	callq	HTable_Insert@PLT
	jmp	.LBB0_1
.Lfunc_end0:
	.size	HTable_Resize, .Lfunc_end0-HTable_Resize
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
