	.text
	.file	""
	.globl	dlarzb_                         # -- Begin function dlarzb_
	.p2align	4, 0x90
	.type	dlarzb_,@function
dlarzb_:                                # @dlarzb_
	.cfi_startproc
# %bb.0:                                # %entry
	orl	%edx, %esi
	testb	$1, %sil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	lsame_@PLT
	movl	$0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	dlarzb_, .Lfunc_end0-dlarzb_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
