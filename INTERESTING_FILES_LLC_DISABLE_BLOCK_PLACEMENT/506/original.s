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
	movsd	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	testb	$1, %sil
	jne	.LBB0_3
# %bb.1:                                # %if.end10
	xorpd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
.LBB0_2:                                # %if.end37
	xorpd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi)
	retq
.LBB0_3:                                # %if.else
	xorpd	%xmm2, %xmm2
	xorpd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_0(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	jmp	.LBB0_2
.Lfunc_end0:
	.size	z_div, .Lfunc_end0-z_div
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
