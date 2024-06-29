	.text
	.file	""
	.globl	__pyx_pymod_create              # -- Begin function __pyx_pymod_create
	.p2align	4, 0x90
	.type	__pyx_pymod_create,@function
__pyx_pymod_create:                     # @__pyx_pymod_create
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	callq	PyObject_GetAttrString@PLT
	movq	PyObject_GetAttrString@GOTPCREL(%rip), %r14
	movl	$0, (%rbx)
	callq	PyObject_GetAttrString@PLT
	orb	$1, (%r14)
	callq	PyObject_GetAttrString@PLT
	orb	$1, (%r14)
	callq	PyObject_GetAttrString@PLT
	orb	$1, (%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	__pyx_pymod_create, .Lfunc_end0-__pyx_pymod_create
	.cfi_endproc
                                        # -- End function
	.globl	Py_DECREF                       # -- Begin function Py_DECREF
	.p2align	4, 0x90
	.type	Py_DECREF,@function
Py_DECREF:                              # @Py_DECREF
# %bb.0:                                # %entry
	orb	$1, (%rdi)
	retq
.Lfunc_end1:
	.size	Py_DECREF, .Lfunc_end1-Py_DECREF
                                        # -- End function
	.globl	__Pyx_copy_spec_to_module       # -- Begin function __Pyx_copy_spec_to_module
	.p2align	4, 0x90
	.type	__Pyx_copy_spec_to_module,@function
__Pyx_copy_spec_to_module:              # @__Pyx_copy_spec_to_module
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	PyObject_GetAttrString@PLT
	movq	PyObject_GetAttrString@GOTPCREL(%rip), %rax
	orb	$1, (%rax)
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	__Pyx_copy_spec_to_module, .Lfunc_end2-__Pyx_copy_spec_to_module
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
