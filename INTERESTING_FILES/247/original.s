	.text
	.file	""
	.globl	ht_visit                        # -- Begin function ht_visit
	.p2align	4, 0x90
	.type	ht_visit,@function
ht_visit:                               # @ht_visit
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
	cmpq	$0, (%rsi)
	je	.LBB0_2
.LBB0_1:                                # %land.lhs.true.peel
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*%r14
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%rbx)
	jne	.LBB0_1
	jmp	.LBB0_2
.Lfunc_end0:
	.size	ht_visit, .Lfunc_end0-ht_visit
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
