; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//7/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef ptr @proj_mdist_ini(i1 %cmp10, ptr nocapture writeonly %malloc) local_unnamed_addr {
entry:
  br i1 %cmp10, label %if.then, label %common.ret

if.then:                                          ; preds = %entry
  %call = tail call ptr @malloc()
  store i32 0, ptr %malloc, align 8
  br label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  %common.ret.op = phi ptr [ @malloc, %if.then ], [ null, %entry ]
  ret ptr %common.ret.op
}

declare ptr @malloc()
