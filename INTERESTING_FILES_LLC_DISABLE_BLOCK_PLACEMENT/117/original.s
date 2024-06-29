	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	cmpl	$0, (%rdi)
	jns	.LBB0_2
# %bb.1:                                # %if.then6.i
	movl	0, %eax
.LBB0_2:                                # %check_retval.exit
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	ressc                           # -- Begin function ressc
	.p2align	4, 0x90
	.type	ressc,@function
ressc:                                  # @ressc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	N_VGetArrayPointer@PLT
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	movsd	(%r14), %xmm1                   # xmm1 = mem[0],zero
	movq	$0, (%rbx)
	movsd	(%r14), %xmm2                   # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 8(%rax)
	movq	$0, (%rax)
	movq	$0, (%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	ressc, .Lfunc_end1-ressc
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
