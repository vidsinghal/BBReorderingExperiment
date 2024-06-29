	.text
	.file	""
	.globl	bli_packm_scalar                # -- Begin function bli_packm_scalar
	.p2align	4, 0x90
	.type	bli_packm_scalar,@function
bli_packm_scalar:                       # @bli_packm_scalar
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	callq	bli_obj_pack_schema@PLT
	callq	bli_obj_scalar_has_nonzero_imag@PLT
	testl	%ebx, %ebx
	setne	%cl
	testb	%cl, %al
	jne	.LBB0_2
# %bb.1:                                # %if.else
	movq	0, %rax
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bli_packm_scalar, .Lfunc_end0-bli_packm_scalar
	.cfi_endproc
                                        # -- End function
	.globl	bli_obj_dt                      # -- Begin function bli_obj_dt
	.p2align	4, 0x90
	.type	bli_obj_dt,@function
bli_obj_dt:                             # @bli_obj_dt
# %bb.0:                                # %entry
	movl	$1, %eax
	retq
.Lfunc_end1:
	.size	bli_obj_dt, .Lfunc_end1-bli_obj_dt
                                        # -- End function
	.globl	bli_is_nat_packed               # -- Begin function bli_is_nat_packed
	.p2align	4, 0x90
	.type	bli_is_nat_packed,@function
bli_is_nat_packed:                      # @bli_is_nat_packed
# %bb.0:                                # %entry
	testl	%edi, %edi
	sete	%al
	retq
.Lfunc_end2:
	.size	bli_is_nat_packed, .Lfunc_end2-bli_is_nat_packed
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
