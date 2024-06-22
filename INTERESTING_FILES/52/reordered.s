	.text
	.file	""
	.globl	jacobian_dxdh_contact           # -- Begin function jacobian_dxdh_contact
	.p2align	4, 0x90
	.type	jacobian_dxdh_contact,@function
jacobian_dxdh_contact:                  # @jacobian_dxdh_contact
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	callq	pow@PLT
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	0, %xmm1                        # xmm1 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_5
.LBB0_1:                                # %cdce.end
	movsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_2
.LBB0_4:                                # %cdce.end2
	xorpd	%xmm0, %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %cdce.call
	.cfi_def_cfa_offset 32
	ucomisd	%xmm1, %xmm0
	jae	.LBB0_1
# %bb.6:                                # %call.sqrt1
	callq	sqrt@PLT
	xorpd	%xmm1, %xmm1
	jmp	.LBB0_1
.LBB0_2:                                # %cdce.call1
	ucomisd	%xmm1, %xmm0
	jae	.LBB0_4
# %bb.3:                                # %call.sqrt
	callq	sqrt@PLT
	xorpd	%xmm0, %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	jacobian_dxdh_contact, .Lfunc_end0-jacobian_dxdh_contact
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
