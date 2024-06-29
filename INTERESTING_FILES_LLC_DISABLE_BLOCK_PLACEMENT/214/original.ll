; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//214/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @isautom(i64 %idx.ext) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %pg.0 = phi ptr [ null, %entry ], [ %add.ptr15, %for.inc ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %for.cond
  %pos.1 = phi i32 [ 0, %for.cond ], [ %call, %while.cond ]
  %call = tail call i32 @nextelement(ptr %pg.0, i32 %pos.1)
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %while.cond, label %for.inc

for.inc:                                          ; preds = %while.cond
  %add.ptr15 = getelementptr i16, ptr %pg.0, i64 %idx.ext
  br label %for.cond
}

declare i32 @nextelement(ptr, i32) local_unnamed_addr

attributes #0 = { noreturn }
