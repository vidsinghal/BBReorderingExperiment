	.text
	.file	""
	.globl	shake128_absorb                 # -- Begin function shake128_absorb
	.p2align	4, 0x90
	.type	shake128_absorb,@function
shake128_absorb:                        # @shake128_absorb
# %bb.0:                                # %entry
	movl	$168, %eax
	jmp	.LBB0_1
.LBB0_1:                                # %for.body7.us.i
                                        # =>This Inner Loop Header: Depth=1
	movq	0, %rcx
	decq	%rax
	jne	.LBB0_1
# %bb.2:                                # %while.cond.us.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$168, %eax
	jmp	.LBB0_1
.Lfunc_end0:
	.size	shake128_absorb, .Lfunc_end0-shake128_absorb
                                        # -- End function
	.globl	keccak_absorb                   # -- Begin function keccak_absorb
	.p2align	4, 0x90
	.type	keccak_absorb,@function
keccak_absorb:                          # @keccak_absorb
# %bb.0:                                # %entry
	testl	%edi, %edi
	je	.LBB1_4
# %bb.1:
	movl	%edi, %eax
.LBB1_2:                                # %for.body7.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movq	%rax, %rcx
.LBB1_3:                                # %for.body7.us
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	0, %rdx
	decq	%rcx
	jne	.LBB1_3
	jmp	.LBB1_2
.LBB1_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB1_4
.Lfunc_end1:
	.size	keccak_absorb, .Lfunc_end1-keccak_absorb
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
