; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//17/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @dlarzb_(ptr nocapture readonly %m, ptr nocapture readonly %c__, ptr %work, i1 %cmp) local_unnamed_addr {
entry:
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %add.ptr12 = getelementptr i8, ptr %work, i64 -8
  %0 = load i32, ptr %m, align 4
  %1 = load i32, ptr %c__, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr double, ptr null, i64 %idxprom
  %2 = sext i32 %0 to i64
  %3 = getelementptr double, ptr %add.ptr12, i64 %2
  %arrayidx37 = getelementptr i8, ptr %3, i64 8
  br label %for.cond

if.then:                                          ; preds = %entry
  ret i32 0

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  %call38 = tail call i32 @dcopy_(ptr %arrayidx, ptr %arrayidx37)
  br label %for.cond
}

declare i32 @dcopy_(ptr, ptr) local_unnamed_addr
