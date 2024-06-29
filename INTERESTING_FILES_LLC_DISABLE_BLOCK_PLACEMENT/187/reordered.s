	.text
	.file	""
	.globl	format_message                  # -- Begin function format_message
	.p2align	4, 0x90
	.type	format_message,@function
format_message:                         # @format_message
# %bb.0:                                # %entry
	movzbl	(%rdi), %eax
	testl	%eax, %eax
	je	.LBB0_5
# %bb.1:                                # %entry
	cmpl	$37, %eax
	je	.LBB0_5
# %bb.2:
	movzbl	(%rdi), %eax
	movzbl	%al, %ecx
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	je	.LBB0_5
# %bb.4:                                # %while.cond
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$37, %ecx
	jne	.LBB0_3
.LBB0_5:                                # %common.ret
	retq
.Lfunc_end0:
	.size	format_message, .Lfunc_end0-format_message
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
