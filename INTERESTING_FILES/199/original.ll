; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//199/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define noundef i32 @slahqr_(i32 %0, i64 %idxprom23) local_unnamed_addr #0 {
entry:
  %1 = icmp slt i32 %0, 0
  br i1 %1, label %for.body, label %for.end

for.body:                                         ; preds = %entry
  %arrayidx24 = getelementptr float, ptr null, i64 %idxprom23
  store float poison, ptr %arrayidx24, align 4
  br label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) }
