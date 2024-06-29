; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//565/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_dwconv2d_chw_ukernel_5x5s2p2__sse_2x4_acc2(<4 x float> %call12, <4 x float> %call42, <4 x float> %call14, <4 x float> %call8, i1 %0) local_unnamed_addr {
entry:
  br i1 %0, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %call174 = tail call <4 x float> @_mm_mul_ps(<4 x float> %call12)
  %call184 = tail call <4 x float> @_mm_mul_ps(<4 x float> %call42)
  %call199 = tail call <4 x float> @_mm_mul_ps(<4 x float> %call14)
  %call233 = tail call <4 x float> @_mm_mul_ps(<4 x float> %call8)
  br label %for.body

for.end:                                          ; preds = %entry
  ret void
}

declare <4 x float> @_mm_mul_ps(<4 x float>) local_unnamed_addr
