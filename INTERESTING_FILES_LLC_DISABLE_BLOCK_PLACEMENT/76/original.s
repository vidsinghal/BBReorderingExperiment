	.text
	.file	""
	.globl	ngx_http_scgi_create_loc_conf   # -- Begin function ngx_http_scgi_create_loc_conf
	.p2align	4, 0x90
	.type	ngx_http_scgi_create_loc_conf,@function
ngx_http_scgi_create_loc_conf:          # @ngx_http_scgi_create_loc_conf
# %bb.0:                                # %entry
	movq	0, %rax
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movq	$-1, 192(%rax)
	movq	$-1, 8(%rax)
	movq	$-1, 16(%rax)
	movq	$-1, 160(%rax)
	movq	$-1, 168(%rax)
	movq	$-1, 264(%rax)
	movq	$-1, 272(%rax)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ngx_http_scgi_create_loc_conf, .Lfunc_end0-ngx_http_scgi_create_loc_conf
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
