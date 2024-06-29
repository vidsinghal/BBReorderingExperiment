	.text
	.file	""
	.globl	nco_clm_nfo_get                 # -- Begin function nco_clm_nfo_get
	.p2align	4, 0x90
	.type	nco_clm_nfo_get,@function
nco_clm_nfo_get:                        # @nco_clm_nfo_get
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.else9
	testb	$1, %sil
	je	.LBB0_4
.LBB0_2:                                # %if.then34
	callq	strdup@PLT
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.else36
	.cfi_def_cfa_offset 16
	movq	0, %rax
	jmp	.LBB0_3
.Lfunc_end0:
	.size	nco_clm_nfo_get, .Lfunc_end0-nco_clm_nfo_get
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
