; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//259/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write)
define noundef i32 @lu_build_factors(ptr nocapture writeonly %this, i1 %cmp) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %if.then50, label %if.then39

if.then39:                                        ; preds = %entry
  store i32 0, ptr %this, align 4
  br label %for.cond.preheader

if.then50:                                        ; preds = %entry
  store i32 0, ptr %this, align 8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then39, %if.then50
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  br label %for.cond
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) }
