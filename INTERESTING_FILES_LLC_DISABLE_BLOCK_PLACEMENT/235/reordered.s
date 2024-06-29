	.text
	.file	""
	.globl	inflateBackInit_                # -- Begin function inflateBackInit_
	.p2align	4, 0x90
	.type	inflateBackInit_,@function
inflateBackInit_:                       # @inflateBackInit_
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%cl
	testl	%esi, %esi
	setne	%dl
	orb	%cl, %dl
	jne	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	inflateBackInit_, .Lfunc_end0-inflateBackInit_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
