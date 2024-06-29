	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testb	$1, %dil
	jne	.LBB0_3
# %bb.1:                                # %if.end
	movl	0, %eax
	testb	$1, %sil
	je	.LBB0_4
# %bb.2:                                # %if.end3
	xorl	%ebx, %ebx
	callq	*%rbx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	*%rbx
.LBB0_3:                                # %if.then
	callq	usage@PLT
.LBB0_4:                                # %if.then2
	movl	$0, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	usage                           # -- Begin function usage
	.p2align	4, 0x90
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	*%rbx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	*%rbx
.Lfunc_end1:
	.size	usage, .Lfunc_end1-usage
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
