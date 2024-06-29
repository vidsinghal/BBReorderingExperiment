	.text
	.file	""
	.globl	dav_dbm_open_direct             # -- Begin function dav_dbm_open_direct
	.p2align	4, 0x90
	.type	dav_dbm_open_direct,@function
dav_dbm_open_direct:                    # @dav_dbm_open_direct
# %bb.0:                                # %entry
	movq	$0, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	dav_dbm_open_direct, .Lfunc_end0-dav_dbm_open_direct
                                        # -- End function
	.globl	dav_fs_dbm_error                # -- Begin function dav_fs_dbm_error
	.p2align	4, 0x90
	.type	dav_fs_dbm_error,@function
dav_fs_dbm_error:                       # @dav_fs_dbm_error
# %bb.0:                                # %entry
	testl	%edi, %edi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB1_2
# %bb.1:                                # %if.else
	movq	0, %rax
.LBB1_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	dav_fs_dbm_error, .Lfunc_end1-dav_fs_dbm_error
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
