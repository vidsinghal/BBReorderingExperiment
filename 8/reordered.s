	.text
	.file	""
	.globl	bli_strmv_unf_var2              # -- Begin function bli_strmv_unf_var2
	.p2align	4, 0x90
	.type	bli_strmv_unf_var2,@function
bli_strmv_unf_var2:                     # @bli_strmv_unf_var2
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
	movq	0, %rbx
	movq	0, %r14
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	*%rbx
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	cmpq	$1, %r14
	jg	.LBB0_3
# %bb.1:                                # %for.cond
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	0, %r14
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$1, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                # %for.cond18
                                        # =>This Inner Loop Header: Depth=1
	.cfi_def_cfa_offset 32
	jmp	.LBB0_3
.Lfunc_end0:
	.size	bli_strmv_unf_var2, .Lfunc_end0-bli_strmv_unf_var2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
