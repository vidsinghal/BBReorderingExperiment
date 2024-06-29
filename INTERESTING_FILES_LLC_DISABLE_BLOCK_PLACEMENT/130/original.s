	.text
	.file	""
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function bl1_cinvert2s
.LCPI0_0:
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_1:
	.long	0x3f800000                      # float 1
.LCPI0_2:
	.long	0x80000000                      # float -0
	.text
	.globl	bl1_cinvert2s
	.p2align	4, 0x90
	.type	bl1_cinvert2s,@function
bl1_cinvert2s:                          # @bl1_cinvert2s
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movaps	.LCPI0_0(%rip), %xmm1           # xmm1 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	cmpnless	%xmm1, %xmm2
	movaps	%xmm2, %xmm3
	andps	%xmm0, %xmm3
	andnps	%xmm1, %xmm2
	orps	%xmm3, %xmm2
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm2
	jbe	.LBB0_2
# %bb.1:                                # %cond.true16
	cmpnless	%xmm1, %xmm0
	movss	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	andnps	%xmm1, %xmm0
	jmp	.LBB0_3
.LBB0_2:                                # %cond.true33
	movss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI0_0(%rip), %xmm0
.LBB0_3:                                # %cond.end40
	movl	$0, (%rsi)
	movss	.LCPI0_2(%rip), %xmm1           # xmm1 = [-0.0E+0,0.0E+0,0.0E+0,0.0E+0]
	divss	%xmm0, %xmm1
	movss	%xmm1, 4(%rsi)
	callq	bl1_is_conj@PLT
	movss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI0_0(%rip), %xmm0
	movss	%xmm0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bl1_cinvert2s, .Lfunc_end0-bl1_cinvert2s
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function bl1_zinvert2s
.LCPI1_0:
	.quad	0x8000000000000000              # double -0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.quad	0x8000000000000000              # double -0
	.quad	0x8000000000000000              # double -0
	.text
	.globl	bl1_zinvert2s
	.p2align	4, 0x90
	.type	bl1_zinvert2s,@function
bl1_zinvert2s:                          # @bl1_zinvert2s
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	mulsd	.LCPI1_0(%rip), %xmm0
	movsd	%xmm0, (%rsi)
	movq	$0, 8(%rsi)
	callq	bl1_is_conj@PLT
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	xorps	.LCPI1_1(%rip), %xmm0
	movlps	%xmm0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	bl1_zinvert2s, .Lfunc_end1-bl1_zinvert2s
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
