; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//122/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: readwrite)
define void @WebPMultARGBRow_C(ptr nocapture writeonly %ptr, ptr nocapture readonly %arrayidx) local_unnamed_addr #0 {
entry:
  %.pr1 = load i32, ptr %arrayidx, align 4
  %cmp12 = icmp eq i32 %.pr1, 0
  br i1 %cmp12, label %if.then, label %for.cond.preheader

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  br label %for.cond

for.cond.preheader:                               ; preds = %if.then, %entry
  br label %for.cond

if.then:                                          ; preds = %entry, %if.then
  store i32 0, ptr %ptr, align 4
  %.pr = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %.pr, 0
  br i1 %cmp1, label %if.then, label %for.cond.preheader
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: readwrite) }
