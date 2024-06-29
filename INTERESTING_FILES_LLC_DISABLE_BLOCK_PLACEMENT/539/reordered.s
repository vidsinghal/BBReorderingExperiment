	.text
	.file	""
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function cs_di_ltsolve
.LCPI0_0:
	.quad	0x8000000000000000              # double -0
	.quad	0x8000000000000000              # double -0
	.text
	.globl	cs_di_ltsolve
	.p2align	4, 0x90
	.type	cs_di_ltsolve,@function
cs_di_ltsolve:                          # @cs_di_ltsolve
# %bb.0:                                # %entry
	testb	$1, %dl
	jne	.LBB0_4
# %bb.1:                                # %land.lhs.true
	cmpl	$0, (%rdi)
	jne	.LBB0_4
# %bb.2:                                # %lor.lhs.false
	movslq	(%rsi), %rax
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [-0.0E+0,-0.0E+0]
.LBB0_3:                                # %for.cond6
                                        # =>This Inner Loop Header: Depth=1
	movsd	4(%rcx,%rax,4), %xmm1           # xmm1 = mem[0],zero
	xorps	%xmm0, %xmm1
	movlps	%xmm1, 8(%rsi,%rax,8)
	jmp	.LBB0_3
.LBB0_4:                                # %if.then
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cs_di_ltsolve, .Lfunc_end0-cs_di_ltsolve
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
