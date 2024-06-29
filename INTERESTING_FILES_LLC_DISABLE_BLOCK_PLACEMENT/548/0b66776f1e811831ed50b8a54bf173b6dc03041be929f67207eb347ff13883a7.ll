; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16(ptr %input, ptr %weights, i1 %cmp99) {
entry:
  br i1 %cmp99, label %for.body, label %for.end

for.body:                                         ; preds = %entry
  %0 = load ptr, ptr %weights, align 8
  %call102 = call <2 x i64> @_mm_loadl_epi64(ptr %input)
  %call103 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %call102)
  %call106 = call <2 x i64> @_mm_loadl_epi64(ptr %input)
  %call107 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %call106)
  %call110 = call <2 x i64> @_mm_loadl_epi64(ptr %input)
  %call111 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %call110)
  %call114 = call <2 x i64> @_mm_loadl_epi64(ptr %input)
  %call115 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %call114)
  %call124 = call <2 x i64> @_mm_loadl_epi64(ptr %0)
  %call125 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %call124)
  %call128 = call <2 x i64> @_mm_loadl_epi64(ptr %input)
  %call129 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %call128)
  %call132 = call <2 x i64> @_mm_loadl_epi64(ptr %input)
  %call133 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %call132)
  unreachable

for.end:                                          ; preds = %entry
  %call235 = call <2 x i64> @_mm_loadu_si128()
  %call240 = call <2 x i64> @_mm_loadl_epi64(ptr %input)
  %call242 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %call240)
  %call246 = call <2 x i64> @_mm_loadl_epi64(ptr %input)
  %call248 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %call246)
  ret void
}

declare <2 x i64> @_mm_loadu_si128()

define <2 x i64> @_mm_loadl_epi64(ptr %__p) {
entry:
  %0 = load i64, ptr %__p, align 1
  %vecinit1 = insertelement <2 x i64> zeroinitializer, i64 %0, i64 0
  ret <2 x i64> %vecinit1
}

declare <2 x i64> @_mm_cvtepi8_epi16(<2 x i64>)
