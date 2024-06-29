	.text
	.file	""
	.globl	bl1_strmv                       # -- Begin function bl1_strmv
	.p2align	4, 0x90
	.type	bl1_strmv,@function
bl1_strmv:                              # @bl1_strmv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %ebx
	movl	%edi, %r14d
	callq	bl1_zero_dim1@PLT
	testb	$1, %r14b
	jne	.LBB0_4
.LBB0_1:                                # %common.ret
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:                                # %if.else11
	.cfi_def_cfa_offset 32
	movl	0, %eax
	testb	$1, %bl
	je	.LBB0_5
# %bb.3:                                # %if.else15
	movl	0, %eax
	movl	$0, 0
	jmp	.LBB0_1
.LBB0_4:                                # %if.end
	testb	$1, %bpl
	je	.LBB0_2
.LBB0_5:                                # %if.end23
	movl	$0, 0
	jmp	.LBB0_1
.Lfunc_end0:
	.size	bl1_strmv, .Lfunc_end0-bl1_strmv
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
