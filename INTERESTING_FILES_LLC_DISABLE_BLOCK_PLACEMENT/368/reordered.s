	.text
	.file	""
	.globl	__Pyx_copy_spec_to_module       # -- Begin function __Pyx_copy_spec_to_module
	.p2align	4, 0x90
	.type	__Pyx_copy_spec_to_module,@function
__Pyx_copy_spec_to_module:              # @__Pyx_copy_spec_to_module
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edi, %edi
	sete	%al
	testq	%rsi, %rsi
	setne	%cl
	testb	%cl, %al
	je	.LBB0_2
# %bb.1:                                # %if.then5
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	PyDict_SetItemString@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	__Pyx_copy_spec_to_module, .Lfunc_end0-__Pyx_copy_spec_to_module
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
