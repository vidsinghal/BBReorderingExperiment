	.text
	.file	""
	.globl	__pyx_pymod_create              # -- Begin function __pyx_pymod_create
	.p2align	4, 0x90
	.type	__pyx_pymod_create,@function
__pyx_pymod_create:                     # @__pyx_pymod_create
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_2:                                # %if.end10
	movq	0, %rax
	testb	$1, %sil
	je	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_4:                                # %if.end10
	movq	PyModule_NewObject@GOTPCREL(%rip), %rax
.LBB0_5:                                # %bad
	movl	$0, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	__pyx_pymod_create, .Lfunc_end0-__pyx_pymod_create
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
