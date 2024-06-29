; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//47/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i64 @cholmod_postorder(ptr nocapture readnone %Parent, ptr nocapture readnone %Common, ptr nocapture readnone %0, i32 %1, i1 %cmp1.not, i1 %cmp5, ptr nocapture writeonly %2) local_unnamed_addr {
entry:
  br i1 %cmp1.not, label %lor.lhs.false, label %if.then3

if.then6:                                         ; preds = %lor.lhs.false
  %call = tail call i32 @cholmod_error(i32 1)
  br label %common.ret

if.then3:                                         ; preds = %entry
  store i32 0, ptr %2, align 4
  br label %common.ret

lor.lhs.false:                                    ; preds = %entry
  br i1 %cmp5, label %if.then6, label %if.end11

common.ret:                                       ; preds = %if.end11, %if.then6, %if.then3
  ret i64 0

if.end11:                                         ; preds = %lor.lhs.false
  %call17 = tail call i32 @cholmod_error(i32 0)
  br label %common.ret
}

declare i32 @cholmod_error(i32) local_unnamed_addr
