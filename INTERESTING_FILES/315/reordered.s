	.text
	.file	""
	.globl	_zip_string_crc32               # -- Begin function _zip_string_crc32
	.p2align	4, 0x90
	.type	_zip_string_crc32,@function
_zip_string_crc32:                      # @_zip_string_crc32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %ebp
	xorl	%edi, %edi
	callq	crc32@PLT
	testb	$1, %bpl
	jne	.LBB0_2
# %bb.1:                                # %if.then
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	crc32@PLT
.LBB0_2:                                # %if.end
	movl	%ebx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_zip_string_crc32, .Lfunc_end0-_zip_string_crc32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
