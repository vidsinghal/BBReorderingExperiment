; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//340/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none)
define noundef i32 @dptcon_(ptr nocapture readonly %n, ptr nocapture %work) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %n, align 4
  %cmp22.not1 = icmp slt i32 %0, 0
  br i1 %cmp22.not1, label %for.end35, label %for.body23.preheader

for.body23.preheader:                             ; preds = %entry
  %1 = add nuw i32 %0, 1
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %for.body23
  %indvars.iv = phi i64 [ 0, %for.body23.preheader ], [ %indvars.iv.next, %for.body23 ]
  %2 = getelementptr double, ptr %work, i64 %indvars.iv
  %3 = load double, ptr %2, align 8
  store double %3, ptr %work, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end35, label %for.body23

for.end35:                                        ; preds = %for.body23, %entry
  %idxprom38 = sext i32 %0 to i64
  %arrayidx39 = getelementptr double, ptr null, i64 %idxprom38
  store double poison, ptr %arrayidx39, align 8
  br label %for.cond41

for.cond41:                                       ; preds = %for.cond41, %for.end35
  br label %for.cond41
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) }
