	.text
	.file	""
	.globl	vtklibproj_pj_projection_specific_setup_ups # -- Begin function vtklibproj_pj_projection_specific_setup_ups
	.p2align	4, 0x90
	.type	vtklibproj_pj_projection_specific_setup_ups,@function
vtklibproj_pj_projection_specific_setup_ups: # @vtklibproj_pj_projection_specific_setup_ups
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
	callq	vtklibproj_pj_calloc@PLT
	movq	$0, (%r14)
	movq	$0, 184(%rbx)
	movq	$0, (%rbx)
	movq	464(%rbx), %rax
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	ucomisd	160, %xmm0
	setbe	%cl
	movl	%ecx, (%rbx)
	movsd	(%rax), %xmm1                   # xmm1 = mem[0],zero
	movsd	%xmm1, 464(%rbx)
	movsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_1
	jnp	.LBB0_2
.LBB0_1:                                # %if.then7.i
	movq	$0, (%rbx)
.LBB0_2:                                # %setup.exit
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	vtklibproj_pj_projection_specific_setup_ups, .Lfunc_end0-vtklibproj_pj_projection_specific_setup_ups
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
