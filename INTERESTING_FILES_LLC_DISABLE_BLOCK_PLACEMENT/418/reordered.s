	.text
	.file	""
	.globl	geod_set                        # -- Begin function geod_set
	.p2align	4, 0x90
	.type	geod_set,@function
geod_set:                               # @geod_set
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
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %if.then79.critedge
	callq	pj_param@PLT
	movq	$0, (%rbx)
	movsd	0, %xmm0                        # xmm0 = mem[0],zero
	movq	0, %rax
	movq	0, %rax
	jmp	.LBB0_3
.LBB0_2:                                # %if.then15
	movq	%rdx, %r14
	movl	$0, 0
	callq	pj_param@PLT
	movq	$0, (%rbx)
	movq	$0, (%r14)
	callq	sqrt@PLT
	movq	$0, (%rbx)
	movq	0, %rax
	movq	0, %rax
	movq	0, %rax
	movq	GEODESIC@GOTPCREL(%rip), %rax
	cvttsd2si	(%rax), %eax
	movq	n_S@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
.LBB0_3:                                # %common.ret
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	geod_set, .Lfunc_end0-geod_set
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
