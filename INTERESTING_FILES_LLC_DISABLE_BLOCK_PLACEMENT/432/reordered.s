	.text
	.file	""
	.globl	grib_nearest_new                # -- Begin function grib_nearest_new
	.p2align	4, 0x90
	.type	grib_nearest_new,@function
grib_nearest_new:                       # @grib_nearest_new
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movl	%edi, %ebx
	callq	grib_find_accessor@PLT
	testb	$1, %bpl
	je	.LBB0_3
.LBB0_1:
	xorl	%eax, %eax
.LBB0_2:                                # %cleanup
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:                                # %if.end
	.cfi_def_cfa_offset 32
	movq	0, %rax
	testb	$1, %bl
	jne	.LBB0_1
# %bb.4:                                # %if.end
	movq	grib_nearest_factory@GOTPCREL(%rip), %rax
	jmp	.LBB0_2
.Lfunc_end0:
	.size	grib_nearest_new, .Lfunc_end0-grib_nearest_new
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
