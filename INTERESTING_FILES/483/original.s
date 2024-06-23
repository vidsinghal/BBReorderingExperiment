	.text
	.file	""
	.globl	ngx_stream_lua_ffi_errlog_set_filter_level # -- Begin function ngx_stream_lua_ffi_errlog_set_filter_level
	.p2align	4, 0x90
	.type	ngx_stream_lua_ffi_errlog_set_filter_level,@function
ngx_stream_lua_ffi_errlog_set_filter_level: # @ngx_stream_lua_ffi_errlog_set_filter_level
# %bb.0:                                # %entry
	notb	%dl
	testl	%edi, %edi
	setle	%al
	orb	%dl, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then3
	movq	0, %rax
	movq	$0, (%rsi)
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ngx_stream_lua_ffi_errlog_set_filter_level, .Lfunc_end0-ngx_stream_lua_ffi_errlog_set_filter_level
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
