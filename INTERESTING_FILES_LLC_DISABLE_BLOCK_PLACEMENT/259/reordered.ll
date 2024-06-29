; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//259/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @lu_build_factors(ptr nocapture writeonly %this, ptr nocapture writeonly %0, i32 %1) local_unnamed_addr #0 {
entry:
  %cmp571 = icmp sgt i32 %1, 0
  br i1 %cmp571, label %for.body.preheader, label %for.end

for.end:                                          ; preds = %for.body, %middle.block, %entry
  ret i32 0

middle.block:                                     ; preds = %vector.body
  store i32 %2, ptr %this, align 4, !alias.scope !0
  %cmp.n = icmp eq i32 %n.vec, %1
  br i1 %cmp.n, label %for.end, label %for.body.preheader4

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = or disjoint i32 %index, 7
  %index.next = add nuw i32 %index, 8
  %3 = icmp eq i32 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !3

for.body.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %for.body.preheader4, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep3 = getelementptr i8, ptr %this, i64 4
  %bound0 = icmp ugt ptr %scevgep3, %0
  %bound1 = icmp ugt ptr %scevgep, %this
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader4, label %vector.ph

for.body.preheader4:                              ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %i.02.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader4, %for.body
  %i.02 = phi i32 [ %inc71, %for.body ], [ %i.02.ph, %for.body.preheader4 ]
  store i32 0, ptr %0, align 4
  store i32 %i.02, ptr %this, align 4
  %inc71 = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc71, %1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !6

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %1, 2147483640
  store i32 0, ptr %0, align 4, !alias.scope !7, !noalias !0
  br label %vector.body
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }

!0 = !{!1}
!1 = distinct !{!1, !2}
!2 = distinct !{!2, !"LVerDomain"}
!3 = distinct !{!3, !4, !5}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = distinct !{!6, !4}
!7 = !{!8}
!8 = distinct !{!8, !2}
