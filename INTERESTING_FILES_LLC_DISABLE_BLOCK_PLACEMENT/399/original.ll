; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//399/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define noundef i32 @hypre_BoomerAMGCoarsenCGCb(ptr nocapture writeonly %S, ptr nocapture readonly %0, i32 %1) local_unnamed_addr #0 {
entry:
  %cmp491 = icmp sgt i32 %1, 0
  br i1 %cmp491, label %for.body51.preheader, label %for.end60

for.body51.preheader:                             ; preds = %entry
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %for.body51.preheader6, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body51.preheader
  %scevgep = getelementptr i8, ptr %S, i64 4
  %scevgep3 = getelementptr i8, ptr %0, i64 4
  %bound0 = icmp ugt ptr %scevgep3, %S
  %bound1 = icmp ugt ptr %scevgep, %0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body51.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %1, 2147483640
  %2 = load i32, ptr %0, align 4, !alias.scope !0
  %3 = or i32 %2, 1
  store i32 %3, ptr %S, align 4, !alias.scope !3, !noalias !0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i32 %index, 8
  %4 = icmp eq i32 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %n.vec, %1
  br i1 %cmp.n, label %for.end60, label %for.body51.preheader6

for.body51.preheader6:                            ; preds = %vector.memcheck, %for.body51.preheader, %middle.block
  %i4.02.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body51.preheader ], [ %n.vec, %middle.block ]
  br label %for.body51

for.body51:                                       ; preds = %for.body51.preheader6, %for.body51
  %i4.02 = phi i32 [ %inc59, %for.body51 ], [ %i4.02.ph, %for.body51.preheader6 ]
  %5 = load i32, ptr %0, align 4
  %add57 = or i32 %5, 1
  store i32 %add57, ptr %S, align 4
  %inc59 = add nuw nsw i32 %i4.02, 1
  %exitcond.not = icmp eq i32 %inc59, %1
  br i1 %exitcond.not, label %for.end60, label %for.body51, !llvm.loop !8

for.end60:                                        ; preds = %for.body51, %middle.block, %entry
  ret i32 0
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
