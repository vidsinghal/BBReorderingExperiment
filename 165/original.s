	.text
	.file	""
	.globl	keccak_absorb                   # -- Begin function keccak_absorb
	.p2align	4, 0x90
	.type	keccak_absorb,@function
keccak_absorb:                          # @keccak_absorb
# %bb.0:                                # %entry
	cmpq	$1, %rdi
	ja	.LBB0_3
# %bb.1:                                # %while.body.lr.ph
	jne	.LBB0_4
# %bb.2:                                # %while.body.us
	movl	$0, 0
.LBB0_3:                                # %while.end
	retq
	.p2align	4, 0x90
.LBB0_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 0
	jmp	.LBB0_4
.Lfunc_end0:
	.size	keccak_absorb, .Lfunc_end0-keccak_absorb
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
