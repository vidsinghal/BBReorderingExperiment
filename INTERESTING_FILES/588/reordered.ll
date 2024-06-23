; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//588/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define noalias noundef ptr @cs_dl_post(i1 %0, i64 %1) local_unnamed_addr #0 {
entry:
  br i1 %0, label %if.end15, label %for.end22

for.end22:                                        ; preds = %if.end15, %entry
  ret ptr null

if.end15:                                         ; preds = %entry
  %arrayidx20 = getelementptr i64, ptr null, i64 %1
  store i64 poison, ptr %arrayidx20, align 8
  br label %for.end22
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) "target-cpu"="x86-64" }
