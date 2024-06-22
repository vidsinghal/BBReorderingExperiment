; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//219/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noundef i32 @gt_tyrsearch(i1 %verbose, ptr readnone %call3) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %call3, null
  %brmerge = or i1 %cmp, %verbose
  br i1 %brmerge, label %common.ret, label %if.then6

if.then6:                                         ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.then6, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind }
