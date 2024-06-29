	.text
	.file	""
	.globl	init_class                      # -- Begin function init_class
	.p2align	4, 0x90
	.type	init_class,@function
init_class:                             # @init_class
# %bb.0:                                # %entry
	movq	$0, (%rsi)
	movq	(%rdi), %rax
	movq	$0, 72(%rdi)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, 80(%rdi)
	movq	$0, 304(%rdi)
	movq	(%rsi), %rax
	movq	(%rax), %rax
	movq	%rax, 312(%rdi)
	retq
.Lfunc_end0:
	.size	init_class, .Lfunc_end0-init_class
                                        # -- End function
	.globl	unpack_long                     # -- Begin function unpack_long
	.p2align	4, 0x90
	.type	unpack_long,@function
unpack_long:                            # @unpack_long
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	grib_find_accessor@PLT
	movq	$0, (%r15)
	movq	$0, (%r14)
	testb	$1, %bl
	jne	.LBB1_2
# %bb.1:                                # %if.end
	movq	0, %rax
.LBB1_2:                                # %common.ret
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	unpack_long, .Lfunc_end1-unpack_long
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
