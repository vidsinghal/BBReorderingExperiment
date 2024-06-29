	.text
	.file	""
	.globl	internal_exr_write_header       # -- Begin function internal_exr_write_header
	.p2align	4, 0x90
	.type	internal_exr_write_header,@function
internal_exr_write_header:              # @internal_exr_write_header
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%edi, %edi
	callq	priv_from_native32@PLT
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*(%rbx)
	cmpb	$0, (%rbx)
	je	.LBB0_1
	jmp	.LBB0_1
.Lfunc_end0:
	.size	internal_exr_write_header, .Lfunc_end0-internal_exr_write_header
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
