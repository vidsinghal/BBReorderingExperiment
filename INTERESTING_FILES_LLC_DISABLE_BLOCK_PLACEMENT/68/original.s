	.text
	.file	""
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function xnn_f32_vabs_ukernel__sse_x4
.LCPI0_0:
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.text
	.globl	xnn_f32_vabs_ukernel__sse_x4
	.p2align	4, 0x90
	.type	xnn_f32_vabs_ukernel__sse_x4,@function
xnn_f32_vabs_ukernel__sse_x4:           # @xnn_f32_vabs_ukernel__sse_x4
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB0_5
# %bb.1:                                # %for.body.lr.ph
	testq	%rdx, %rdx
	je	.LBB0_4
# %bb.2:
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rsi), %xmm1
	xorps	%xmm0, %xmm1
	movaps	%xmm1, (%rcx)
	jmp	.LBB0_3
.LBB0_4:                                # %for.body.us
	movaps	(%rsi), %xmm0
	xorps	.LCPI0_0(%rip), %xmm0
	movaps	%xmm0, (%rcx)
.LBB0_5:                                # %for.end
	retq
.Lfunc_end0:
	.size	xnn_f32_vabs_ukernel__sse_x4, .Lfunc_end0-xnn_f32_vabs_ukernel__sse_x4
                                        # -- End function
	.globl	_mm_load_ps                     # -- Begin function _mm_load_ps
	.p2align	4, 0x90
	.type	_mm_load_ps,@function
_mm_load_ps:                            # @_mm_load_ps
# %bb.0:                                # %entry
	xorps	%xmm0, %xmm0
	retq
.Lfunc_end1:
	.size	_mm_load_ps, .Lfunc_end1-_mm_load_ps
                                        # -- End function
	.globl	_mm_loadu_ps                    # -- Begin function _mm_loadu_ps
	.p2align	4, 0x90
	.type	_mm_loadu_ps,@function
_mm_loadu_ps:                           # @_mm_loadu_ps
# %bb.0:                                # %entry
	xorps	%xmm0, %xmm0
	retq
.Lfunc_end2:
	.size	_mm_loadu_ps, .Lfunc_end2-_mm_loadu_ps
                                        # -- End function
	.globl	_mm_and_ps                      # -- Begin function _mm_and_ps
	.p2align	4, 0x90
	.type	_mm_and_ps,@function
_mm_and_ps:                             # @_mm_and_ps
# %bb.0:                                # %entry
	xorps	%xmm0, %xmm0
	retq
.Lfunc_end3:
	.size	_mm_and_ps, .Lfunc_end3-_mm_and_ps
                                        # -- End function
	.globl	_mm_storeu_ps                   # -- Begin function _mm_storeu_ps
	.p2align	4, 0x90
	.type	_mm_storeu_ps,@function
_mm_storeu_ps:                          # @_mm_storeu_ps
# %bb.0:                                # %entry
	retq
.Lfunc_end4:
	.size	_mm_storeu_ps, .Lfunc_end4-_mm_storeu_ps
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
