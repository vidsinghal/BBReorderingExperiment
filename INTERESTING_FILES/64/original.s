	.text
	.file	""
	.globl	vtklibharu_HPDF_Direct_New      # -- Begin function vtklibharu_HPDF_Direct_New
	.p2align	4, 0x90
	.type	vtklibharu_HPDF_Direct_New,@function
vtklibharu_HPDF_Direct_New:             # @vtklibharu_HPDF_Direct_New
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dl
	jne	.LBB0_2
# %bb.1:                                # %if.then
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	vtklibharu_HPDF_MemSet@PLT
	movq	$0, (%r15)
	movq	$0, (%r14)
	movq	$0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	vtklibharu_HPDF_Direct_New, .Lfunc_end0-vtklibharu_HPDF_Direct_New
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
