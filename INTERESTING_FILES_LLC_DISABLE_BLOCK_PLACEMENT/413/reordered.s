	.text
	.file	""
	.globl	ngx_http_charset_postconfiguration # -- Begin function ngx_http_charset_postconfiguration
	.p2align	4, 0x90
	.type	ngx_http_charset_postconfiguration,@function
ngx_http_charset_postconfiguration:     # @ngx_http_charset_postconfiguration
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testb	$1, %dl
	je	.LBB0_5
# %bb.1:                                # %for.end93
	movq	$0, (%rbx)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
.LBB0_3:                                # %common.ret
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.end58
	.cfi_def_cfa_offset 32
	movq	%rbx, (%r14)
	jmp	.LBB0_2
.LBB0_5:                                # %for.body47
	movq	%rsi, %r14
	callq	ngx_pcalloc@PLT
	testq	%rbx, %rbx
	jne	.LBB0_4
# %bb.6:
	movl	$1, %eax
	jmp	.LBB0_3
.Lfunc_end0:
	.size	ngx_http_charset_postconfiguration, .Lfunc_end0-ngx_http_charset_postconfiguration
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
