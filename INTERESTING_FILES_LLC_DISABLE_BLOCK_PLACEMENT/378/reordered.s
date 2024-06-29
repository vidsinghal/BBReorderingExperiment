	.text
	.file	""
	.globl	Object_npyEndArray              # -- Begin function Object_npyEndArray
	.p2align	4, 0x90
	.type	Object_npyEndArray,@function
Object_npyEndArray:                     # @Object_npyEndArray
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testq	%r8, %r8
	setne	%cl
	testb	%cl, 16(%rsp)
	jne	.LBB0_2
# %bb.1:                                # %if.else
	movq	%rdi, %rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*(%rax)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	Object_npyEndArray, .Lfunc_end0-Object_npyEndArray
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
