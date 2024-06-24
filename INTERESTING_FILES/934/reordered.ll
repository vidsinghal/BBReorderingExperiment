; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//934/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @basiclu_initialize(ptr readnone %istore, i1 %tobool1) local_unnamed_addr {
entry:
  %tobool = icmp ne ptr %istore, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %return

return:                                           ; preds = %if.end, %entry
  ret i32 1

if.end:                                           ; preds = %entry
  tail call void @lu_initialize()
  br label %return
}

declare void @lu_initialize() local_unnamed_addr
