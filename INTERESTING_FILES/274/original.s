	.text
	.file	""
	.globl	cs_cl_reach                     # -- Begin function cs_cl_reach
	.p2align	4, 0x90
	.type	cs_cl_reach,@function
cs_cl_reach:                            # @cs_cl_reach
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdx, %rdx
	setne	%cl
	testb	%sil, %cl
	je	.LBB0_2
# %bb.1:                                # %lor.lhs.false5
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	cs_cl_dfs@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cs_cl_reach, .Lfunc_end0-cs_cl_reach
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
