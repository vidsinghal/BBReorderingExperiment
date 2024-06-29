	.text
	.file	""
	.globl	mi_heap_get_default             # -- Begin function mi_heap_get_default
	.p2align	4, 0x90
	.type	mi_heap_get_default,@function
mi_heap_get_default:                    # @mi_heap_get_default
# %bb.0:                                # %entry
	movl	$0, 0
	movq	mi_prim_get_default_heap@GOTPCREL(%rip), %rax
	retq
.Lfunc_end0:
	.size	mi_heap_get_default, .Lfunc_end0-mi_heap_get_default
                                        # -- End function
	.globl	mi_heap_set_default             # -- Begin function mi_heap_set_default
	.p2align	4, 0x90
	.type	mi_heap_set_default,@function
mi_heap_set_default:                    # @mi_heap_set_default
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	je	.LBB1_2
# %bb.1:                                # %if.end
	movl	$0, 0
.LBB1_2:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	mi_heap_set_default, .Lfunc_end1-mi_heap_set_default
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
