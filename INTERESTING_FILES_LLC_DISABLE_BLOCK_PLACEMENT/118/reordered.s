	.text
	.file	""
	.globl	sicm_arena_alloc_aligned        # -- Begin function sicm_arena_alloc_aligned
	.p2align	4, 0x90
	.type	sicm_arena_alloc_aligned,@function
sicm_arena_alloc_aligned:               # @sicm_arena_alloc_aligned
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rax
	xorl	%edi, %edi
	testb	$1, %sil
	jne	.LBB0_7
# %bb.1:                                # %if.then
	testb	$1, %dl
	jne	.LBB0_5
# %bb.2:                                # %cond.false
	shrq	%rax
	testl	%eax, %eax
	jne	.LBB0_4
# %bb.3:
	movl	$32, %edi
	jmp	.LBB0_6
.LBB0_4:                                # %cond.false1
	rep		bsfl	%eax, %edi
	jmp	.LBB0_6
.LBB0_5:                                # %cond.true
	xorl	%edi, %edi
	cmpq	$1, %rax
	sbbl	%edi, %edi
.LBB0_6:                                # %if.end
	orl	$1, %edi
.LBB0_7:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	je_mallocx@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	sicm_arena_alloc_aligned, .Lfunc_end0-sicm_arena_alloc_aligned
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
