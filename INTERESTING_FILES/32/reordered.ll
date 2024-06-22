; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//32/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8(i1 %cmp) local_unnamed_addr {
entry:
  br i1 %cmp, label %for.body, label %for.cond55

for.cond55:                                       ; preds = %entry
  %call92 = tail call <2 x i64> @_mm_add_epi16()
  unreachable

for.body:                                         ; preds = %entry
  %call37 = tail call <2 x i64> @_mm_add_epi32()
  ret void
}

declare <2 x i64> @_mm_add_epi16() local_unnamed_addr

declare <2 x i64> @_mm_add_epi32() local_unnamed_addr
