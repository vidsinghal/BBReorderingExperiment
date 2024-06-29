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
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$101, %al
	je	.LBB0_3
# %bb.2:                                # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	movzbl	%al, %eax
	testl	%eax, %eax
	movl	%ebx, %eax
	jne	.LBB0_1
.LBB0_3:                                # %if.then36
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_1
.Lfunc_end0:
	.size	f77_constant, .Lfunc_end0-f77_constant
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
