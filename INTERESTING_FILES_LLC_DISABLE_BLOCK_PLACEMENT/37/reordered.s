	.text
	.file	""
	.globl	quo_internal_hwloc_get_cpubind  # -- Begin function quo_internal_hwloc_get_cpubind
	.p2align	4, 0x90
	.type	quo_internal_hwloc_get_cpubind,@function
quo_internal_hwloc_get_cpubind:         # @quo_internal_hwloc_get_cpubind
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %if.then3
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	quo_internal_hwloc_get_cpubind, .Lfunc_end0-quo_internal_hwloc_get_cpubind
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
