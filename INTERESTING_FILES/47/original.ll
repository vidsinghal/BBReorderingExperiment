; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//47/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define range(i64 0, 2) i64 @cholmod_postorder(i1 %cmp) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  %common.ret.op = phi i64 [ 0, %if.end ], [ 1, %entry ]
  ret i64 %common.ret.op

if.end:                                           ; preds = %entry
  %call17 = load volatile i32, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
