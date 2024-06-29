	.text
	.file	""
	.globl	rte_eal_using_phys_addrs        # -- Begin function rte_eal_using_phys_addrs
	.p2align	4, 0x90
	.type	rte_eal_using_phys_addrs,@function
rte_eal_using_phys_addrs:               # @rte_eal_using_phys_addrs
# %bb.0:                                # %entry
	cmpb	$1, phys_addrs_available(%rip)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movl	0, %eax
	movb	$1, phys_addrs_available(%rip)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	rte_eal_using_phys_addrs, .Lfunc_end0-rte_eal_using_phys_addrs
                                        # -- End function
	.globl	rte_eal_memseg_init             # -- Begin function rte_eal_memseg_init
	.p2align	4, 0x90
	.type	rte_eal_memseg_init,@function
rte_eal_memseg_init:                    # @rte_eal_memseg_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$1, %edi
	callq	getrlimit64@PLT
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	movl	0, %eax
	movq	0, %rax
	movq	__errno_location@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	0, %eax
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	rte_eal_memseg_init, .Lfunc_end1-rte_eal_memseg_init
	.cfi_endproc
                                        # -- End function
	.type	phys_addrs_available,@object    # @phys_addrs_available
	.local	phys_addrs_available
	.comm	phys_addrs_available,1,1
	.section	".note.GNU-stack","",@progbits
