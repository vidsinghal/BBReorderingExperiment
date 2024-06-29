	.text
	.file	""
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function vtklibharu_HPDF_Page_SetDash
.LCPI0_0:
	.long	0x5f000000                      # float 9.22337203E+18
	.text
	.globl	vtklibharu_HPDF_Page_SetDash
	.p2align	4, 0x90
	.type	vtklibharu_HPDF_Page_SetDash,@function
vtklibharu_HPDF_Page_SetDash:           # @vtklibharu_HPDF_Page_SetDash
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edi, %edi
	setne	%al
	testb	%sil, %al
	je	.LBB0_2
# %bb.1:                                # %if.then11
	pushq	%rax
	.cfi_def_cfa_offset 16
	cvttss2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subss	.LCPI0_0(%rip), %xmm0
	cvttss2si	%xmm0, %rdi
	andq	%rcx, %rdi
	orq	%rax, %rdi
	callq	vtklibharu_HPDF_RaiseError@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	vtklibharu_HPDF_Page_SetDash, .Lfunc_end0-vtklibharu_HPDF_Page_SetDash
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
