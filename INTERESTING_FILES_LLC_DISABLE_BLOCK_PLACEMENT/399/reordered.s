	.text
	.file	""
	.globl	hypre_BoomerAMGCoarsenCGCb      # -- Begin function hypre_BoomerAMGCoarsenCGCb
	.p2align	4, 0x90
	.type	hypre_BoomerAMGCoarsenCGCb,@function
hypre_BoomerAMGCoarsenCGCb:             # @hypre_BoomerAMGCoarsenCGCb
# %bb.0:                                # %entry
	testl	%edx, %edx
	jg	.LBB0_5
.LBB0_1:                                # %for.end60
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %vector.ph
	movl	%edx, %eax
	andl	$2147483640, %eax               # imm = 0x7FFFFFF8
	movl	(%rsi), %ecx
	orl	$1, %ecx
	movl	%ecx, (%rdi)
	movl	%eax, %ecx
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addl	$-8, %ecx
	jne	.LBB0_3
# %bb.4:                                # %middle.block
	cmpl	%edx, %eax
	je	.LBB0_1
	jmp	.LBB0_7
.LBB0_5:                                # %for.body51.preheader
	xorl	%eax, %eax
	cmpl	$8, %edx
	jb	.LBB0_7
# %bb.6:                                # %vector.memcheck
	leaq	4(%rdi), %rcx
	leaq	4(%rsi), %r8
	cmpq	%rdi, %r8
	setbe	%r8b
	cmpq	%rsi, %rcx
	setbe	%cl
	orb	%r8b, %cl
	jne	.LBB0_2
.LBB0_7:                                # %for.body51.preheader6
	subl	%eax, %edx
.LBB0_8:                                # %for.body51
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %eax
	orl	$1, %eax
	movl	%eax, (%rdi)
	decl	%edx
	jne	.LBB0_8
	jmp	.LBB0_1
.Lfunc_end0:
	.size	hypre_BoomerAMGCoarsenCGCb, .Lfunc_end0-hypre_BoomerAMGCoarsenCGCb
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
