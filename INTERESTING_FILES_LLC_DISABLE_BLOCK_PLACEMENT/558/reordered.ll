; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//558/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define i64 @QDLDL_etree(i64 %n) local_unnamed_addr #0 {
entry:
  %cmp381 = icmp sgt i64 %n, 0
  br i1 %cmp381, label %for.body39.preheader, label %for.end44

vector.ph:                                        ; preds = %for.body39.preheader
  %n.vec = and i64 %n, 9223372036854775804
  br label %vector.body

for.body39.preheader6:                            ; preds = %for.body39.preheader, %middle.block
  %i.03.ph = phi i64 [ 0, %for.body39.preheader ], [ %n.vec, %middle.block ]
  %sumLnz.02.ph = phi i64 [ 0, %for.body39.preheader ], [ %3, %middle.block ]
  br label %for.body39

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %0, %vector.body ]
  %vec.phi5 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %1, %vector.body ]
  %step.add = add <2 x i64> %vec.ind, <i64 2, i64 2>
  %0 = or <2 x i64> %vec.ind, %vec.phi
  %1 = or <2 x i64> %step.add, %vec.phi5
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <2 x i64> %vec.ind, <i64 4, i64 4>
  %2 = icmp eq i64 %index.next, %n.vec
  br i1 %2, label %middle.block, label %vector.body, !llvm.loop !0

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %1, %0
  %3 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx)
  %cmp.n = icmp eq i64 %n.vec, %n
  br i1 %cmp.n, label %for.end44, label %for.body39.preheader6

for.body39:                                       ; preds = %for.body39.preheader6, %for.body39
  %i.03 = phi i64 [ %inc43, %for.body39 ], [ %i.03.ph, %for.body39.preheader6 ]
  %sumLnz.02 = phi i64 [ %add41, %for.body39 ], [ %sumLnz.02.ph, %for.body39.preheader6 ]
  %add41 = or i64 %i.03, %sumLnz.02
  %inc43 = add nuw nsw i64 %i.03, 1
  %exitcond.not = icmp eq i64 %inc43, %n
  br i1 %exitcond.not, label %for.end44, label %for.body39, !llvm.loop !3

for.end44:                                        ; preds = %for.body39, %middle.block, %entry
  %sumLnz.0.lcssa = phi i64 [ 0, %entry ], [ %3, %middle.block ], [ %add41, %for.body39 ]
  ret i64 %sumLnz.0.lcssa

for.body39.preheader:                             ; preds = %entry
  %min.iters.check = icmp ult i64 %n, 4
  br i1 %min.iters.check, label %for.body39.preheader6, label %vector.ph
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(none) }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !2, !1}
