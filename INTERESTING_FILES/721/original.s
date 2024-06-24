	.text
	.file	""
	.globl	Trpath_solve_from_diagonals     # -- Begin function Trpath_solve_from_diagonals
	.p2align	4, 0x90
	.type	Trpath_solve_from_diagonals,@function
Trpath_solve_from_diagonals:            # @Trpath_solve_from_diagonals
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%r8d, %ebx
	xorb	$1, %bl
	callq	Spliceends_trim_qend_nosplice@PLT
	cmpl	$0, 16(%rsp)
	setns	%al
	testb	%bl, %al
	je	.LBB0_2
# %bb.1:                                # %if.else26
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	Trpath_solve_from_diagonals, .Lfunc_end0-Trpath_solve_from_diagonals
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
