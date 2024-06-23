; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//446/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define noundef i32 @dlar1v_(ptr nocapture readnone %n, ptr nocapture readnone %b1, ptr nocapture readnone %r__, ptr nocapture readnone %work, i32 %0, i1 %cmp24, i64 %idxprom31) local_unnamed_addr #0 {
entry:
  br i1 %cmp24, label %for.body, label %common.ret

for.body:                                         ; preds = %entry
  %arrayidx32 = getelementptr double, ptr null, i64 %idxprom31
  store double poison, ptr %arrayidx32, align 8
  br label %common.ret

common.ret:                                       ; preds = %for.body, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) }
