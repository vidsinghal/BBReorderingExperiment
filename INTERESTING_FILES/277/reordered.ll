; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//277/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @H5Z___can_apply_szip(i32 %call.tr, i1 %cmp5) local_unnamed_addr #0 {
entry:
  %cmp3 = icmp ne i32 %call.tr, 0
  %or.cond = and i1 %cmp3, %cmp5
  br i1 %or.cond, label %if.then7, label %common.ret

if.then7:                                         ; preds = %entry
  %call8 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.then7, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
