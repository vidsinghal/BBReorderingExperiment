	.text
	.file	""
	.globl	gssapi_sign                     # -- Begin function gssapi_sign
	.p2align	4, 0x90
	.type	gssapi_sign,@function
gssapi_sign:                            # @gssapi_sign
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testb	$1, %dil
	jne	.LBB0_4
# %bb.1:                                # %if.then
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*%rax
	movl	0, %ebx
	jmp	.LBB0_3
.LBB0_2:                                # %if.end19
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*%rbx
.LBB0_3:                                # %common.ret
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.end
	.cfi_def_cfa_offset 16
	testb	$1, %sil
	jne	.LBB0_2
# %bb.5:                                # %cleanup
	movl	0, %ebx
	jmp	.LBB0_3
.Lfunc_end0:
	.size	gssapi_sign, .Lfunc_end0-gssapi_sign
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
