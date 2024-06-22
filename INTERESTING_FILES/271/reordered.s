	.text
	.file	""
	.globl	set_trigo                       # -- Begin function set_trigo
	.p2align	4, 0x90
	.type	set_trigo,@function
set_trigo:                              # @set_trigo
# %bb.0:                                # %entry
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_4
.LBB0_1:                                # %cdce.end
	movsd	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_2
.LBB0_6:                                # %cdce.end2
	retq
.LBB0_4:                                # %cdce.call
	ucomisd	%xmm1, %xmm0
	jae	.LBB0_1
# %bb.5:                                # %call.sqrt1
	pushq	%rbx
	movq	%rdi, %rbx
	callq	sqrt@PLT
	xorpd	%xmm1, %xmm1
	movq	%rbx, %rdi
	popq	%rbx
	jmp	.LBB0_1
.LBB0_2:                                # %cdce.call1
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jae	.LBB0_6
# %bb.3:                                # %call.sqrt
	jmp	sqrt@PLT                        # TAILCALL
.Lfunc_end0:
	.size	set_trigo, .Lfunc_end0-set_trigo
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
