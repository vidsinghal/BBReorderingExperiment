; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//378/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef ptr @Object_npyEndArray(ptr nocapture readonly %obj, ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i64 %3, ptr nocapture readnone %4, i1 %tobool5.not) local_unnamed_addr {
entry:
  %cmp = icmp ne i64 %3, 0
  %or.cond = select i1 %cmp, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %common.ret, label %if.else

common.ret:                                       ; preds = %if.else, %entry
  ret ptr null

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %obj, align 8
  %call22 = tail call ptr %5(ptr null, i64 0)
  br label %common.ret
}
