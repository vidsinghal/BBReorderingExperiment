	.text
	.file	""
	.globl	yasm_object_create              # -- Begin function yasm_object_create
	.p2align	4, 0x90
	.type	yasm_object_create,@function
yasm_object_create:                     # @yasm_object_create
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	xorl	%edi, %edi
	callq	*(%r14)
	movq	$0, (%r14)
	movq	0, %rax
	testb	$1, %bl
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	0, %rax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	yasm_object_create, .Lfunc_end0-yasm_object_create
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
