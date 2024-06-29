	.text
	.file	""
	.globl	hypre_LDUSolve                  # -- Begin function hypre_LDUSolve
	.p2align	4, 0x90
	.type	hypre_LDUSolve,@function
hypre_LDUSolve:                         # @hypre_LDUSolve
# %bb.0:                                # %entry
	xorl	%eax, %eax
	xorpd	%xmm1, %xmm1
.LBB0_1:                                # %for.cond28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	testl	%eax, %eax
	movapd	%xmm0, %xmm2
	jg	.LBB0_3
.LBB0_2:                                # %for.end65
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%xmm2, %rax
	jmp	.LBB0_1
.LBB0_3:                                # %for.body56
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addsd	%xmm1, %xmm2
	decl	%eax
	jne	.LBB0_3
	jmp	.LBB0_2
.Lfunc_end0:
	.size	hypre_LDUSolve, .Lfunc_end0-hypre_LDUSolve
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
