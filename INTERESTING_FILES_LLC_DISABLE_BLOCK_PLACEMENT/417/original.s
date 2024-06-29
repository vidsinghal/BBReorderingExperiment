	.text
	.file	""
	.globl	H5C_dump_cache                  # -- Begin function H5C_dump_cache
	.p2align	4, 0x90
	.type	H5C_dump_cache,@function
H5C_dump_cache:                         # @H5C_dump_cache
	.cfi_startproc
# %bb.0:                                # %entry
	movq	H5C_dump_cache.func_check@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movb	$1, (%rax)
.LBB0_2:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	0, %rax
	movq	H5E_ERR_CLS_g@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
	movq	$0, (%rsp)
	movq	.str.1@GOTPCREL(%rip), %rsi
	movq	__func__.H5C_dump_cache@GOTPCREL(%rip), %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	H5E_printf_stack@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	H5C_dump_cache, .Lfunc_end0-H5C_dump_cache
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
