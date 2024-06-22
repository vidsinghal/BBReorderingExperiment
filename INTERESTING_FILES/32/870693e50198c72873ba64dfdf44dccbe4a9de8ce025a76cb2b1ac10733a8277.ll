; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8(i1 %cmp) {
entry:
  br i1 %cmp, label %for.body, label %for.cond55

for.body:                                         ; preds = %entry
  %call37 = call <2 x i64> @_mm_add_epi32()
  ret void

for.cond55:                                       ; preds = %entry
  %call92 = call <2 x i64> @_mm_add_epi16()
  unreachable
}

declare <2 x i64> @_mm_add_epi16()

declare <2 x i64> @_mm_add_epi32()
