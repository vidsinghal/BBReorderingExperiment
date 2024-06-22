; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//63/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define range(i32 0, 2) i32 @MFs_AreSame_R2(ptr readnone %f1) local_unnamed_addr {
entry:
  %cmp = icmp eq ptr %f1, null
  br i1 %cmp, label %common.ret, label %if.else

common.ret:                                       ; preds = %if.else, %entry
  %common.ret.op = phi i32 [ 0, %if.else ], [ 1, %entry ]
  ret i32 %common.ret.op

if.else:                                          ; preds = %entry
  %call = tail call ptr @MF_Vertices(ptr null)
  br label %common.ret
}

declare ptr @MF_Vertices(ptr) local_unnamed_addr
