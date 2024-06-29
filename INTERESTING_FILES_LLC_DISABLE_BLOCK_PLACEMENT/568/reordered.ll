; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//568/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define noundef i32 @dpstf2_(ptr nocapture readonly %n, ptr nocapture writeonly %piv) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %n, align 4
  %cmp18.not1 = icmp slt i32 %0, 1
  br i1 %cmp18.not1, label %for.cond22.preheader, label %for.body.preheader

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %5, -8
  %ind.end = or disjoint i64 %n.vec, 1
  br label %vector.body

for.cond22.preheader:                             ; preds = %for.body, %middle.block, %entry
  %i__.1.ph = phi i32 [ %4, %middle.block ], [ 1, %entry ], [ %4, %for.body ]
  br label %for.cond22

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %1 = getelementptr i32, ptr %piv, i64 %offset.idx
  %2 = getelementptr i8, ptr %1, i64 16
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %1, align 4
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %2, align 4
  %index.next = add nuw i64 %index, 8
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !0

if.then42:                                        ; preds = %for.cond22
  ret i32 0

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %for.cond22.preheader, label %for.body.preheader4

for.body.preheader4:                              ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader4 ]
  %arrayidx = getelementptr i32, ptr %piv, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond22.preheader, label %for.body, !llvm.loop !3

for.body.preheader:                               ; preds = %entry
  %4 = add nuw i32 %0, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %for.body.preheader4, label %vector.ph

for.cond22:                                       ; preds = %for.cond22.preheader, %for.cond22
  %i__.1 = phi i32 [ %inc37, %for.cond22 ], [ %i__.1.ph, %for.cond22.preheader ]
  %cmp23.not = icmp sgt i32 %i__.1, %0
  %inc37 = add i32 %i__.1, 1
  br i1 %cmp23.not, label %if.then42, label %for.cond22
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "target-cpu"="x86-64" }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !2, !1}
