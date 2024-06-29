	.text
	.file	""
	.globl	consumeNewline                  # -- Begin function consumeNewline
	.p2align	4, 0x90
	.type	consumeNewline,@function
consumeNewline:                         # @consumeNewline
# %bb.0:                                # %entry
	cmpb	$13, (%rdi)
	jne	.LBB0_2
# %bb.1:                                # %entry.tail
	cmpb	$10, 1(%rdi)
	je	.LBB0_3
.LBB0_2:                                # %if.then
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsp, %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	snprintf@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	xorl	%eax, %eax
	callq	snprintf@PLT
	addq	$16, %rsp
	popq	%rbx
.LBB0_3:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	consumeNewline, .Lfunc_end0-consumeNewline
                                        # -- End function
	.globl	readLong                        # -- Begin function readLong
	.p2align	4, 0x90
	.type	readLong,@function
readLong:                               # @readLong
# %bb.0:                                # %entry
	movq	0, %rax
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	readLong, .Lfunc_end1-readLong
                                        # -- End function
	.type	.str,@object                    # @.str
	.section	.rodata,"a",@progbits
	.globl	.str
.str:
	.asciz	"\r\n"
	.size	.str, 3

	.section	".note.GNU-stack","",@progbits
