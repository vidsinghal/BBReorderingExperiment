	.text
	.file	""
	.globl	internal_exr_write_header       # -- Begin function internal_exr_write_header
	.p2align	4, 0x90
	.type	internal_exr_write_header,@function
internal_exr_write_header:              # @internal_exr_write_header
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
	xorl	%edi, %edi
	callq	priv_from_native32@PLT
	cmpb	$0, (%r14)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*(%r14)
	cmpb	$0, (%r14)
	je	.LBB0_1
# %bb.2:                                # %if.then25
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	(%rbx), %rax
	cmpl	$0, 8(%rax)
	jle	.LBB0_1
	jmp	.LBB0_1
.Lfunc_end0:
	.size	internal_exr_write_header, .Lfunc_end0-internal_exr_write_header
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
