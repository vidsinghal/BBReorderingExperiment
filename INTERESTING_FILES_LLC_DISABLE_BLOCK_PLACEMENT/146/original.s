	.text
	.file	""
	.globl	zla_lin_berr_                   # -- Begin function zla_lin_berr_
	.p2align	4, 0x90
	.type	zla_lin_berr_,@function
zla_lin_berr_:                          # @zla_lin_berr_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	(%rdi), %eax
	testl	%eax, %eax
	js	.LBB0_6
# %bb.1:
	movq	%rdi, %rbx
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	js	.LBB0_2
# %bb.3:                                # %for.body10.lr.ph
                                        #   in Loop: Header=BB0_2 Depth=1
	jne	.LBB0_5
# %bb.4:                                # %for.body10.lr.ph.split.us
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	d_imag@PLT
	movl	(%rbx), %eax
	jmp	.LBB0_2
.LBB0_5:                                # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	callq	d_imag@PLT
	jmp	.LBB0_5
.LBB0_6:                                # %for.cond.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_6
.Lfunc_end0:
	.size	zla_lin_berr_, .Lfunc_end0-zla_lin_berr_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
