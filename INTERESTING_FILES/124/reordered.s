	.text
	.file	""
	.globl	opj_pi_next_pcrl                # -- Begin function opj_pi_next_pcrl
	.p2align	4, 0x90
	.type	opj_pi_next_pcrl,@function
opj_pi_next_pcrl:                       # @opj_pi_next_pcrl
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
	movq	%rdi, %rbx
	movl	(%rdi), %ebp
	.p2align	4, 0x90
.LBB0_1:                                # %for.cond120
                                        # =>This Inner Loop Header: Depth=1
	callq	opj_uint_min@PLT
	cmpl	%eax, %ebp
	jb	.LBB0_1
# %bb.2:                                # %for.cond108
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	(%rbx), %ebp
	jmp	.LBB0_1
.Lfunc_end0:
	.size	opj_pi_next_pcrl, .Lfunc_end0-opj_pi_next_pcrl
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits