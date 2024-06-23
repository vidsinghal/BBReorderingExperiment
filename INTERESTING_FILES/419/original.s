	.text
	.file	""
	.globl	bt_struct_rw                    # -- Begin function bt_struct_rw
	.p2align	4, 0x90
	.type	bt_struct_rw,@function
bt_struct_rw:                           # @bt_struct_rw
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	testb	$1, %dil
	je	.LBB0_3
# %bb.1:                                # %for.body.preheader
	testb	$1, %sil
	je	.LBB0_4
# %bb.2:                                # %for.body.us
	callq	generic_rw@PLT
	movl	$1, %eax
.LBB0_3:                                # %cleanup3
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
	.p2align	4, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	.cfi_def_cfa_offset 16
	callq	generic_rw@PLT
	jmp	.LBB0_4
.Lfunc_end0:
	.size	bt_struct_rw, .Lfunc_end0-bt_struct_rw
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
