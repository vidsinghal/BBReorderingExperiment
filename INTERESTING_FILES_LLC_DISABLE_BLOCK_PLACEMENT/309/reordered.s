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
	movl	%edi, %ebx
	callq	__errno_location@PLT
	testl	%ebx, %ebx
	jg	.LBB0_2
# %bb.1:                                # %if.else
	je	.LBB0_4
.LBB0_2:                                # %if.end10
	movl	0, %eax
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.then3
	.cfi_def_cfa_offset 16
	movq	0, %rax
	jmp	.LBB0_3
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
