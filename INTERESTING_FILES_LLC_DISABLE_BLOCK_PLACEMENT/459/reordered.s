	.text
	.file	""
	.globl	Transcript_velocity_single      # -- Begin function Transcript_velocity_single
	.p2align	4, 0x90
	.type	Transcript_velocity_single,@function
Transcript_velocity_single:             # @Transcript_velocity_single
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rax
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB0_4
# %bb.1:
	movq	%rax, %rbx
	movq	%rdx, %rax
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	callq	List_next@PLT
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.3:
	movq	%rbx, %rax
.LBB0_4:                                # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	callq	List_next@PLT
	jmp	.LBB0_4
.Lfunc_end0:
	.size	Transcript_velocity_single, .Lfunc_end0-Transcript_velocity_single
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
