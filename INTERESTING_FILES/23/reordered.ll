; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//23/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @hypre_dgetri(ptr nocapture writeonly %work, i32 %0, i1 %cmp) local_unnamed_addr #0 {
entry:
  %cmp19 = icmp slt i32 %0, 0
  %or.cond = select i1 %cmp19, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end, label %if.then21

if.end:                                           ; preds = %if.then21, %entry
  ret i32 0

if.then21:                                        ; preds = %entry
  store i32 0, ptr %work, align 4
  br label %if.end
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "target-cpu"="x86-64" }
