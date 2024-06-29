	.text
	.file	""
	.globl	ngx_stream_lua_ffi_raw_log      # -- Begin function ngx_stream_lua_ffi_raw_log
	.p2align	4, 0x90
	.type	ngx_stream_lua_ffi_raw_log,@function
ngx_stream_lua_ffi_raw_log:             # @ngx_stream_lua_ffi_raw_log
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.then14
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %r8
	movq	%rdi, %r9
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	ngx_log_error_core@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ngx_stream_lua_ffi_raw_log, .Lfunc_end0-ngx_stream_lua_ffi_raw_log
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
