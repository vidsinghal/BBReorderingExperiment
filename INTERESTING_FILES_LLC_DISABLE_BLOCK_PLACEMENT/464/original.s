	.text
	.file	""
	.globl	_import_array                   # -- Begin function _import_array
	.p2align	4, 0x90
	.type	_import_array,@function
_import_array:                          # @_import_array
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
	movl	%ecx, %ebx
	movl	%edx, %ebp
	movl	%esi, %r14d
	callq	*(%rdi)
	testb	$1, %r14b
	jne	.LBB0_2
# %bb.1:                                # %if.then14
	movl	0, %eax
	jmp	.LBB0_5
.LBB0_2:                                # %if.end18
	xorl	%eax, %eax
	testb	$1, %bpl
	jne	.LBB0_6
# %bb.3:                                # %if.end26
	movl	0, %ecx
	testb	$1, %bl
	je	.LBB0_6
# %bb.4:                                # %if.then30
	movq	0, %rax
.LBB0_5:                                # %common.ret
	movl	$1, %eax
.LBB0_6:                                # %common.ret
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_import_array, .Lfunc_end0-_import_array
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
