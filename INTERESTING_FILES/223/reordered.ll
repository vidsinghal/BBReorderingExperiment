; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//223/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @isl_schedule_from_schedule_tree(i32 %call, i1 %tobool11.not) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp ne i32 %call, 0
  %brmerge.not = select i1 %cmp.not, i1 %tobool11.not, i1 false
  br i1 %brmerge.not, label %if.then12, label %common.ret

if.then12:                                        ; preds = %entry
  %call13 = load volatile ptr, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.then12, %entry
  ret ptr null
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
