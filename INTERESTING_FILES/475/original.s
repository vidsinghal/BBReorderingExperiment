	.text
	.file	""
	.globl	bli_gemm_md                     # -- Begin function bli_gemm_md
	.p2align	4, 0x90
	.type	bli_gemm_md,@function
bli_gemm_md:                            # @bli_gemm_md
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	callq	bli_obj_is_real@PLT
	callq	bli_obj_is_real@PLT
	andb	%bl, %al
	cmpb	$1, %al
	je	.LBB0_2
# %bb.1:                                # %land.lhs.true12
	movq	0, %rax
.LBB0_2:                                # %common.ret
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bli_gemm_md, .Lfunc_end0-bli_gemm_md
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
