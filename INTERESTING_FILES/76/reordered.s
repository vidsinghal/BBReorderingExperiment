	.text
	.file	""
	.globl	ngx_http_scgi_merge_loc_conf    # -- Begin function ngx_http_scgi_merge_loc_conf
	.p2align	4, 0x90
	.type	ngx_http_scgi_merge_loc_conf,@function
ngx_http_scgi_merge_loc_conf:           # @ngx_http_scgi_merge_loc_conf
# %bb.0:                                # %entry
	testb	%dl, %dl
	sets	%al
	testb	%sil, %sil
	setg	%cl
	testb	%al, %cl
	je	.LBB0_2
# %bb.1:
	movb	$0, (%rdi)
.LBB0_2:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ngx_http_scgi_merge_loc_conf, .Lfunc_end0-ngx_http_scgi_merge_loc_conf
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
