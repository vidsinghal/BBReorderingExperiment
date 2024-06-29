; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//312/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define i64 @s_calculate_chunk_line_size(i64 %.pre) local_unnamed_addr #0 {
entry:
  %0 = add i64 %.pre, 1
  %min.iters.check = icmp ult i64 %0, 16
  br i1 %min.iters.check, label %for.cond.preheader, label %vector.ph

vector.ph:                                        ; preds = %entry
  %n.vec = and i64 %0, -16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %index.next = add nuw i64 %index, 16
  %vec.ind.next = add <16 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %1 = icmp eq i64 %index.next, %n.vec
  br i1 %1, label %middle.block, label %vector.body, !llvm.loop !0

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %0, %n.vec
  %vector.recur.extract = extractelement <16 x i64> %vec.ind, i64 15
  %vector.recur.extract.for.phi = extractelement <16 x i64> %vec.ind, i64 14
  br i1 %cmp.n, label %for.cond.cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %middle.block
  %i.0.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %entry ]
  %scalar.recur.ph = phi i64 [ %vector.recur.extract, %middle.block ], [ 0, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0 = phi i64 [ %inc, %for.cond ], [ %i.0.ph, %for.cond.preheader ]
  %scalar.recur = phi i64 [ %i.0, %for.cond ], [ %scalar.recur.ph, %for.cond.preheader ]
  %inc = add i64 %i.0, 1
  %exitcond.not = icmp eq i64 %i.0, %.pre
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond, !llvm.loop !3

for.cond.cleanup:                                 ; preds = %for.cond, %middle.block
  %chunk_line_size.0.lcssa = phi i64 [ %vector.recur.extract.for.phi, %middle.block ], [ %scalar.recur, %for.cond ]
  ret i64 %chunk_line_size.0.lcssa
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !2, !1}
