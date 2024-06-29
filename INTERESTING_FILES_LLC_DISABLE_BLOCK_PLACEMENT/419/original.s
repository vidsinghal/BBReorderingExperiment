	.text
	.file	""
	.globl	bt_struct_rw                    # -- Begin function bt_struct_rw
	.p2align	4, 0x90
	.type	bt_struct_rw,@function
bt_struct_rw:                           # @bt_struct_rw
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testl	%esi, %esi
	movl	(%rdi), %ecx
	jne	.LBB0_5
# %bb.1:                                # %entry.split.us
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB0_8
# %bb.2:                                # %for.body.us.preheader
	movq	%rdi, %rbx
.LBB0_3:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	callq	generic_rw@PLT
	cmpl	$0, (%rbx)
	jne	.LBB0_3
# %bb.4:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %for.cond
	.cfi_def_cfa_offset 16
	testl	%ecx, %ecx
	jne	.LBB0_7
# %bb.6:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_7:                                # %for.body
	.cfi_def_cfa_offset 16
	callq	generic_rw@PLT
	movl	$1, %eax
.LBB0_8:                                # %cleanup3
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bt_struct_rw, .Lfunc_end0-bt_struct_rw
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
