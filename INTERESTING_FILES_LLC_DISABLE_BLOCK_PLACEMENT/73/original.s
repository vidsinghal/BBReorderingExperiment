	.text
	.file	""
	.globl	mv_MultiVectorCreateFromSampleVector # -- Begin function mv_MultiVectorCreateFromSampleVector
	.p2align	4, 0x90
	.type	mv_MultiVectorCreateFromSampleVector,@function
mv_MultiVectorCreateFromSampleVector:   # @mv_MultiVectorCreateFromSampleVector
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	hypre_MAlloc@PLT
	movq	$0, (%rbx)
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*(%r14)
	movq	$0, (%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	mv_MultiVectorCreateFromSampleVector, .Lfunc_end0-mv_MultiVectorCreateFromSampleVector
	.cfi_endproc
                                        # -- End function
	.globl	mv_MultiVectorCreateCopy        # -- Begin function mv_MultiVectorCreateCopy
	.p2align	4, 0x90
	.type	mv_MultiVectorCreateCopy,@function
mv_MultiVectorCreateCopy:               # @mv_MultiVectorCreateCopy
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	hypre_MAlloc@PLT
	movq	(%r14), %rdi
	xorl	%esi, %esi
	callq	*(%rbx)
	movq	$0, (%rbx)
	movq	$0, (%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	mv_MultiVectorCreateCopy, .Lfunc_end1-mv_MultiVectorCreateCopy
	.cfi_endproc
                                        # -- End function
	.globl	mv_MultiVectorDestroy           # -- Begin function mv_MultiVectorDestroy
	.p2align	4, 0x90
	.type	mv_MultiVectorDestroy,@function
mv_MultiVectorDestroy:                  # @mv_MultiVectorDestroy
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB2_2
# %bb.1:                                # %if.end
	movl	$0, 0
.LBB2_2:                                # %common.ret1
	retq
.Lfunc_end2:
	.size	mv_MultiVectorDestroy, .Lfunc_end2-mv_MultiVectorDestroy
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
