	.text
	.file	""
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function proj_inv_mdist
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	proj_inv_mdist
	.p2align	4, 0x90
	.type	proj_inv_mdist,@function
proj_inv_mdist:                         # @proj_inv_mdist
# %bb.0:                                # %entry
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	pxor	%xmm0, %xmm0
	movabsq	$9223372036854775807, %rbx      # imm = 0x7FFFFFFFFFFFFFFF
	movabsq	$9218868437227405312, %r14      # imm = 0x7FF0000000000000
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_3:                                # %cdce.end
                                        #   in Loop: Header=BB0_1 Depth=1
	addsd	%xmm1, %xmm0
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%xmm0, %rax
	andq	%rbx, %rax
	cmpq	%r14, %rax
	jne	.LBB0_3
# %bb.2:                                # %cdce.call
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%xmm0, (%rsp)                   # 8-byte Folded Spill
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	movq	(%rsp), %xmm0                   # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_3
.Lfunc_end0:
	.size	proj_inv_mdist, .Lfunc_end0-proj_inv_mdist
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
