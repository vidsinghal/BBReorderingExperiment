	.text
	.file	""
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function z_div
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	z_div
	.p2align	4, 0x90
	.type	z_div,@function
z_div:                                  # @z_div
# %bb.0:                                # %entry
	movsd	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %if.else
	xorpd	%xmm3, %xmm3
	xorpd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	jmp	.LBB0_3
.LBB0_2:                                # %if.end10
	xorpd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
.LBB0_3:                                # %if.end37
	xorpd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdi)
	retq
.Lfunc_end0:
	.size	z_div, .Lfunc_end0-z_div
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
