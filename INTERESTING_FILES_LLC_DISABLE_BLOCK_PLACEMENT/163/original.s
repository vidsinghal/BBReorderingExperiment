	.text
	.file	""
	.globl	je_ctl_byname                   # -- Begin function je_ctl_byname
	.p2align	4, 0x90
	.type	je_ctl_byname,@function
je_ctl_byname:                          # @je_ctl_byname
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	arenas_i2a_impl@PLT
	cmpq	$0, 24
	jne	.LBB0_2
# %bb.1:                                # %if.then.i.i
	callq	tsd_tsdn@PLT
	movq	$0, 80
	movq	ctl_arenas@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
.LBB0_2:                                # %ctl_init.exit
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	je_ctl_byname, .Lfunc_end0-je_ctl_byname
	.cfi_endproc
                                        # -- End function
	.globl	ctl_init                        # -- Begin function ctl_init
	.p2align	4, 0x90
	.type	ctl_init,@function
ctl_init:                               # @ctl_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	arenas_i2a_impl@PLT
	cmpq	$0, 24
	jne	.LBB1_2
# %bb.1:                                # %if.then.i
	callq	tsd_tsdn@PLT
	movq	$0, 80
	movq	ctl_arenas@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
.LBB1_2:                                # %arenas_i_impl.exit
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	ctl_init, .Lfunc_end1-ctl_init
	.cfi_endproc
                                        # -- End function
	.globl	arenas_i_impl                   # -- Begin function arenas_i_impl
	.p2align	4, 0x90
	.type	arenas_i_impl,@function
arenas_i_impl:                          # @arenas_i_impl
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	arenas_i2a_impl@PLT
	cmpq	$0, 24
	jne	.LBB2_2
# %bb.1:                                # %if.then
	callq	tsd_tsdn@PLT
	movq	$0, 80
	movq	ctl_arenas@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
.LBB2_2:                                # %cleanup18
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	arenas_i_impl, .Lfunc_end2-arenas_i_impl
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
