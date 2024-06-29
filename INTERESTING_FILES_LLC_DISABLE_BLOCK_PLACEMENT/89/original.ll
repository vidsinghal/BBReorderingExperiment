; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//89/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @csytf2_(ptr nocapture %n, ptr nocapture writeonly %ipiv, i1 %cmp18, i64 %idxprom660) local_unnamed_addr {
entry:
  %call = tail call i32 @lsame_()
  br i1 %cmp18, label %common.ret, label %if.end21.lr.ph

if.end21.lr.ph:                                   ; preds = %entry
  %arrayidx661 = getelementptr i32, ptr %ipiv, i64 %idxprom660
  br label %if.end21

if.end21:                                         ; preds = %if.end97, %if.end21.lr.ph
  %0 = load i32, ptr %n, align 4
  %cmp94 = icmp eq i32 %0, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end21
  store i32 1, ptr %n, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end21
  store i32 0, ptr %arrayidx661, align 4
  br label %if.end21

common.ret:                                       ; preds = %entry
  ret i32 0
}

declare i32 @lsame_() local_unnamed_addr
