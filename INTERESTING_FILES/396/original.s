	.text
	.file	""
	.globl	gssapi_destroy_signverify_ctx   # -- Begin function gssapi_destroy_signverify_ctx
	.p2align	4, 0x90
	.type	gssapi_destroy_signverify_ctx,@function
gssapi_destroy_signverify_ctx:          # @gssapi_destroy_signverify_ctx
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then2
	movl	$0, 0
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	gssapi_destroy_signverify_ctx, .Lfunc_end0-gssapi_destroy_signverify_ctx
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
