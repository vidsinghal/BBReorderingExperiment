; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//91/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define noundef i32 @umfpack_zi_get_numeric(ptr nocapture writeonly %P, i32 %0, ptr nocapture readonly %1) local_unnamed_addr #0 {
entry:
  %cmp341 = icmp sgt i32 %0, 0
  br i1 %cmp341, label %for.body.preheader, label %for.end

for.end:                                          ; preds = %for.body, %middle.block, %entry
  ret i32 0

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body.preheader6

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %2 = load i32, ptr %gep, align 4
  store i32 %2, ptr %P, align 4, !alias.scope !0, !noalias !3
  %index.next = add nuw i64 %index, 8
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !5

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 12
  br i1 %min.iters.check, label %for.body.preheader6, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, ptr %P, i64 4
  %4 = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep4 = getelementptr i8, ptr %1, i64 %4
  %bound0 = icmp ugt ptr %scevgep4, %P
  %bound1 = icmp ugt ptr %scevgep, %1
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader6, label %vector.ph

for.body.preheader6:                              ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader6, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader6 ]
  %arrayidx = getelementptr i32, ptr %1, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %P, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !8

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640
  %invariant.gep = getelementptr i8, ptr %1, i64 28
  br label %vector.body
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }

!0 = !{!1}
!1 = distinct !{!1, !2}
!2 = distinct !{!2, !"LVerDomain"}
!3 = !{!4}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !6}
