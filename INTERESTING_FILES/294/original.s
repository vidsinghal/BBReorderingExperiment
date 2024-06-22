	.text
	.file	""
	.globl	bli_shemv_unf_var1a             # -- Begin function bli_shemv_unf_var1a
	.p2align	4, 0x90
	.type	bli_shemv_unf_var1a,@function
bli_shemv_unf_var1a:                    # @bli_shemv_unf_var1a
	.cfi_startproc
# %bb.0:                                # %entry
	movq	0, %rax
	testb	$1, %dil
	je	.LBB0_1
# %bb.2:                                # %for.body
	pushq	%rax
	.cfi_def_cfa_offset 16
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
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
	callq	*%rax
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %common.ret
	retq
.Lfunc_end0:
	.size	bli_shemv_unf_var1a, .Lfunc_end0-bli_shemv_unf_var1a
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
