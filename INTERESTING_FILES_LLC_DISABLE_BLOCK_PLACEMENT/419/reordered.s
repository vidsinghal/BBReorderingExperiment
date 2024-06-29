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
	je	.LBB0_3
# %bb.1:                                # %for.cond
	testl	%ecx, %ecx
	je	.LBB0_6
# %bb.2:                                # %for.body
	callq	generic_rw@PLT
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:                                # %entry.split.us
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB0_7
# %bb.4:                                # %for.body.us.preheader
	movq	%rdi, %rbx
.LBB0_5:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	callq	generic_rw@PLT
	cmpl	$0, (%rbx)
	jne	.LBB0_5
.LBB0_6:
	xorl	%eax, %eax
.LBB0_7:                                # %cleanup3
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bt_struct_rw, .Lfunc_end0-bt_struct_rw
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
