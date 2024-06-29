	.text
	.file	""
	.globl	zlanhe_                         # -- Begin function zlanhe_
	.p2align	4, 0x90
	.type	zlanhe_,@function
zlanhe_:                                # @zlanhe_
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	testl	%edx, %edx
	jns	.LBB0_3
# %bb.1:
	vxorps	%xmm0, %xmm0, %xmm0
.LBB0_2:                                # %if.end280
	retq
.LBB0_3:                                # %for.end.preheader
	leal	1(%rdx), %eax
	cmpl	$16, %edx
	jb	.LBB0_5
# %bb.4:                                # %vector.memcheck
	leaq	8(%rdi), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	leaq	-8(%rsi,%rdx), %rdx
	cmpq	%rdi, %rdx
	setbe	%dl
	cmpq	%rsi, %rcx
	setbe	%cl
	orb	%dl, %cl
	jne	.LBB0_8
.LBB0_5:
	xorl	%ecx, %ecx
.LBB0_6:                                # %for.end.preheader5
	subq	%rcx, %rax
	shlq	$4, %rcx
	addq	%rcx, %rsi
.LBB0_7:                                # %for.end
                                        # =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi), %xmm0                   # xmm0 = mem[0],zero
	movq	$0, (%rdi)
	addq	$16, %rsi
	decq	%rax
	jne	.LBB0_7
	jmp	.LBB0_2
.LBB0_8:                                # %vector.ph
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$16, %edx
	cmovneq	%rcx, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movq	$0, (%rdi)
	movq	%rcx, %rdx
.LBB0_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addq	$-16, %rdx
	jne	.LBB0_9
	jmp	.LBB0_6
.Lfunc_end0:
	.size	zlanhe_, .Lfunc_end0-zlanhe_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
