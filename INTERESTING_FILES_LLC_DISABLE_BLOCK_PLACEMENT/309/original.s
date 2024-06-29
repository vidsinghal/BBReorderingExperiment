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
	jle	.LBB0_2
# %bb.1:                                # %if.then
	movl	0, %eax
	jmp	.LBB0_4
.LBB0_2:                                # %if.else
	jne	.LBB0_5
# %bb.3:                                # %if.then3
	movq	0, %rax
.LBB0_4:                                # %common.ret
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %if.end10
	.cfi_def_cfa_offset 16
	movl	0, %eax
	jmp	.LBB0_4
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
