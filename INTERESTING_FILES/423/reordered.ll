; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//423/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define void @validate_metadata(i32 %call, i1 %cmp4) local_unnamed_addr #0 {
entry:
  %call2 = load volatile i32, ptr null, align 4294967296
  %call13 = load volatile i32, ptr null, align 4294967296
  %cmp = icmp ne i32 %call, 0
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %common.ret, label %if.end7

if.end7:                                          ; preds = %entry
  %call8 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.end7, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
