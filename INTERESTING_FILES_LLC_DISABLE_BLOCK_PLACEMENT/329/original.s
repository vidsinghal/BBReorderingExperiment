	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	callq	N_VNew_Serial@PLT
	movq	(%r14), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	movq	(%r14), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	movq	$0, (%rbx)
	movq	0, %rax
	movq	(%r14), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	movq	(%r14), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	ProcessArgs                     # -- Begin function ProcessArgs
	.p2align	4, 0x90
	.type	ProcessArgs,@function
ProcessArgs:                            # @ProcessArgs
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB1_2
# %bb.1:                                # %if.then3
	movl	$0, (%rdi)
.LBB1_2:                                # %if.end43
	retq
.Lfunc_end1:
	.size	ProcessArgs, .Lfunc_end1-ProcessArgs
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
