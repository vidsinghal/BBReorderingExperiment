	.text
	.file	""
	.globl	bam_parse_region                # -- Begin function bam_parse_region
	.p2align	4, 0x90
	.type	bam_parse_region,@function
bam_parse_region:                       # @bam_parse_region
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%ecx, %ebx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	sam_parse_region@PLT
	cmpq	$2147483647, %r12               # imm = 0x7FFFFFFF
	jg	.LBB0_2
# %bb.1:                                # %lor.lhs.false
	movl	%ebx, (%r15)
	movl	%ebx, (%r14)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bam_parse_region, .Lfunc_end0-bam_parse_region
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
