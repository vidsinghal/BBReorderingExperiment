	.text
	.file	""
	.globl	aws_event_loop_new_default_with_options # -- Begin function aws_event_loop_new_default_with_options
	.p2align	4, 0x90
	.type	aws_event_loop_new_default_with_options,@function
aws_event_loop_new_default_with_options: # @aws_event_loop_new_default_with_options
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	aws_mem_calloc@PLT
	movl	$0, 0
	movq	$0, 336(%rax)
	movq	$0, 320(%rax)
	movq	$0, 312(%rax)
	movq	32, %rcx
	movq	%rcx, 32(%rax)
	movq	24, %rcx
	movq	%rcx, 24(%rax)
	movq	16, %rcx
	movq	%rcx, 16(%rax)
	movq	0, %rcx
	movq	8, %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	aws_event_loop_new_default_with_options, .Lfunc_end0-aws_event_loop_new_default_with_options
	.cfi_endproc
                                        # -- End function
	.globl	aws_linked_list_init            # -- Begin function aws_linked_list_init
	.p2align	4, 0x90
	.type	aws_linked_list_init,@function
aws_linked_list_init:                   # @aws_linked_list_init
# %bb.0:                                # %entry
	movq	$0, 24(%rdi)
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	retq
.Lfunc_end1:
	.size	aws_linked_list_init, .Lfunc_end1-aws_linked_list_init
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
