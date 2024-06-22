	.text
	.file	""
	.globl	proj_mdist_ini                  # -- Begin function proj_mdist_ini
	.p2align	4, 0x90
	.type	proj_mdist_ini,@function
proj_mdist_ini:                         # @proj_mdist_ini
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_1
# %bb.2:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	malloc@PLT
	movq	malloc@GOTPCREL(%rip), %rax
	movl	$0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	proj_mdist_ini, .Lfunc_end0-proj_mdist_ini
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
