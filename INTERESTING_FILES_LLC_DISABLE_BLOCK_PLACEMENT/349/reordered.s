	.text
	.file	""
	.globl	vtklibharu_HPDF_Info_SetInfoDateAttr # -- Begin function vtklibharu_HPDF_Info_SetInfoDateAttr
	.p2align	4, 0x90
	.type	vtklibharu_HPDF_Info_SetInfoDateAttr,@function
vtklibharu_HPDF_Info_SetInfoDateAttr:   # @vtklibharu_HPDF_Info_SetInfoDateAttr
# %bb.0:                                # %entry
	notb	%dl
	andb	%sil, %dl
	testb	$1, %dl
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	vtklibharu_HPDF_Info_SetInfoDateAttr, .Lfunc_end0-vtklibharu_HPDF_Info_SetInfoDateAttr
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
