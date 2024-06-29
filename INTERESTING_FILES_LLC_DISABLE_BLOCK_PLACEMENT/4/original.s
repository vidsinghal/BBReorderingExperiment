	.text
	.file	""
	.globl	script_wrapper_visitor_comment_node # -- Begin function script_wrapper_visitor_comment_node
	.p2align	4, 0x90
	.type	script_wrapper_visitor_comment_node,@function
script_wrapper_visitor_comment_node:    # @script_wrapper_visitor_comment_node
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_3
# %bb.1:                                # %entry
	testb	$1, %sil
	je	.LBB0_3
# %bb.2:                                # %if.end
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %if.then
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	callq	fprintf@PLT
.Lfunc_end0:
	.size	script_wrapper_visitor_comment_node, .Lfunc_end0-script_wrapper_visitor_comment_node
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
