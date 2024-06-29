	.text
	.file	""
	.globl	exr_print_context_info          # -- Begin function exr_print_context_info
	.p2align	4, 0x90
	.type	exr_print_context_info,@function
exr_print_context_info:                 # @exr_print_context_info
# %bb.0:                                # %entry
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %if.end23.thread
	movq	(%r14), %r14
	jmp	.LBB0_3
.LBB0_2:                                # %if.end23
	movl	%edx, %ebx
	movq	$0, (%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
	movq	(%r14), %r14
	testb	$1, %bl
	je	.LBB0_4
.LBB0_3:                                # %if.then33
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_4:                                # %if.end40
	movl	(%r14), %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_5:                                # %for.cond80
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_5
.Lfunc_end0:
	.size	exr_print_context_info, .Lfunc_end0-exr_print_context_info
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
