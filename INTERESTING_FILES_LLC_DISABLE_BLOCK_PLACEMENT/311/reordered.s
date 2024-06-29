	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	callq	MPI_Init_thread@PLT
	xorl	%eax, %eax
	cmpl	$0, (%rbx)
	jne	.LBB0_2
# %bb.1:                                # %entry
	movq	size@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
.LBB0_2:                                # %entry
	movq	32(%rsp), %r15
	movq	left@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movl	$0, (%r14)
	cmpl	$0, (%rbx)
	je	.LBB0_4
# %bb.3:                                # %if.then18
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_4:                                # %if.end20
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movslq	(%rbx), %rdi
	movq	(%r15,%rdi,8), %rsi
	movq	(%rbx), %rdx
                                        # kill: def $edi killed $edi killed $rdi
	callq	papyruskv_put@PLT
	movl	$0, (%rbx)
	movq	(%rbx), %r9
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$0, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
