; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//687/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none)
define noalias noundef nonnull ptr @cram_index_query(i1 %cmp10.not, i1 %cmp15) local_unnamed_addr #0 {
entry:
  %cmp15.fr = freeze i1 %cmp15
  %cmp10.not.fr = freeze i1 %cmp10.not
  br i1 %cmp10.not.fr, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp15.fr, label %for.cond.us.us, label %for.cond.us

for.cond.us.us:                                   ; preds = %entry.split.us, %for.cond.us.us
  br label %for.cond.us.us

for.cond.us:                                      ; preds = %entry.split.us, %for.cond.us
  br label %for.cond.us

entry.split:                                      ; preds = %entry
  br i1 %cmp15.fr, label %for.cond.us1, label %for.cond

for.cond.us1:                                     ; preds = %entry.split, %for.cond.us1
  br label %for.cond.us1

for.cond:                                         ; preds = %entry.split, %for.cond
  br label %for.cond
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) }
