	.text
	.file	""
	.globl	v3p_netlib_dlarfg_              # -- Begin function v3p_netlib_dlarfg_
	.p2align	4, 0x90
	.type	v3p_netlib_dlarfg_,@function
v3p_netlib_dlarfg_:                     # @v3p_netlib_dlarfg_
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dl
	jne	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	16(%rsp), %rdi
	callq	v3p_netlib_dnrm2_@PLT
	movsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	movq	$0, (%r14)
	movq	(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	$0, 8(%rsp)
	callq	v3p_netlib_dscal_@PLT
	movq	$0, (%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	v3p_netlib_dlarfg_, .Lfunc_end0-v3p_netlib_dlarfg_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
