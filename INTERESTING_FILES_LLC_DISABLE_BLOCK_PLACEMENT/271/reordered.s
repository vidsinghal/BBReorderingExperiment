	.text
	.file	""
	.globl	ref_get_conventional_lattice    # -- Begin function ref_get_conventional_lattice
	.p2align	4, 0x90
	.type	ref_get_conventional_lattice,@function
ref_get_conventional_lattice:           # @ref_get_conventional_lattice
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	ptg_get_pointgroup@PLT
	movq	16(%rbx), %rax
	movq	%rax, 16
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	%rcx, 8
	movq	%rax, 0
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	ref_get_conventional_lattice, .Lfunc_end0-ref_get_conventional_lattice
	.cfi_endproc
                                        # -- End function
	.globl	set_tetra                       # -- Begin function set_tetra
	.p2align	4, 0x90
	.type	set_tetra,@function
set_tetra:                              # @set_tetra
# %bb.0:                                # %entry
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB1_4
.LBB1_1:                                # %cdce.end
	movsd	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_6
# %bb.2:                                # %cdce.call1
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jae	.LBB1_6
# %bb.3:                                # %call.sqrt
	jmp	sqrt@PLT                        # TAILCALL
.LBB1_4:                                # %cdce.call
	ucomisd	%xmm1, %xmm0
	jae	.LBB1_1
# %bb.5:                                # %call.sqrt1
	pushq	%rbx
	movq	%rdi, %rbx
	callq	sqrt@PLT
	xorpd	%xmm1, %xmm1
	movq	%rbx, %rdi
	popq	%rbx
	jmp	.LBB1_1
.LBB1_6:                                # %cdce.end2
	retq
.Lfunc_end1:
	.size	set_tetra, .Lfunc_end1-set_tetra
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
