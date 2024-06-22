; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//255/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @cspcon_(ptr nocapture writeonly %n, float %0, i1 %1) local_unnamed_addr #0 {
entry:
  %cmp7 = fcmp uge float %0, 0.000000e+00
  %cmp11.not = select i1 %cmp7, i1 %1, i1 false
  br i1 %cmp11.not, label %if.end14, label %common.ret

if.end14:                                         ; preds = %entry
  store float 0.000000e+00, ptr %n, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.end14, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
