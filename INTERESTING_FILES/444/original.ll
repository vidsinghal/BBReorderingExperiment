; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//444/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @cunmqr_check(ptr nocapture writeonly %m, ptr nocapture readnone %n, ptr nocapture readnone %k, ptr nocapture readnone %info, i32 %call, i32 %0, i1 %cmp26) local_unnamed_addr #0 {
entry:
  %call1 = load volatile i32, ptr null, align 4294967296
  %cmp28 = icmp slt i32 %call, 0
  %or.cond = select i1 %cmp26, i1 %cmp28, i1 false
  br i1 %or.cond, label %if.then30, label %common.ret

common.ret:                                       ; preds = %if.then30, %entry
  ret i32 0

if.then30:                                        ; preds = %entry
  store i32 0, ptr %m, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
