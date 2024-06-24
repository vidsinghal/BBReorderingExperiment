	.text
	.file	""
	.globl	basiclu_initialize              # -- Begin function basiclu_initialize
	.p2align	4, 0x90
	.type	basiclu_initialize,@function
basiclu_initialize:                     # @basiclu_initialize
	.cfi_startproc
# %bb.0:                                # %entry
	notb	%sil
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	lu_initialize@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %return
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	basiclu_initialize, .Lfunc_end0-basiclu_initialize
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
