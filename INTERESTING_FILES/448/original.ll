; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//448/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @ssbtrd_(ptr nocapture writeonly %vect, ptr nocapture readnone %n, ptr nocapture readnone %kd, ptr nocapture readnone %ab, i32 %0, i32 %1, i1 %cmp23) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %0, 0
  %brmerge.not = select i1 %cmp, i1 %cmp23, i1 false
  br i1 %brmerge.not, label %if.then24, label %if.end38

if.then24:                                        ; preds = %entry
  store i32 0, ptr %vect, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then24, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
