	.text
	.file	""
	.globl	hwloc_bitmap_alloc              # -- Begin function hwloc_bitmap_alloc
	.p2align	4, 0x90
	.type	hwloc_bitmap_alloc,@function
hwloc_bitmap_alloc:                     # @hwloc_bitmap_alloc
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	andb	%sil, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then4
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	free@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	hwloc_bitmap_alloc, .Lfunc_end0-hwloc_bitmap_alloc
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
