; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//481/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @chbev_2stage_(ptr nocapture writeonly %n, i32 %0, i32 %call7) local_unnamed_addr #0 {
entry:
  %cmp74 = icmp eq i32 %0, 0
  %tobool81.not = icmp eq i32 %call7, 0
  %or.cond = select i1 %cmp74, i1 true, i1 %tobool81.not
  br i1 %or.cond, label %common.ret, label %if.then82

common.ret:                                       ; preds = %if.then82, %entry
  ret i32 0

if.then82:                                        ; preds = %entry
  store float 0.000000e+00, ptr %n, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
