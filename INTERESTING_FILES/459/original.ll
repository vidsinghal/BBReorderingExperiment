; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//459/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define void @Transcript_velocity_single(i1 %cmp.not, i1 %cmp4.not, i1 %cmp13.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not, label %for.cond3.preheader, label %for.cond

for.cond:                                         ; preds = %entry, %for.cond
  br label %for.cond

for.cond3.preheader:                              ; preds = %entry
  br i1 %cmp4.not, label %for.cond12.preheader, label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.cond3
  br label %for.cond3

for.cond12.preheader:                             ; preds = %for.cond3.preheader
  br i1 %cmp13.not, label %for.end20, label %for.cond12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.cond12
  br label %for.cond12

for.end20:                                        ; preds = %for.cond12.preheader
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) }
