	.text
	.file	""
	.globl	ngx_http_lua_body_filter_file   # -- Begin function ngx_http_lua_body_filter_file
	.p2align	4, 0x90
	.type	ngx_http_lua_body_filter_file,@function
ngx_http_lua_body_filter_file:          # @ngx_http_lua_body_filter_file
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %if.end
	movq	0, %rax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ngx_http_lua_body_filter_file, .Lfunc_end0-ngx_http_lua_body_filter_file
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
