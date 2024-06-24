	.text
	.file	""
	.globl	ngx_http_upstream_init_zone     # -- Begin function ngx_http_upstream_init_zone
	.p2align	4, 0x90
	.type	ngx_http_upstream_init_zone,@function
ngx_http_upstream_init_zone:            # @ngx_http_upstream_init_zone
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	cmpq	$0, (%rax)
	je	.LBB0_1
	.p2align	4, 0x90
.LBB0_4:                                # %for.cond.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_4
.LBB0_1:                                # %for.cond.outer.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	jne	.LBB0_2
# %bb.3:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	$0, (%rax)
	movq	(%rdi), %rax
	movq	(%rax), %rcx
	jmp	.LBB0_2
.Lfunc_end0:
	.size	ngx_http_upstream_init_zone, .Lfunc_end0-ngx_http_upstream_init_zone
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
