	.text
	.file	""
	.globl	libxsmm_dnn_create_fusedbatchnorm # -- Begin function libxsmm_dnn_create_fusedbatchnorm
	.p2align	4, 0x90
	.type	libxsmm_dnn_create_fusedbatchnorm,@function
libxsmm_dnn_create_fusedbatchnorm:      # @libxsmm_dnn_create_fusedbatchnorm
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.else
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	malloc@PLT
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 0
	movaps	%xmm0, 16
	movaps	%xmm0, 32
	movaps	%xmm0, 48
	movaps	%xmm0, 64
	movaps	%xmm0, 80
	movaps	%xmm0, 96
	movaps	%xmm0, 112
	movaps	%xmm0, 128
	movaps	%xmm0, 144
	movaps	%xmm0, 160
	movaps	%xmm0, 176
	movaps	%xmm0, 192
	movaps	%xmm0, 208
	movb	$0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	libxsmm_dnn_create_fusedbatchnorm, .Lfunc_end0-libxsmm_dnn_create_fusedbatchnorm
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
