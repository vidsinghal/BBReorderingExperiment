; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//214/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define noundef i32 @cheapautom(i32 %level, i1 %cmp, i1 %cmp1) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %level, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %for.body.preheader, label %cleanup

cleanup:                                          ; preds = %entry
  ret i32 0

for.body:                                         ; preds = %for.body.preheader, %for.body
  br label %for.body

while.cond:                                       ; preds = %for.body.preheader, %while.cond
  br label %while.cond

for.body.preheader:                               ; preds = %entry
  br i1 %cmp1, label %while.cond, label %for.body
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) }
