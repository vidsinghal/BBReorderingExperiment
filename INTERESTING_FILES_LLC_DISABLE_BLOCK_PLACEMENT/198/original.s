	.text
	.file	""
	.globl	rd_kafka_broker_ApiVersion_supported # -- Begin function rd_kafka_broker_ApiVersion_supported
	.p2align	4, 0x90
	.type	rd_kafka_broker_ApiVersion_supported,@function
rd_kafka_broker_ApiVersion_supported:   # @rd_kafka_broker_ApiVersion_supported
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*%rbx
	testl	%eax, %eax
	sets	%al
	testq	%r14, %r14
	sete	%cl
	orb	%al, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.then10
	movzwl	4(%rbx), %eax
	movw	%ax, 4
	movl	(%rbx), %eax
	movl	%eax, 0
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	rd_kafka_broker_ApiVersion_supported, .Lfunc_end0-rd_kafka_broker_ApiVersion_supported
	.cfi_endproc
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	4, 0x90
	.type	bsearch,@function
bsearch:                                # @bsearch
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
	movq	%rsi, %rax
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*%rax
	testl	%eax, %eax
	cmovsq	%r14, %rbx
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	bsearch, .Lfunc_end1-bsearch
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
