	.text
	.file	""
	.globl	set_trigo                       # -- Begin function set_trigo
	.p2align	4, 0x90
	.type	set_trigo,@function
set_trigo:                              # @set_trigo
# %bb.0:                                # %entry
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_1
.LBB0_3:                                # %cdce.end
	movsd	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_5
# %bb.4:                                # %cdce.call1
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	sqrt@PLT                        # TAILCALL
.LBB0_5:                                # %cdce.end2
	retq
.LBB0_1:                                # %cdce.call
	ucomisd	%xmm1, %xmm0
	jae	.LBB0_3
# %bb.2:                                # %call.sqrt
	pushq	%rbx
	movq	%rdi, %rbx
	callq	sqrt@PLT
	xorpd	%xmm1, %xmm1
	movq	%rbx, %rdi
	popq	%rbx
	jmp	.LBB0_3
.Lfunc_end0:
	.size	set_trigo, .Lfunc_end0-set_trigo
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
