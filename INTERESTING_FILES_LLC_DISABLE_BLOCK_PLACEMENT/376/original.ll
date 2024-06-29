; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//376/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xnn_f32_dwconv_minmax_ukernel_up8x3__fma3(i64 %channels) local_unnamed_addr #0 {
for.end.peel:
  %call61.peel = tail call <4 x i64> @_mm256_loadu_si256(ptr null)
  %cmp29.not = icmp eq i64 %channels, 0
  br i1 %cmp29.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.end, %for.end.peel
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %call32 = tail call <8 x float> @_mm256_loadu_ps(ptr null)
  br label %for.body

for.end:                                          ; preds = %for.end.peel, %for.end
  %call61 = tail call <4 x i64> @_mm256_loadu_si256(ptr null)
  br i1 %cmp29.not, label %for.end, label %for.body.preheader, !llvm.loop !0
}

declare <8 x float> @_mm256_loadu_ps(ptr) local_unnamed_addr

declare <4 x i64> @_mm256_loadu_si256(ptr) local_unnamed_addr

attributes #0 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
