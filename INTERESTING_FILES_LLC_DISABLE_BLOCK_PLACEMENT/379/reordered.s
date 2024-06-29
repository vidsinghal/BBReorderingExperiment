	.text
	.file	""
	.globl	__pyx_pymod_create              # -- Begin function __pyx_pymod_create
	.p2align	4, 0x90
	.type	__pyx_pymod_create,@function
__pyx_pymod_create:                     # @__pyx_pymod_create
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	PyInterpreterState_GetID@PLT
	movq	__Pyx_check_single_interpreter.main_interpreter_id@GOTPCREL(%rip), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB0_2
# %bb.1:                                # %if.then.i
	movq	%rax, (%rcx)
.LBB0_2:                                # %__Pyx_check_single_interpreter.exit
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	__pyx_pymod_create, .Lfunc_end0-__pyx_pymod_create
	.cfi_endproc
                                        # -- End function
	.globl	__Pyx_check_single_interpreter  # -- Begin function __Pyx_check_single_interpreter
	.p2align	4, 0x90
	.type	__Pyx_check_single_interpreter,@function
__Pyx_check_single_interpreter:         # @__Pyx_check_single_interpreter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	PyInterpreterState_GetID@PLT
	movq	%rax, %rcx
	movq	__Pyx_check_single_interpreter.main_interpreter_id@GOTPCREL(%rip), %rdx
	movl	$1, %eax
	cmpq	$0, (%rdx)
	jne	.LBB1_2
# %bb.1:                                # %if.then
	movq	%rcx, (%rdx)
	xorl	%eax, %eax
.LBB1_2:                                # %cleanup
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	__Pyx_check_single_interpreter, .Lfunc_end1-__Pyx_check_single_interpreter
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
