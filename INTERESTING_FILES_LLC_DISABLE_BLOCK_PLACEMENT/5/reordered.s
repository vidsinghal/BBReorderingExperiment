	.text
	.file	""
	.globl	ngx_http_lua_ssl_sess_store_by_lua # -- Begin function ngx_http_lua_ssl_sess_store_by_lua
	.p2align	4, 0x90
	.type	ngx_http_lua_ssl_sess_store_by_lua,@function
ngx_http_lua_ssl_sess_store_by_lua:     # @ngx_http_lua_ssl_sess_store_by_lua
# %bb.0:                                # %entry
	andl	%esi, %edi
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end2
	movq	0, %rax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ngx_http_lua_ssl_sess_store_by_lua, .Lfunc_end0-ngx_http_lua_ssl_sess_store_by_lua
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
