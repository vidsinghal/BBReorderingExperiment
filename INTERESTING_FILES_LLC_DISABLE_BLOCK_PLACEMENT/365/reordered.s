	.text
	.file	""
	.globl	f77_constant                    # -- Begin function f77_constant
	.p2align	4, 0x90
	.type	f77_constant,@function
f77_constant:                           # @f77_constant
# %bb.0:                                # %entry
	pushq	%rbx
	movl	%edx, %ebx
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movb	$1, %al
	callq	sprintf@PLT
	movl	%ebx, %eax
	jmp	.LBB0_2
.LBB0_1:                                # %if.then36
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	je	.LBB0_1
# %bb.3:                                # %while.cond
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%al, %eax
	cmpl	$101, %eax
	movl	%ebx, %eax
	je	.LBB0_1
	jmp	.LBB0_2
.Lfunc_end0:
	.size	f77_constant, .Lfunc_end0-f77_constant
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
