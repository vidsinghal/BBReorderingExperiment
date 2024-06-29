	.text
	.file	""
	.globl	fdevent_socket_nb_cloexec_init  # -- Begin function fdevent_socket_nb_cloexec_init
	.p2align	4, 0x90
	.type	fdevent_socket_nb_cloexec_init,@function
fdevent_socket_nb_cloexec_init:         # @fdevent_socket_nb_cloexec_init
# %bb.0:                                # %entry
	movb	$1, use_sock_cloexec(%rip)
	retq
.Lfunc_end0:
	.size	fdevent_socket_nb_cloexec_init, .Lfunc_end0-fdevent_socket_nb_cloexec_init
                                        # -- End function
	.globl	fdevent_socket_cloexec          # -- Begin function fdevent_socket_cloexec
	.p2align	4, 0x90
	.type	fdevent_socket_cloexec,@function
fdevent_socket_cloexec:                 # @fdevent_socket_cloexec
# %bb.0:                                # %entry
	cmpb	$1, use_sock_cloexec(%rip)
	jne	.LBB1_2
# %bb.1:                                # %if.then
	movl	0, %eax
.LBB1_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	fdevent_socket_cloexec, .Lfunc_end1-fdevent_socket_cloexec
                                        # -- End function
	.type	use_sock_cloexec,@object        # @use_sock_cloexec
	.local	use_sock_cloexec
	.comm	use_sock_cloexec,1,1
	.section	".note.GNU-stack","",@progbits
