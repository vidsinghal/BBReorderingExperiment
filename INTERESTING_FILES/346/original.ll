; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//346/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write)
define noundef i32 @ztfsm_(ptr nocapture writeonly %m, i32 %0) local_unnamed_addr #0 {
entry:
  %cmp65.not.not1 = icmp sgt i32 %0, 0
  br i1 %cmp65.not.not1, label %entry.split.us, label %for.cond

entry.split.us:                                   ; preds = %entry
  %cmp65.not.not.not = icmp eq i32 %0, 1
  store double 0.000000e+00, ptr %m, align 8
  br i1 %cmp65.not.not.not, label %for.cond.us, label %for.body66

for.cond.us:                                      ; preds = %entry.split.us, %for.cond.us
  br label %for.cond.us

for.cond:                                         ; preds = %entry, %for.cond
  br label %for.cond

for.body66:                                       ; preds = %entry.split.us, %for.body66
  br label %for.body66
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) }
