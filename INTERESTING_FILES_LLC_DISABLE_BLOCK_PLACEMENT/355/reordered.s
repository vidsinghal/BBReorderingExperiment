	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testl	%edi, %edi
	setne	%al
	testl	%esi, %esi
	sete	%cl
	orb	%al, %cl
	cmpb	$1, %cl
	je	.LBB0_2
# %bb.1:                                # %if.then48
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	*%r8
.LBB0_2:                                # %sw.bb51
	movl	$0, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
