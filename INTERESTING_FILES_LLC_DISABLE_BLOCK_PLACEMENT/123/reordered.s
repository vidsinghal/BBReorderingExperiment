	.text
	.file	""
	.globl	native_svg_text                 # -- Begin function native_svg_text
	.p2align	4, 0x90
	.type	native_svg_text,@function
native_svg_text:                        # @native_svg_text
# %bb.0:                                # %entry
	testl	%esi, %esi
	setne	%al
	xorl	%r8d, %r8d
	testb	%dl, %al
	je	.LBB0_2
# %bb.1:                                # %land.lhs.true23
	cmpl	$0, (%rdi)
	cmoveq	%rdi, %r8
.LBB0_2:                                # %if.end26
	pushq	%rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	callq	fprintf@PLT
	addq	$48, %rsp
	popq	%rax
	retq
.Lfunc_end0:
	.size	native_svg_text, .Lfunc_end0-native_svg_text
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
