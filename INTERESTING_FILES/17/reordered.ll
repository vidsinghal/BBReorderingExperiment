; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//17/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @dlarzb_(ptr nocapture writeonly %m, i1 %cmp, i1 %cmp13) local_unnamed_addr {
entry:
  %brmerge = select i1 %cmp, i1 true, i1 %cmp13
  br i1 %brmerge, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call = tail call i32 @lsame_()
  store i32 0, ptr %m, align 4
  br label %cleanup
}

declare i32 @lsame_() local_unnamed_addr
