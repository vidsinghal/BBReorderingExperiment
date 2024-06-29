	.text
	.file	""
	.globl	jacobian_dxdh_no_contact        # -- Begin function jacobian_dxdh_no_contact
	.p2align	4, 0x90
	.type	jacobian_dxdh_no_contact,@function
jacobian_dxdh_no_contact:               # @jacobian_dxdh_no_contact
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_2
# %bb.1:                                # %cdce.end
	callq	pow@PLT
	movsd	0, %xmm0                        # xmm0 = mem[0],zero
	movsd	0, %xmm0                        # xmm0 = mem[0],zero
	jmp	.LBB0_6
.LBB0_2:                                # %cdce.call1
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	ucomisd	%xmm1, %xmm0
	jae	.LBB0_4
# %bb.3:                                # %call.sqrt
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt@PLT
.LBB0_4:                                # %cdce.call1.split
	callq	pow@PLT
	movsd	0, %xmm0                        # xmm0 = mem[0],zero
	movsd	0, %xmm0                        # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jae	.LBB0_6
# %bb.5:                                # %call.sqrt1
	callq	sqrt@PLT
.LBB0_6:                                # %cdce.end2
	xorpd	%xmm0, %xmm0
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	jacobian_dxdh_no_contact, .Lfunc_end0-jacobian_dxdh_no_contact
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
