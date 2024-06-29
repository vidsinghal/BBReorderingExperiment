	.text
	.file	""
	.globl	bam_parse_region                # -- Begin function bam_parse_region
	.p2align	4, 0x90
	.type	bam_parse_region,@function
bam_parse_region:                       # @bam_parse_region
# %bb.0:                                # %entry
	movq	0, %rax
	cmpq	$2147483647, (%rdi)             # imm = 0x7FFFFFFF
	jg	.LBB0_2
# %bb.1:                                # %lor.lhs.false
	movl	%esi, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	bam_parse_region, .Lfunc_end0-bam_parse_region
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
