; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//293/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define void @dump_long(ptr nocapture readnone %a, ptr nocapture readnone %value, ptr nocapture readnone %0, i64 %1, i64 %and5, i64 %2, i1 %cmp6) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne i64 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %common.ret, label %if.else

if.else:                                          ; preds = %entry
  %call14 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.else, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
