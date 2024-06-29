	.text
	.file	""
	.globl	Matchpool_free_memory           # -- Begin function Matchpool_free_memory
	.p2align	4, 0x90
	.type	Matchpool_free_memory,@function
Matchpool_free_memory:                  # @Matchpool_free_memory
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %sil
	jne	.LBB0_2
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	callq	List_next@PLT
	jmp	.LBB0_1
.LBB0_2:                                # %for.end
	testb	$1, %dl
	je	.LBB0_4
# %bb.3:                                # %for.end9
	movl	$0, (%rdi)
.LBB0_4:                                # %common.ret
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	Matchpool_free_memory, .Lfunc_end0-Matchpool_free_memory
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
