	.text
	.file	""
	.globl	xnn_define_unpooling_2d         # -- Begin function xnn_define_unpooling_2d
	.p2align	4, 0x90
	.type	xnn_define_unpooling_2d,@function
xnn_define_unpooling_2d:                # @xnn_define_unpooling_2d
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testl	%esi, %esi
	je	.LBB0_3
# %bb.1:                                # %entry
	cmpl	$1, %esi
	jne	.LBB0_4
# %bb.2:                                # %if.then6
	callq	xnn_node_type_to_string@PLT
.LBB0_3:                                # %if.then2
	movl	%edi, %ecx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	xnn_log_error@PLT
.LBB0_4:                                # %if.end8
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xnn_define_unpooling_2d, .Lfunc_end0-xnn_define_unpooling_2d
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
