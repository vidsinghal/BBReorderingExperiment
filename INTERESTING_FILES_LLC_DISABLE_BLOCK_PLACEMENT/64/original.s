	.text
	.file	""
	.globl	vtklibharu_HPDF_Direct_New      # -- Begin function vtklibharu_HPDF_Direct_New
	.p2align	4, 0x90
	.type	vtklibharu_HPDF_Direct_New,@function
vtklibharu_HPDF_Direct_New:             # @vtklibharu_HPDF_Direct_New
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	0, %r15
	testb	$1, %dl
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	vtklibharu_HPDF_MemSet@PLT
	movq	$0, (%r14)
	movq	(%rbx), %rax
	movq	%rax, 16(%r15)
	movq	$0, (%r15)
	movl	$0, (%rbx)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	vtklibharu_HPDF_Direct_New, .Lfunc_end0-vtklibharu_HPDF_Direct_New
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
